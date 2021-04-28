package main

// #include <stdlib.h>
// #include <string.h>
import "C"
import "unsafe"

// Maximum size of a memory block that can be allocated
// 268435456 bytes, 256MB
const MaxHeapSize int = (1 << 28)

func referenceFromString(str string) uintptr {
	size := int32(len(str)) + 1 // add one byte for the null terminator

	// Allocate memory, this generates memory that is not managed
	// by Go's garbage collector
	// needs manually deallocated
	ptr := C.malloc(C.size_t(size))

	buf := (*[MaxHeapSize]byte)(ptr)[:size:size]

	copy(buf, str)

	// add the null terminator
	buf[len(str)] = 0

	return uintptr(ptr)
}

func stringFromReference(ptr uintptr) string {
	cstr := (*C.char)(unsafe.Pointer(ptr))
	slen := int(C.strlen(cstr))
	sbuf := make([]byte, slen)

	// https://golang.org/src/runtime/malloc.go?s=21082:21099
	copy(sbuf, (*[MaxHeapSize]byte)(unsafe.Pointer(ptr))[:slen:slen])

	return string(sbuf)
}

//go:export allocate
func Allocate(size int32) uintptr {
	ptr := C.malloc(C.size_t(size))
	return uintptr(ptr)
}

//go:export deallocate
func Deallocate(ptr uintptr, size int32) {
	// size is not used, it is only needed to keep the interface uniform
	C.free(unsafe.Pointer(ptr))
}
