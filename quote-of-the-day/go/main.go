package main

import (
	"fmt"

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
