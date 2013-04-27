# Julia wrapper for header: /usr/include/libxml2/libxml/dict.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

@c xmlDictPtr xmlDictCreate () libxml2
@c xmlDictPtr xmlDictCreateSub (xmlDictPtr,) libxml2
@c Int32 xmlDictReference (xmlDictPtr,) libxml2
@c None xmlDictFree (xmlDictPtr,) libxml2
@c Ptr{xmlChar} xmlDictLookup (xmlDictPtr, Ptr{xmlChar}, Int32) libxml2
@c Ptr{xmlChar} xmlDictExists (xmlDictPtr, Ptr{xmlChar}, Int32) libxml2
@c Ptr{xmlChar} xmlDictQLookup (xmlDictPtr, Ptr{xmlChar}, Ptr{xmlChar}) libxml2
@c Int32 xmlDictOwns (xmlDictPtr, Ptr{xmlChar}) libxml2
@c Int32 xmlDictSize (xmlDictPtr,) libxml2
@c None xmlDictCleanup () libxml2

