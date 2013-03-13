# Julia wrapper for header: /usr/include/libxml2/libxml/relaxng.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

@c Int32 xmlRelaxNGInitTypes () shlib
@c None xmlRelaxNGCleanupTypes () shlib
@c xmlRelaxNGParserCtxtPtr xmlRelaxNGNewParserCtxt (Ptr{:Uint8},) shlib
@c xmlRelaxNGParserCtxtPtr xmlRelaxNGNewMemParserCtxt (Ptr{:Uint8},:Int32) shlib
@c xmlRelaxNGParserCtxtPtr xmlRelaxNGNewDocParserCtxt (:xmlDocPtr,) shlib
@c Int32 xmlRelaxParserSetFlag (:xmlRelaxNGParserCtxtPtr,:Int32) shlib
@c None xmlRelaxNGFreeParserCtxt (:xmlRelaxNGParserCtxtPtr,) shlib
@c None xmlRelaxNGSetParserErrors (:xmlRelaxNGParserCtxtPtr,:xmlRelaxNGValidityErrorFunc,:xmlRelaxNGValidityWarningFunc,Ptr{:None}) shlib
@c Int32 xmlRelaxNGGetParserErrors (:xmlRelaxNGParserCtxtPtr,Ptr{:xmlRelaxNGValidityErrorFunc},Ptr{:xmlRelaxNGValidityWarningFunc},Ptr{Ptr{:None}}) shlib
@c None xmlRelaxNGSetParserStructuredErrors (:xmlRelaxNGParserCtxtPtr,:xmlStructuredErrorFunc,Ptr{:None}) shlib
@c xmlRelaxNGPtr xmlRelaxNGParse (:xmlRelaxNGParserCtxtPtr,) shlib
@c None xmlRelaxNGFree (:xmlRelaxNGPtr,) shlib
@c None xmlRelaxNGDump (Ptr{:FILE},:xmlRelaxNGPtr) shlib
@c None xmlRelaxNGDumpTree (Ptr{:FILE},:xmlRelaxNGPtr) shlib
@c None xmlRelaxNGSetValidErrors (:xmlRelaxNGValidCtxtPtr,:xmlRelaxNGValidityErrorFunc,:xmlRelaxNGValidityWarningFunc,Ptr{:None}) shlib
@c Int32 xmlRelaxNGGetValidErrors (:xmlRelaxNGValidCtxtPtr,Ptr{:xmlRelaxNGValidityErrorFunc},Ptr{:xmlRelaxNGValidityWarningFunc},Ptr{Ptr{:None}}) shlib
@c None xmlRelaxNGSetValidStructuredErrors (:xmlRelaxNGValidCtxtPtr,:xmlStructuredErrorFunc,Ptr{:None}) shlib
@c xmlRelaxNGValidCtxtPtr xmlRelaxNGNewValidCtxt (:xmlRelaxNGPtr,) shlib
@c None xmlRelaxNGFreeValidCtxt (:xmlRelaxNGValidCtxtPtr,) shlib
@c Int32 xmlRelaxNGValidateDoc (:xmlRelaxNGValidCtxtPtr,:xmlDocPtr) shlib
@c Int32 xmlRelaxNGValidatePushElement (:xmlRelaxNGValidCtxtPtr,:xmlDocPtr,:xmlNodePtr) shlib
@c Int32 xmlRelaxNGValidatePushCData (:xmlRelaxNGValidCtxtPtr,Ptr{:xmlChar},:Int32) shlib
@c Int32 xmlRelaxNGValidatePopElement (:xmlRelaxNGValidCtxtPtr,:xmlDocPtr,:xmlNodePtr) shlib
@c Int32 xmlRelaxNGValidateFullElement (:xmlRelaxNGValidCtxtPtr,:xmlDocPtr,:xmlNodePtr) shlib

