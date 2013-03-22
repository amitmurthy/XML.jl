# Julia wrapper for header: /usr/include/libxml2/libxml/schematron.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

@c xmlSchematronParserCtxtPtr xmlSchematronNewParserCtxt (Ptr{Uint8},) libxml2
@c xmlSchematronParserCtxtPtr xmlSchematronNewMemParserCtxt (Ptr{Uint8}, Int32) libxml2
@c xmlSchematronParserCtxtPtr xmlSchematronNewDocParserCtxt (xmlDocPtr,) libxml2
@c None xmlSchematronFreeParserCtxt (xmlSchematronParserCtxtPtr,) libxml2
@c xmlSchematronPtr xmlSchematronParse (xmlSchematronParserCtxtPtr,) libxml2
@c None xmlSchematronFree (xmlSchematronPtr,) libxml2
@c None xmlSchematronSetValidStructuredErrors (xmlSchematronValidCtxtPtr, xmlStructuredErrorFunc, Ptr{None}) libxml2
@c xmlSchematronValidCtxtPtr xmlSchematronNewValidCtxt (xmlSchematronPtr, Int32) libxml2
@c None xmlSchematronFreeValidCtxt (xmlSchematronValidCtxtPtr,) libxml2
@c Int32 xmlSchematronValidateDoc (xmlSchematronValidCtxtPtr, xmlDocPtr) libxml2

