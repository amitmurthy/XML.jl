# Julia wrapper for header: /usr/include/libxml2/libxml/xmlschemas.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

@c xmlSchemaParserCtxtPtr xmlSchemaNewParserCtxt (Ptr{Uint8},) libxml2
@c xmlSchemaParserCtxtPtr xmlSchemaNewMemParserCtxt (Ptr{Uint8}, Int32) libxml2
@c xmlSchemaParserCtxtPtr xmlSchemaNewDocParserCtxt (xmlDocPtr,) libxml2
@c None xmlSchemaFreeParserCtxt (xmlSchemaParserCtxtPtr,) libxml2
@c None xmlSchemaSetParserErrors (xmlSchemaParserCtxtPtr, xmlSchemaValidityErrorFunc, xmlSchemaValidityWarningFunc, Ptr{None}) libxml2
@c None xmlSchemaSetParserStructuredErrors (xmlSchemaParserCtxtPtr, xmlStructuredErrorFunc, Ptr{None}) libxml2
@c Int32 xmlSchemaGetParserErrors (xmlSchemaParserCtxtPtr, Ptr{xmlSchemaValidityErrorFunc}, Ptr{xmlSchemaValidityWarningFunc}, Ptr{Ptr{None}}) libxml2
@c Int32 xmlSchemaIsValid (xmlSchemaValidCtxtPtr,) libxml2
@c xmlSchemaPtr xmlSchemaParse (xmlSchemaParserCtxtPtr,) libxml2
@c None xmlSchemaFree (xmlSchemaPtr,) libxml2
@c None xmlSchemaDump (Ptr{FILE}, xmlSchemaPtr) libxml2
@c None xmlSchemaSetValidErrors (xmlSchemaValidCtxtPtr, xmlSchemaValidityErrorFunc, xmlSchemaValidityWarningFunc, Ptr{None}) libxml2
@c None xmlSchemaSetValidStructuredErrors (xmlSchemaValidCtxtPtr, xmlStructuredErrorFunc, Ptr{None}) libxml2
@c Int32 xmlSchemaGetValidErrors (xmlSchemaValidCtxtPtr, Ptr{xmlSchemaValidityErrorFunc}, Ptr{xmlSchemaValidityWarningFunc}, Ptr{Ptr{None}}) libxml2
@c Int32 xmlSchemaSetValidOptions (xmlSchemaValidCtxtPtr, Int32) libxml2
@c Int32 xmlSchemaValidCtxtGetOptions (xmlSchemaValidCtxtPtr,) libxml2
@c xmlSchemaValidCtxtPtr xmlSchemaNewValidCtxt (xmlSchemaPtr,) libxml2
@c None xmlSchemaFreeValidCtxt (xmlSchemaValidCtxtPtr,) libxml2
@c Int32 xmlSchemaValidateDoc (xmlSchemaValidCtxtPtr, xmlDocPtr) libxml2
@c Int32 xmlSchemaValidateOneElement (xmlSchemaValidCtxtPtr, xmlNodePtr) libxml2
@c Int32 xmlSchemaValidateStream (xmlSchemaValidCtxtPtr, xmlParserInputBufferPtr, xmlCharEncoding, xmlSAXHandlerPtr, Ptr{None}) libxml2
@c Int32 xmlSchemaValidateFile (xmlSchemaValidCtxtPtr, Ptr{Uint8}, Int32) libxml2
@c xmlParserCtxtPtr xmlSchemaValidCtxtGetParserCtxt (xmlSchemaValidCtxtPtr,) libxml2
@c xmlSchemaSAXPlugPtr xmlSchemaSAXPlug (xmlSchemaValidCtxtPtr, Ptr{xmlSAXHandlerPtr}, Ptr{Ptr{None}}) libxml2
@c Int32 xmlSchemaSAXUnplug (xmlSchemaSAXPlugPtr,) libxml2

