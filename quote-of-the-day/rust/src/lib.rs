use std::ffi::{CStr, CString};
use std::fs::write;
use std::mem;
use std::os::raw::{c_char, c_void};

fn ptr_from_string(data: String) -> *mut c_char {
  let str = CString::new(data).expect("Expected CString to be created from string");
  let ptr = str.into_raw();

  return ptr
}

fn string_from_ptr(ptr: *mut c_char) -> String {
  let str = unsafe { CString::from_raw(ptr) }.into_string().expect("Expected CString to be created from ptr");
  return str;
}

#[no_mangle]
pub extern fn allocate(size: usize) -> *mut c_void {
  let mut buffer:Vec<u8> = Vec::with_capacity(size);
  let pointer = buffer.as_mut_ptr();
  mem::forget(buffer);

  pointer as *mut c_void
}

#[no_mangle]
pub extern fn deallocate(pointer: *mut c_void, capacity: usize) {
  unsafe {
      let _ = Vec::from_raw_parts(pointer, 0, capacity);
  }
}

extern "C" {
  fn get_payload(name: *mut c_char) -> *mut c_char;
}

#[no_mangle]
pub extern fn get_quote() -> *mut c_char {
  // uses the Wasi interface for printing on the host
  println!("Hello, world!");

  let url = ptr_from_string("https://quotes.rest/qod".to_owned());
  let result = unsafe { get_payload(url) };
  let resultString = string_from_ptr(result);

  // parse the json
  let parsed = json::parse(&resultString).unwrap();
 
  unsafe {
    return ptr_from_string(parsed["contents"]["quotes"][0]["quote"].to_string());
  }
}