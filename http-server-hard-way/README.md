# Example showing how to use Wasm plugins inside of a simple HTTP server

The examples in this repository can be run using the `go run .` command from this folder.

```go
go run .
```
The plugin loads the Wasm module at the path ../quote-of-the-day and executes the `get_quote` exported function when the `/` path is called.

```shell
➜ curl localhost:8080
The best way to not feel hopeless is to get up and do something. Don't wait for good things to happen to you. If you go out and make some good things happen, you will fill the world with hope, you will fill yourself with hope.%  
```