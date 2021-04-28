package main

import (
	"fmt"
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

	strResult := ""
	instance.CallFunction("get_quote", &strResult)

	fmt.Fprintf(rw, "%s", strResult)
}
