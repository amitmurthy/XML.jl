# Julia wrapper for header: /usr/include/libxml2/libxml/dict.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

@c xmlDictPtr xmlDictCreate () shlib
@c xmlDictPtr xmlDictCreateSub (:xmlDictPtr,) shlib
@c Int32 xmlDictReference (:xmlDictPtr,) shlib
@c None xmlDictFree (:xmlDictPtr,) shlib
@c Ptr{:xmlChar} xmlDictLookup (:xmlDictPtr,Ptr{:xmlChar},:Int32) shlib
@c Ptr{:xmlChar} xmlDictExists (:xmlDictPtr,Ptr{:xmlChar},:Int32) shlib
@c Ptr{:xmlChar} xmlDictQLookup (:xmlDictPtr,Ptr{:xmlChar},Ptr{:xmlChar}) shlib
@c Int32 xmlDictOwns (:xmlDictPtr,Ptr{:xmlChar}) shlib
@c Int32 xmlDictSize (:xmlDictPtr,) shlib
@c None xmlDictCleanup () shlib

