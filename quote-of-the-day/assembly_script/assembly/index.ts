import "wasi"

export function allocate(size: i32): i32{
  console.log("allocate")
  return i32(__alloc(size))
}

export function deallocate(ptr: i32): void {
  console.log("free")
  __free(ptr)
}

@external("env", "get_payload")
export declare function getPayloadFromURL(inRaw: ArrayBuffer): ArrayBuffer;

export function get_quote(): ArrayBuffer {
  console.log("called get")
  // get the quote 
  //var url = String.UTF8.encode("https://quotes.rest/qod", true)
  ///var resp = getPayloadFromURL(url)

  return new ArrayBuffer(10)
}