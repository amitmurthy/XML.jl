# Julia wrapper for header: /usr/include/libxml2/libxml/SAX.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

@c Ptr{:xmlChar} getPublicId (Ptr{:None},) shlib
@c Ptr{:xmlChar} getSystemId (Ptr{:None},) shlib
@c None setDocumentLocator (Ptr{:None},:xmlSAXLocatorPtr) shlib
@c Int32 getLineNumber (Ptr{:None},) shlib
@c Int32 getColumnNumber (Ptr{:None},) shlib
@c Int32 isStandalone (Ptr{:None},) shlib
@c Int32 hasInternalSubset (Ptr{:None},) shlib
@c Int32 hasExternalSubset (Ptr{:None},) shlib
@c None internalSubset (Ptr{:None},Ptr{:xmlChar},Ptr{:xmlChar},Ptr{:xmlChar}) shlib
@c None externalSubset (Ptr{:None},Ptr{:xmlChar},Ptr{:xmlChar},Ptr{:xmlChar}) shlib
@c xmlEntityPtr getEntity (Ptr{:None},Ptr{:xmlChar}) shlib
@c xmlEntityPtr getParameterEntity (Ptr{:None},Ptr{:xmlChar}) shlib
@c xmlParserInputPtr resolveEntity (Ptr{:None},Ptr{:xmlChar},Ptr{:xmlChar}) shlib
@c None entityDecl (Ptr{:None},Ptr{:xmlChar},:Int32,Ptr{:xmlChar},Ptr{:xmlChar},Ptr{:xmlChar}) shlib
@c None attributeDecl (Ptr{:None},Ptr{:xmlChar},Ptr{:xmlChar},:Int32,:Int32,Ptr{:xmlChar},:xmlEnumerationPtr) shlib
@c None elementDecl (Ptr{:None},Ptr{:xmlChar},:Int32,:xmlElementContentPtr) shlib
@c None notationDecl (Ptr{:None},Ptr{:xmlChar},Ptr{:xmlChar},Ptr{:xmlChar}) shlib
@c None unparsedEntityDecl (Ptr{:None},Ptr{:xmlChar},Ptr{:xmlChar},Ptr{:xmlChar},Ptr{:xmlChar}) shlib
@c None startDocument (Ptr{:None},) shlib
@c None endDocument (Ptr{:None},) shlib
@c None attribute (Ptr{:None},Ptr{:xmlChar},Ptr{:xmlChar}) shlib
@c None startElement (Ptr{:None},Ptr{:xmlChar},Ptr{Ptr{:xmlChar}}) shlib
@c None endElement (Ptr{:None},Ptr{:xmlChar}) shlib
@c None reference (Ptr{:None},Ptr{:xmlChar}) shlib
@c None characters (Ptr{:None},Ptr{:xmlChar},:Int32) shlib
@c None ignorableWhitespace (Ptr{:None},Ptr{:xmlChar},:Int32) shlib
@c None processingInstruction (Ptr{:None},Ptr{:xmlChar},Ptr{:xmlChar}) shlib
@c None globalNamespace (Ptr{:None},Ptr{:xmlChar},Ptr{:xmlChar}) shlib
@c None setNamespace (Ptr{:None},Ptr{:xmlChar}) shlib
@c xmlNsPtr getNamespace (Ptr{:None},) shlib
@c Int32 checkNamespace (Ptr{:None},Ptr{:xmlChar}) shlib
@c None namespaceDecl (Ptr{:None},Ptr{:xmlChar},Ptr{:xmlChar}) shlib
@c None comment (Ptr{:None},Ptr{:xmlChar}) shlib
@c None cdataBlock (Ptr{:None},Ptr{:xmlChar},:Int32) shlib
@c None initxmlDefaultSAXHandler (Ptr{:xmlSAXHandlerV1},:Int32) shlib
@c None inithtmlDefaultSAXHandler (Ptr{:xmlSAXHandlerV1},) shlib
@c None initdocbDefaultSAXHandler (Ptr{:xmlSAXHandlerV1},) shlib

