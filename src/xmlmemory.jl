# Julia wrapper for header: /usr/include/libxml2/libxml/xmlmemory.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

@c Int32 xmlMemSetup (xmlFreeFunc, xmlMallocFunc, xmlReallocFunc, xmlStrdupFunc) libxml2
@c Int32 xmlMemGet (Ptr{xmlFreeFunc}, Ptr{xmlMallocFunc}, Ptr{xmlReallocFunc}, Ptr{xmlStrdupFunc}) libxml2
@c Int32 xmlGcMemSetup (xmlFreeFunc, xmlMallocFunc, xmlMallocFunc, xmlReallocFunc, xmlStrdupFunc) libxml2
@c Int32 xmlGcMemGet (Ptr{xmlFreeFunc}, Ptr{xmlMallocFunc}, Ptr{xmlMallocFunc}, Ptr{xmlReallocFunc}, Ptr{xmlStrdupFunc}) libxml2
@c Int32 xmlInitMemory () libxml2
@c None xmlCleanupMemory () libxml2
@c Int32 xmlMemUsed () libxml2
@c Int32 xmlMemBlocks () libxml2
@c None xmlMemDisplay (Ptr{FILE},) libxml2
@c None xmlMemDisplayLast (Ptr{FILE}, Int64) libxml2
@c None xmlMemShow (Ptr{FILE}, Int32) libxml2
@c None xmlMemoryDump () libxml2
@c Ptr{None} xmlMemMalloc (size_t,) libxml2
@c Ptr{None} xmlMemRealloc (Ptr{None}, size_t) libxml2
@c None xmlMemFree (Ptr{None},) libxml2
@c Ptr{Uint8} xmlMemoryStrdup (Ptr{Uint8},) libxml2
@c Ptr{None} xmlMallocLoc (size_t, Ptr{Uint8}, Int32) libxml2
@c Ptr{None} xmlReallocLoc (Ptr{None}, size_t, Ptr{Uint8}, Int32) libxml2
@c Ptr{None} xmlMallocAtomicLoc (size_t, Ptr{Uint8}, Int32) libxml2
@c Ptr{Uint8} xmlMemStrdupLoc (Ptr{Uint8}, Ptr{Uint8}, Int32) libxml2

