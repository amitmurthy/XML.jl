# Julia wrapper for header: /usr/include/libxml2/libxml/uri.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

@c xmlURIPtr xmlCreateURI () shlib
@c Ptr{:xmlChar} xmlBuildURI (Ptr{:xmlChar},Ptr{:xmlChar}) shlib
@c Ptr{:xmlChar} xmlBuildRelativeURI (Ptr{:xmlChar},Ptr{:xmlChar}) shlib
@c xmlURIPtr xmlParseURI (Ptr{:Uint8},) shlib
@c xmlURIPtr xmlParseURIRaw (Ptr{:Uint8},:Int32) shlib
@c Int32 xmlParseURIReference (:xmlURIPtr,Ptr{:Uint8}) shlib
@c Ptr{:xmlChar} xmlSaveUri (:xmlURIPtr,) shlib
@c None xmlPrintURI (Ptr{:FILE},:xmlURIPtr) shlib
@c Ptr{:xmlChar} xmlURIEscapeStr (Ptr{:xmlChar},Ptr{:xmlChar}) shlib
@c Ptr{:Uint8} xmlURIUnescapeString (Ptr{:Uint8},:Int32,Ptr{:Uint8}) shlib
@c Int32 xmlNormalizeURIPath (Ptr{:Uint8},) shlib
@c Ptr{:xmlChar} xmlURIEscape (Ptr{:xmlChar},) shlib
@c None xmlFreeURI (:xmlURIPtr,) shlib
@c Ptr{:xmlChar} xmlCanonicPath (Ptr{:xmlChar},) shlib
@c Ptr{:xmlChar} xmlPathToURI (Ptr{:xmlChar},) shlib

