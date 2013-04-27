# Julia wrapper for header: /usr/include/libxml2/libxml/HTMLparser.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

@c Ptr{htmlElemDesc} htmlTagLookup (Ptr{xmlChar},) libxml2
@c Ptr{htmlEntityDesc} htmlEntityLookup (Ptr{xmlChar},) libxml2
@c Ptr{htmlEntityDesc} htmlEntityValueLookup (Uint32,) libxml2
@c Int32 htmlIsAutoClosed (htmlDocPtr, htmlNodePtr) libxml2
@c Int32 htmlAutoCloseTag (htmlDocPtr, Ptr{xmlChar}, htmlNodePtr) libxml2
@c Ptr{htmlEntityDesc} htmlParseEntityRef (htmlParserCtxtPtr, Ptr{Ptr{xmlChar}}) libxml2
@c Int32 htmlParseCharRef (htmlParserCtxtPtr,) libxml2
@c None htmlParseElement (htmlParserCtxtPtr,) libxml2
@c htmlParserCtxtPtr htmlNewParserCtxt () libxml2
@c htmlParserCtxtPtr htmlCreateMemoryParserCtxt (Ptr{Uint8}, Int32) libxml2
@c Int32 htmlParseDocument (htmlParserCtxtPtr,) libxml2
@c htmlDocPtr htmlSAXParseDoc (Ptr{xmlChar}, Ptr{Uint8}, htmlSAXHandlerPtr, Ptr{None}) libxml2
@c htmlDocPtr htmlParseDoc (Ptr{xmlChar}, Ptr{Uint8}) libxml2
@c htmlDocPtr htmlSAXParseFile (Ptr{Uint8}, Ptr{Uint8}, htmlSAXHandlerPtr, Ptr{None}) libxml2
@c htmlDocPtr htmlParseFile (Ptr{Uint8}, Ptr{Uint8}) libxml2
@c Int32 UTF8ToHtml (Ptr{Uint8}, Ptr{Int32}, Ptr{Uint8}, Ptr{Int32}) libxml2
@c Int32 htmlEncodeEntities (Ptr{Uint8}, Ptr{Int32}, Ptr{Uint8}, Ptr{Int32}, Int32) libxml2
@c Int32 htmlIsScriptAttribute (Ptr{xmlChar},) libxml2
@c Int32 htmlHandleOmittedElem (Int32,) libxml2
@c htmlParserCtxtPtr htmlCreatePushParserCtxt (htmlSAXHandlerPtr, Ptr{None}, Ptr{Uint8}, Int32, Ptr{Uint8}, xmlCharEncoding) libxml2
@c Int32 htmlParseChunk (htmlParserCtxtPtr, Ptr{Uint8}, Int32, Int32) libxml2
@c None htmlFreeParserCtxt (htmlParserCtxtPtr,) libxml2
@c None htmlCtxtReset (htmlParserCtxtPtr,) libxml2
@c Int32 htmlCtxtUseOptions (htmlParserCtxtPtr, Int32) libxml2
@c htmlDocPtr htmlReadDoc (Ptr{xmlChar}, Ptr{Uint8}, Ptr{Uint8}, Int32) libxml2
@c htmlDocPtr htmlReadFile (Ptr{Uint8}, Ptr{Uint8}, Int32) libxml2
@c htmlDocPtr htmlReadMemory (Ptr{Uint8}, Int32, Ptr{Uint8}, Ptr{Uint8}, Int32) libxml2
@c htmlDocPtr htmlReadFd (Int32, Ptr{Uint8}, Ptr{Uint8}, Int32) libxml2
@c htmlDocPtr htmlReadIO (xmlInputReadCallback, xmlInputCloseCallback, Ptr{None}, Ptr{Uint8}, Ptr{Uint8}, Int32) libxml2
@c htmlDocPtr htmlCtxtReadDoc (xmlParserCtxtPtr, Ptr{xmlChar}, Ptr{Uint8}, Ptr{Uint8}, Int32) libxml2
@c htmlDocPtr htmlCtxtReadFile (xmlParserCtxtPtr, Ptr{Uint8}, Ptr{Uint8}, Int32) libxml2
@c htmlDocPtr htmlCtxtReadMemory (xmlParserCtxtPtr, Ptr{Uint8}, Int32, Ptr{Uint8}, Ptr{Uint8}, Int32) libxml2
@c htmlDocPtr htmlCtxtReadFd (xmlParserCtxtPtr, Int32, Ptr{Uint8}, Ptr{Uint8}, Int32) libxml2
@c htmlDocPtr htmlCtxtReadIO (xmlParserCtxtPtr, xmlInputReadCallback, xmlInputCloseCallback, Ptr{None}, Ptr{Uint8}, Ptr{Uint8}, Int32) libxml2
@c htmlStatus htmlAttrAllowed (Ptr{htmlElemDesc}, Ptr{xmlChar}, Int32) libxml2
@c Int32 htmlElementAllowedHere (Ptr{htmlElemDesc}, Ptr{xmlChar}) libxml2
@c htmlStatus htmlElementStatusHere (Ptr{htmlElemDesc}, Ptr{htmlElemDesc}) libxml2
@c htmlStatus htmlNodeStatus (htmlNodePtr, Int32) libxml2

