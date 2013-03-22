# Julia wrapper for header: /usr/include/libxml2/libxml/relaxng.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

@c Int32 xmlRelaxNGInitTypes () libxml2
@c None xmlRelaxNGCleanupTypes () libxml2
@c xmlRelaxNGParserCtxtPtr xmlRelaxNGNewParserCtxt (Ptr{Uint8},) libxml2
@c xmlRelaxNGParserCtxtPtr xmlRelaxNGNewMemParserCtxt (Ptr{Uint8}, Int32) libxml2
@c xmlRelaxNGParserCtxtPtr xmlRelaxNGNewDocParserCtxt (xmlDocPtr,) libxml2
@c Int32 xmlRelaxParserSetFlag (xmlRelaxNGParserCtxtPtr, Int32) libxml2
@c None xmlRelaxNGFreeParserCtxt (xmlRelaxNGParserCtxtPtr,) libxml2
@c None xmlRelaxNGSetParserErrors (xmlRelaxNGParserCtxtPtr, xmlRelaxNGValidityErrorFunc, xmlRelaxNGValidityWarningFunc, Ptr{None}) libxml2
@c Int32 xmlRelaxNGGetParserErrors (xmlRelaxNGParserCtxtPtr, Ptr{xmlRelaxNGValidityErrorFunc}, Ptr{xmlRelaxNGValidityWarningFunc}, Ptr{Ptr{None}}) libxml2
@c None xmlRelaxNGSetParserStructuredErrors (xmlRelaxNGParserCtxtPtr, xmlStructuredErrorFunc, Ptr{None}) libxml2
@c xmlRelaxNGPtr xmlRelaxNGParse (xmlRelaxNGParserCtxtPtr,) libxml2
@c None xmlRelaxNGFree (xmlRelaxNGPtr,) libxml2
@c None xmlRelaxNGDump (Ptr{FILE}, xmlRelaxNGPtr) libxml2
@c None xmlRelaxNGDumpTree (Ptr{FILE}, xmlRelaxNGPtr) libxml2
@c None xmlRelaxNGSetValidErrors (xmlRelaxNGValidCtxtPtr, xmlRelaxNGValidityErrorFunc, xmlRelaxNGValidityWarningFunc, Ptr{None}) libxml2
@c Int32 xmlRelaxNGGetValidErrors (xmlRelaxNGValidCtxtPtr, Ptr{xmlRelaxNGValidityErrorFunc}, Ptr{xmlRelaxNGValidityWarningFunc}, Ptr{Ptr{None}}) libxml2
@c None xmlRelaxNGSetValidStructuredErrors (xmlRelaxNGValidCtxtPtr, xmlStructuredErrorFunc, Ptr{None}) libxml2
@c xmlRelaxNGValidCtxtPtr xmlRelaxNGNewValidCtxt (xmlRelaxNGPtr,) libxml2
@c None xmlRelaxNGFreeValidCtxt (xmlRelaxNGValidCtxtPtr,) libxml2
@c Int32 xmlRelaxNGValidateDoc (xmlRelaxNGValidCtxtPtr, xmlDocPtr) libxml2
@c Int32 xmlRelaxNGValidatePushElement (xmlRelaxNGValidCtxtPtr, xmlDocPtr, xmlNodePtr) libxml2
@c Int32 xmlRelaxNGValidatePushCData (xmlRelaxNGValidCtxtPtr, Ptr{xmlChar}, Int32) libxml2
@c Int32 xmlRelaxNGValidatePopElement (xmlRelaxNGValidCtxtPtr, xmlDocPtr, xmlNodePtr) libxml2
@c Int32 xmlRelaxNGValidateFullElement (xmlRelaxNGValidCtxtPtr, xmlDocPtr, xmlNodePtr) libxml2

