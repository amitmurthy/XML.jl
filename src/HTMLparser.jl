# Julia wrapper for header: /usr/include/libxml2/libxml/HTMLparser.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

@c Ptr{:htmlElemDesc} htmlTagLookup (Ptr{:xmlChar},) shlib
@c Ptr{:htmlEntityDesc} htmlEntityLookup (Ptr{:xmlChar},) shlib
@c Ptr{:htmlEntityDesc} htmlEntityValueLookup (:Uint32,) shlib
@c Int32 htmlIsAutoClosed (:htmlDocPtr,:htmlNodePtr) shlib
@c Int32 htmlAutoCloseTag (:htmlDocPtr,Ptr{:xmlChar},:htmlNodePtr) shlib
@c Ptr{:htmlEntityDesc} htmlParseEntityRef (:htmlParserCtxtPtr,Ptr{Ptr{:xmlChar}}) shlib
@c Int32 htmlParseCharRef (:htmlParserCtxtPtr,) shlib
@c None htmlParseElement (:htmlParserCtxtPtr,) shlib
@c htmlParserCtxtPtr htmlNewParserCtxt () shlib
@c htmlParserCtxtPtr htmlCreateMemoryParserCtxt (Ptr{:Uint8},:Int32) shlib
@c Int32 htmlParseDocument (:htmlParserCtxtPtr,) shlib
@c htmlDocPtr htmlSAXParseDoc (Ptr{:xmlChar},Ptr{:Uint8},:htmlSAXHandlerPtr,Ptr{:None}) shlib
@c htmlDocPtr htmlParseDoc (Ptr{:xmlChar},Ptr{:Uint8}) shlib
@c htmlDocPtr htmlSAXParseFile (Ptr{:Uint8},Ptr{:Uint8},:htmlSAXHandlerPtr,Ptr{:None}) shlib
@c htmlDocPtr htmlParseFile (Ptr{:Uint8},Ptr{:Uint8}) shlib
@c Int32 UTF8ToHtml (Ptr{:Uint8},Ptr{:Int32},Ptr{:Uint8},Ptr{:Int32}) shlib
@c Int32 htmlEncodeEntities (Ptr{:Uint8},Ptr{:Int32},Ptr{:Uint8},Ptr{:Int32},:Int32) shlib
@c Int32 htmlIsScriptAttribute (Ptr{:xmlChar},) shlib
@c Int32 htmlHandleOmittedElem (:Int32,) shlib
@c htmlParserCtxtPtr htmlCreatePushParserCtxt (:htmlSAXHandlerPtr,Ptr{:None},Ptr{:Uint8},:Int32,Ptr{:Uint8},:xmlCharEncoding) shlib
@c Int32 htmlParseChunk (:htmlParserCtxtPtr,Ptr{:Uint8},:Int32,:Int32) shlib
@c None htmlFreeParserCtxt (:htmlParserCtxtPtr,) shlib
@c None htmlCtxtReset (:htmlParserCtxtPtr,) shlib
@c Int32 htmlCtxtUseOptions (:htmlParserCtxtPtr,:Int32) shlib
@c htmlDocPtr htmlReadDoc (Ptr{:xmlChar},Ptr{:Uint8},Ptr{:Uint8},:Int32) shlib
@c htmlDocPtr htmlReadFile (Ptr{:Uint8},Ptr{:Uint8},:Int32) shlib
@c htmlDocPtr htmlReadMemory (Ptr{:Uint8},:Int32,Ptr{:Uint8},Ptr{:Uint8},:Int32) shlib
@c htmlDocPtr htmlReadFd (:Int32,Ptr{:Uint8},Ptr{:Uint8},:Int32) shlib
@c htmlDocPtr htmlReadIO (:xmlInputReadCallback,:xmlInputCloseCallback,Ptr{:None},Ptr{:Uint8},Ptr{:Uint8},:Int32) shlib
@c htmlDocPtr htmlCtxtReadDoc (:xmlParserCtxtPtr,Ptr{:xmlChar},Ptr{:Uint8},Ptr{:Uint8},:Int32) shlib
@c htmlDocPtr htmlCtxtReadFile (:xmlParserCtxtPtr,Ptr{:Uint8},Ptr{:Uint8},:Int32) shlib
@c htmlDocPtr htmlCtxtReadMemory (:xmlParserCtxtPtr,Ptr{:Uint8},:Int32,Ptr{:Uint8},Ptr{:Uint8},:Int32) shlib
@c htmlDocPtr htmlCtxtReadFd (:xmlParserCtxtPtr,:Int32,Ptr{:Uint8},Ptr{:Uint8},:Int32) shlib
@c htmlDocPtr htmlCtxtReadIO (:xmlParserCtxtPtr,:xmlInputReadCallback,:xmlInputCloseCallback,Ptr{:None},Ptr{:Uint8},Ptr{:Uint8},:Int32) shlib
@c htmlStatus htmlAttrAllowed (Ptr{:htmlElemDesc},Ptr{:xmlChar},:Int32) shlib
@c Int32 htmlElementAllowedHere (Ptr{:htmlElemDesc},Ptr{:xmlChar}) shlib
@c htmlStatus htmlElementStatusHere (Ptr{:htmlElemDesc},Ptr{:htmlElemDesc}) shlib
@c htmlStatus htmlNodeStatus (:htmlNodePtr,:Int32) shlib

