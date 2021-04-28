import * as wasi from "as-wasi";
import { JSON } from "assemblyscript-json";

export function allocate(size: i32): ArrayBuffer{
  //Console.log("allocate");
  return new ArrayBuffer(size);
}

export function deallocate(ptr: i32, size: i32): void{
  // this is here for placeholder, need to get a handle on memory
  // with AssemblyScript

  return;
}

@external("env", "get_payload")
export declare function getPayloadFromURL(inRaw: ArrayBuffer): ArrayBuffer;

export function get_quote(): ArrayBuffer {
  console.log("called get")
  // get the quote 
  let url = String.UTF8.encode("https://quotes.rest/qod", true)
  let resp = getPayloadFromURL(url)

  let respString = String.UTF8.decode(resp,true)
  
  let jsonObj: JSON.Obj = <JSON.Obj>(JSON.parse(respString))

  let content = jsonObj.getObj("contents")
  if (content) {
    let quotes = content.getArr("quotes")
    if (quotes) {
      let firstQuote = changetype<JSON.Obj>(quotes.valueOf()[0])
      if(firstQuote) {
        let quote = firstQuote.getString("quote")
        if (quote) {
          return String.UTF8.encode(quote.toString(), true)
        }
      }
    }
  }

  return String.UTF8.encode("Unable to get quote", true)
}