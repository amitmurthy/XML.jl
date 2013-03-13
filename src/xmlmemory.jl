# Julia wrapper for header: /usr/include/libxml2/libxml/xmlmemory.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

@c Int32 xmlMemSetup (:xmlFreeFunc,:xmlMallocFunc,:xmlReallocFunc,:xmlStrdupFunc) shlib
@c Int32 xmlMemGet (Ptr{:xmlFreeFunc},Ptr{:xmlMallocFunc},Ptr{:xmlReallocFunc},Ptr{:xmlStrdupFunc}) shlib
@c Int32 xmlGcMemSetup (:xmlFreeFunc,:xmlMallocFunc,:xmlMallocFunc,:xmlReallocFunc,:xmlStrdupFunc) shlib
@c Int32 xmlGcMemGet (Ptr{:xmlFreeFunc},Ptr{:xmlMallocFunc},Ptr{:xmlMallocFunc},Ptr{:xmlReallocFunc},Ptr{:xmlStrdupFunc}) shlib
@c Int32 xmlInitMemory () shlib
@c None xmlCleanupMemory () shlib
@c Int32 xmlMemUsed () shlib
@c Int32 xmlMemBlocks () shlib
@c None xmlMemDisplay (Ptr{:FILE},) shlib
@c None xmlMemDisplayLast (Ptr{:FILE},:Int64) shlib
@c None xmlMemShow (Ptr{:FILE},:Int32) shlib
@c None xmlMemoryDump () shlib
@c Ptr{:None} xmlMemMalloc (:size_t,) shlib
@c Ptr{:None} xmlMemRealloc (Ptr{:None},:size_t) shlib
@c None xmlMemFree (Ptr{:None},) shlib
@c Ptr{:Uint8} xmlMemoryStrdup (Ptr{:Uint8},) shlib
@c Ptr{:None} xmlMallocLoc (:size_t,Ptr{:Uint8},:Int32) shlib
@c Ptr{:None} xmlReallocLoc (Ptr{:None},:size_t,Ptr{:Uint8},:Int32) shlib
@c Ptr{:None} xmlMallocAtomicLoc (:size_t,Ptr{:Uint8},:Int32) shlib
@c Ptr{:Uint8} xmlMemStrdupLoc (Ptr{:Uint8},Ptr{:Uint8},:Int32) shlib

