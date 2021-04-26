package main

// #include <stdlib.h>
// #include <string.h>
import "C"
import (
	"fmt"
	"math"
	"unsafe"

	"github.com/valyala/fastjson"
)

func main() {}

func referenceFromString(str string) uintptr {
	size := int32(len(str)) + 1 // add one byte for the null terminator

	// Allocate memory, this generates memory that is not managed
	// by Go's garbage collector
	// needs manually deallocated
	ptr := C.malloc(C.size_t(size))

	// create byte slice from the pointer with the correct dimensions
	buf := (*[math.MaxInt32]byte)(ptr)[:size:size]

	copy(buf, str)

	// add the null terminator
	buf[len(str)] = 0

	return uintptr(ptr)
}

func stringFromReference(ptr uintptr) string {
	cstr := (*C.char)(unsafe.Pointer(ptr))
	slen := int(C.strlen(cstr))
	sbuf := make([]byte, slen)

	copy(sbuf, (*[math.MaxInt32]byte)(unsafe.Pointer(ptr))[:slen:slen])

	return string(sbuf)
}

//go:export allocate
func Allocate(size int32) uintptr {
	ptr := C.malloc(C.size_t(size))
	return uintptr(ptr)
}

//go:export deallocate
func Deallocate(ptr uintptr, size int32) {
	// size is not used, it is only needed to keep the interface uniform
	C.free(unsafe.Pointer(ptr))
}

//export get_payload
func getPayloadFromURL(url uintptr) uintptr

//go:export sum
func Sum(a, b int) int {
	return a + b
}

//go:export get_quote
func GetQuote() uintptr {
	url := referenceFromString("https://quotes.rest/qod")
	respPtr := getPayloadFromURL(url)

	respStr := stringFromReference(respPtr)
	fmt.Println("Got string")

	// standard json library will not compile with tinygo
	// keys := map[string]interface{}{}
	//json.Unmarshal([]byte(respStr), &keys)
	// never write code like this
	// quote := respStr["contents"].([]map[string]interface{})[0]["quote"].(string)

	// read the json and extract the quote
	quote := fastjson.GetString([]byte(respStr), "contents", "quotes", "0", "quote")

	return referenceFromString(quote)
}
