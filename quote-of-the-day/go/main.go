package main

import (
	"github.com/valyala/fastjson"
)

func main() {}

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

	// standard json library will not compile with TinyGo
	// use fastjson as a replacement
	// read the json and extract the quote
	quote := fastjson.GetString([]byte(respStr), "contents", "quotes", "0", "quote")

	return referenceFromString(quote)
}
