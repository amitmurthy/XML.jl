# Julia wrapper for header: /usr/include/libxml2/libxml/schematron.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

@c xmlSchematronParserCtxtPtr xmlSchematronNewParserCtxt (Ptr{:Uint8},) shlib
@c xmlSchematronParserCtxtPtr xmlSchematronNewMemParserCtxt (Ptr{:Uint8},:Int32) shlib
@c xmlSchematronParserCtxtPtr xmlSchematronNewDocParserCtxt (:xmlDocPtr,) shlib
@c None xmlSchematronFreeParserCtxt (:xmlSchematronParserCtxtPtr,) shlib
@c xmlSchematronPtr xmlSchematronParse (:xmlSchematronParserCtxtPtr,) shlib
@c None xmlSchematronFree (:xmlSchematronPtr,) shlib
@c None xmlSchematronSetValidStructuredErrors (:xmlSchematronValidCtxtPtr,:xmlStructuredErrorFunc,Ptr{:None}) shlib
@c xmlSchematronValidCtxtPtr xmlSchematronNewValidCtxt (:xmlSchematronPtr,:Int32) shlib
@c None xmlSchematronFreeValidCtxt (:xmlSchematronValidCtxtPtr,) shlib
@c Int32 xmlSchematronValidateDoc (:xmlSchematronValidCtxtPtr,:xmlDocPtr) shlib

