package main

import (
	"fmt"
	"io/ioutil"
	"log"
	"net/http"

	"github.com/wasmerio/wasmer-go/wasmer"
)

var store *wasmer.Store
var engine *wasmer.Engine
var module *wasmer.Module

func setupWasm() {
	//wasmBytes, err := ioutil.ReadFile("../quote-of-the-day/go/module.wasm")
	//wasmBytes, err := ioutil.ReadFile("../quote-of-the-day/assemblyscript/module.wasm")
	wasmBytes, err := ioutil.ReadFile("../quote-of-the-day/rust/module.wasm")
	if err != nil {
		log.Fatal("Unable to load Wasm module")
	}

	engine = wasmer.NewEngine()
	store = wasmer.NewStore(engine)

	module, err = wasmer.NewModule(store, wasmBytes)
	if err != nil {
		log.Fatal("Unable to compile Wasm module")
	}
}

func getInstance() *wasmer.Instance {
	wasi, err := wasmer.NewWasiStateBuilder("wasi-plugins").Finalize()
	if err != nil {
		log.Fatal("Unable to setup Wasi env", err)
	}

	importObject, err := wasi.GenerateImportObject(store, module)
	if err != nil {
		log.Fatal("Unable to generate import object", err)
	}

	instance := &wasmer.Instance{}
	addImports(importObject, instance)

	inst, err := wasmer.NewInstance(module, importObject)
	if err != nil {
		log.Fatal("Unable to get instance", err)
	}

	// ensure the instance that the host functions use
	// is the same
	*instance = *inst

	return inst
}

func addImports(importObject *wasmer.ImportObject, instance *wasmer.Instance) {
	// create a function type that has a single input and single output
	// this will hold popinters to a strings
	ft := wasmer.NewFunctionType(
		wasmer.NewValueTypes(wasmer.I32),
		wasmer.NewValueTypes(wasmer.I32),
	)

	// this is the function that will be called by the wasm module
	ff := func(args []wasmer.Value) ([]wasmer.Value, error) {
		//log.Println("Got callback")
		// first get the string referenced by the pointer parameter
		url, err := stringFromReference(args[0].I32(), instance)
		if err != nil {
			return nil, err
		}

		resp := getPayloadFromURL(url)

		ptr, err := referenceFromString(resp, instance)

		return []wasmer.Value{wasmer.NewI32(ptr)}, err
	}

	importObject.Register(
		"env",
		map[string]wasmer.IntoExtern{
			"get_payload": wasmer.NewFunction(store, ft, ff),
		},
	)
}

func getPayloadFromURL(url string) string {
	resp, err := http.Get(url)
	if err != nil {
		log.Println("Unable to get URL", url, err)
		return ""
	}

	if resp.StatusCode != http.StatusOK {
		return ""
	}

	d, err := ioutil.ReadAll(resp.Body)
	if err != nil {
		log.Println("Unable to read response body", err)
		return ""
	}

	return string(d)
}

func stringFromReference(ptr int32, instance *wasmer.Instance) (string, error) {
	mem, err := instance.Exports.GetMemory("memory")
	if err != nil {
		return "", fmt.Errorf("Unable to get memory from module: %s", err)
	}

	// find the length by reading the bytes until we find a null terminator
	var strLen int32 = 0
	for i, tok := range mem.Data()[ptr:] {
		if tok == 0 {
			strLen = int32(i)
			break
		}
	}

	// get the string
	strResult := string(mem.Data()[ptr : ptr+strLen])

	// clean up the memory
	dealloc, err := instance.Exports.GetFunction("deallocate")
	if err != nil {
		return "", fmt.Errorf("Unable to get function from module: %s", err)
	}

	_, err = dealloc(ptr, strLen+1)
	if err != nil {
		return "", fmt.Errorf("Error calling deallocate: %s", err)
	}

	return strResult, nil
}

func referenceFromString(str string, instance *wasmer.Instance) (int32, error) {
	// allocate memory in the instance and get a pointer to the memory
	alloc, err := instance.Exports.GetFunction("allocate")
	if err != nil {
		return 0, fmt.Errorf("Unable to get function from module: %s", err)
	}

	ptr, err := alloc(len(str) + 1) // add one char for the null terminator
	if err != nil {
		return 0, fmt.Errorf("Error calling deallocate: %s", err)
	}

	intPtr := ptr.(int32)

	mem, err := instance.Exports.GetMemory("memory")
	if err != nil {
		return 0, fmt.Errorf("Unable to get memory from module: %s", err)
	}

	// write the string to the memory
	buf := mem.Data()[intPtr : int(intPtr)+len(str)+1]
	copy(buf, str)

	// return the pointer
	return intPtr, nil
}
