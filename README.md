# Open Source Software Superstream Series: Go
## Plugin Development with WebAssembly and Go

This repository contains the example code demonstrated at the O'Reilly Go Superstream 2021.

## ./http-server-hard-way
Example application showing how to build a Wasm plugin interface with Go and use it in an HTTP server. This example does
not use any frameworks other than the Wasmer.io Wasm runtime and shows how to handle callbacks and complex types.

## ./http-server-wasp
This is the same HTTP server example as shown in the Hard Way but uses the Wasp framework to provide a more idomatic Go approach for interacting with Wasm plugins and to abstract complexity.

## ./quote-of-the-day
Example Wasm plugins that retrieve the quote of the day from https://quotes.rest/qod. Examples are 
shown in Go, Rust, and Assembly script.