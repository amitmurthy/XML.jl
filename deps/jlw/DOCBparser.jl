# Julia wrapper for header: /usr/include/libxml2/libxml/DOCBparser.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

@c Int32 docbEncodeEntities (Ptr{Uint8}, Ptr{Int32}, Ptr{Uint8}, Ptr{Int32}, Int32) libxml2
@c docbDocPtr docbSAXParseDoc (Ptr{xmlChar}, Ptr{Uint8}, docbSAXHandlerPtr, Ptr{None}) libxml2
@c docbDocPtr docbParseDoc (Ptr{xmlChar}, Ptr{Uint8}) libxml2
@c docbDocPtr docbSAXParseFile (Ptr{Uint8}, Ptr{Uint8}, docbSAXHandlerPtr, Ptr{None}) libxml2
@c docbDocPtr docbParseFile (Ptr{Uint8}, Ptr{Uint8}) libxml2
@c None docbFreeParserCtxt (docbParserCtxtPtr,) libxml2
@c docbParserCtxtPtr docbCreatePushParserCtxt (docbSAXHandlerPtr, Ptr{None}, Ptr{Uint8}, Int32, Ptr{Uint8}, xmlCharEncoding) libxml2
@c Int32 docbParseChunk (docbParserCtxtPtr, Ptr{Uint8}, Int32, Int32) libxml2
@c docbParserCtxtPtr docbCreateFileParserCtxt (Ptr{Uint8}, Ptr{Uint8}) libxml2
@c Int32 docbParseDocument (docbParserCtxtPtr,) libxml2

