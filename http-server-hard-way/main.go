package main

import (
	"fmt"
	"log"
	"net/http"
)

func main() {
	setupWasm()

	// instantiate the server
	http.HandleFunc("/", handler)
	http.ListenAndServe(":8080", nil)
}

func handler(rw http.ResponseWriter, r *http.Request) {
	instance := getInstance()

	getQuote, err := instance.Exports.GetFunction("get_quote")
	if err != nil {
		log.Println("Error getting function from module", err)
		http.Error(rw, "Unable to get fuction from module", http.StatusInternalServerError)
	}

	// result is a pointer to a string you can read from the web assembly memory
	result, err := getQuote()
	if err != nil {
		log.Println("Error calling function:", err)
		http.Error(rw, "Unable to call function", http.StatusInternalServerError)
		return
	}

	strResult, err := stringFromReference(result.(int32), instance)
	if err != nil {
		log.Println("Error copying string", err)
		http.Error(rw, "Unable to call function", http.StatusInternalServerError)
		return
	}

	fmt.Fprintf(rw, "%s", strResult)
}
