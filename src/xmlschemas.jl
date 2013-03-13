# Julia wrapper for header: /usr/include/libxml2/libxml/xmlschemas.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

@c xmlSchemaParserCtxtPtr xmlSchemaNewParserCtxt (Ptr{:Uint8},) shlib
@c xmlSchemaParserCtxtPtr xmlSchemaNewMemParserCtxt (Ptr{:Uint8},:Int32) shlib
@c xmlSchemaParserCtxtPtr xmlSchemaNewDocParserCtxt (:xmlDocPtr,) shlib
@c None xmlSchemaFreeParserCtxt (:xmlSchemaParserCtxtPtr,) shlib
@c None xmlSchemaSetParserErrors (:xmlSchemaParserCtxtPtr,:xmlSchemaValidityErrorFunc,:xmlSchemaValidityWarningFunc,Ptr{:None}) shlib
@c None xmlSchemaSetParserStructuredErrors (:xmlSchemaParserCtxtPtr,:xmlStructuredErrorFunc,Ptr{:None}) shlib
@c Int32 xmlSchemaGetParserErrors (:xmlSchemaParserCtxtPtr,Ptr{:xmlSchemaValidityErrorFunc},Ptr{:xmlSchemaValidityWarningFunc},Ptr{Ptr{:None}}) shlib
@c Int32 xmlSchemaIsValid (:xmlSchemaValidCtxtPtr,) shlib
@c xmlSchemaPtr xmlSchemaParse (:xmlSchemaParserCtxtPtr,) shlib
@c None xmlSchemaFree (:xmlSchemaPtr,) shlib
@c None xmlSchemaDump (Ptr{:FILE},:xmlSchemaPtr) shlib
@c None xmlSchemaSetValidErrors (:xmlSchemaValidCtxtPtr,:xmlSchemaValidityErrorFunc,:xmlSchemaValidityWarningFunc,Ptr{:None}) shlib
@c None xmlSchemaSetValidStructuredErrors (:xmlSchemaValidCtxtPtr,:xmlStructuredErrorFunc,Ptr{:None}) shlib
@c Int32 xmlSchemaGetValidErrors (:xmlSchemaValidCtxtPtr,Ptr{:xmlSchemaValidityErrorFunc},Ptr{:xmlSchemaValidityWarningFunc},Ptr{Ptr{:None}}) shlib
@c Int32 xmlSchemaSetValidOptions (:xmlSchemaValidCtxtPtr,:Int32) shlib
@c Int32 xmlSchemaValidCtxtGetOptions (:xmlSchemaValidCtxtPtr,) shlib
@c xmlSchemaValidCtxtPtr xmlSchemaNewValidCtxt (:xmlSchemaPtr,) shlib
@c None xmlSchemaFreeValidCtxt (:xmlSchemaValidCtxtPtr,) shlib
@c Int32 xmlSchemaValidateDoc (:xmlSchemaValidCtxtPtr,:xmlDocPtr) shlib
@c Int32 xmlSchemaValidateOneElement (:xmlSchemaValidCtxtPtr,:xmlNodePtr) shlib
@c Int32 xmlSchemaValidateStream (:xmlSchemaValidCtxtPtr,:xmlParserInputBufferPtr,:xmlCharEncoding,:xmlSAXHandlerPtr,Ptr{:None}) shlib
@c Int32 xmlSchemaValidateFile (:xmlSchemaValidCtxtPtr,Ptr{:Uint8},:Int32) shlib
@c xmlParserCtxtPtr xmlSchemaValidCtxtGetParserCtxt (:xmlSchemaValidCtxtPtr,) shlib
@c xmlSchemaSAXPlugPtr xmlSchemaSAXPlug (:xmlSchemaValidCtxtPtr,Ptr{:xmlSAXHandlerPtr},Ptr{Ptr{:None}}) shlib
@c Int32 xmlSchemaSAXUnplug (:xmlSchemaSAXPlugPtr,) shlib

