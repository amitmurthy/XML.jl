# Julia wrapper for header: /usr/include/libxml2/libxml/uri.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

@c xmlURIPtr xmlCreateURI () libxml2
@c Ptr{xmlChar} xmlBuildURI (Ptr{xmlChar}, Ptr{xmlChar}) libxml2
@c Ptr{xmlChar} xmlBuildRelativeURI (Ptr{xmlChar}, Ptr{xmlChar}) libxml2
@c xmlURIPtr xmlParseURI (Ptr{Uint8},) libxml2
@c xmlURIPtr xmlParseURIRaw (Ptr{Uint8}, Int32) libxml2
@c Int32 xmlParseURIReference (xmlURIPtr, Ptr{Uint8}) libxml2
@c Ptr{xmlChar} xmlSaveUri (xmlURIPtr,) libxml2
@c None xmlPrintURI (Ptr{FILE}, xmlURIPtr) libxml2
@c Ptr{xmlChar} xmlURIEscapeStr (Ptr{xmlChar}, Ptr{xmlChar}) libxml2
@c Ptr{Uint8} xmlURIUnescapeString (Ptr{Uint8}, Int32, Ptr{Uint8}) libxml2
@c Int32 xmlNormalizeURIPath (Ptr{Uint8},) libxml2
@c Ptr{xmlChar} xmlURIEscape (Ptr{xmlChar},) libxml2
@c None xmlFreeURI (xmlURIPtr,) libxml2
@c Ptr{xmlChar} xmlCanonicPath (Ptr{xmlChar},) libxml2
@c Ptr{xmlChar} xmlPathToURI (Ptr{xmlChar},) libxml2

