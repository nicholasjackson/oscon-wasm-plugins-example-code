install:
	curl https://rustwasm.github.io/wasm-pack/installer/init.sh -sSf | sh

build:
	cargo wasi build && cp ./target/wasm32-wasi/debug/module.wasi.wasm ./module.wasm

release:
	cargo wasi build --release 