# Julia wrapper for header: /usr/include/libxml2/libxml/SAX.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

@c Ptr{xmlChar} getPublicId (Ptr{None},) libxml2
@c Ptr{xmlChar} getSystemId (Ptr{None},) libxml2
@c None setDocumentLocator (Ptr{None}, xmlSAXLocatorPtr) libxml2
@c Int32 getLineNumber (Ptr{None},) libxml2
@c Int32 getColumnNumber (Ptr{None},) libxml2
@c Int32 isStandalone (Ptr{None},) libxml2
@c Int32 hasInternalSubset (Ptr{None},) libxml2
@c Int32 hasExternalSubset (Ptr{None},) libxml2
@c None internalSubset (Ptr{None}, Ptr{xmlChar}, Ptr{xmlChar}, Ptr{xmlChar}) libxml2
@c None externalSubset (Ptr{None}, Ptr{xmlChar}, Ptr{xmlChar}, Ptr{xmlChar}) libxml2
@c xmlEntityPtr getEntity (Ptr{None}, Ptr{xmlChar}) libxml2
@c xmlEntityPtr getParameterEntity (Ptr{None}, Ptr{xmlChar}) libxml2
@c xmlParserInputPtr resolveEntity (Ptr{None}, Ptr{xmlChar}, Ptr{xmlChar}) libxml2
@c None entityDecl (Ptr{None}, Ptr{xmlChar}, Int32, Ptr{xmlChar}, Ptr{xmlChar}, Ptr{xmlChar}) libxml2
@c None attributeDecl (Ptr{None}, Ptr{xmlChar}, Ptr{xmlChar}, Int32, Int32, Ptr{xmlChar}, xmlEnumerationPtr) libxml2
@c None elementDecl (Ptr{None}, Ptr{xmlChar}, Int32, xmlElementContentPtr) libxml2
@c None notationDecl (Ptr{None}, Ptr{xmlChar}, Ptr{xmlChar}, Ptr{xmlChar}) libxml2
@c None unparsedEntityDecl (Ptr{None}, Ptr{xmlChar}, Ptr{xmlChar}, Ptr{xmlChar}, Ptr{xmlChar}) libxml2
@c None startDocument (Ptr{None},) libxml2
@c None endDocument (Ptr{None},) libxml2
@c None attribute (Ptr{None}, Ptr{xmlChar}, Ptr{xmlChar}) libxml2
@c None startElement (Ptr{None}, Ptr{xmlChar}, Ptr{Ptr{xmlChar}}) libxml2
@c None endElement (Ptr{None}, Ptr{xmlChar}) libxml2
@c None reference (Ptr{None}, Ptr{xmlChar}) libxml2
@c None characters (Ptr{None}, Ptr{xmlChar}, Int32) libxml2
@c None ignorableWhitespace (Ptr{None}, Ptr{xmlChar}, Int32) libxml2
@c None processingInstruction (Ptr{None}, Ptr{xmlChar}, Ptr{xmlChar}) libxml2
@c None globalNamespace (Ptr{None}, Ptr{xmlChar}, Ptr{xmlChar}) libxml2
@c None setNamespace (Ptr{None}, Ptr{xmlChar}) libxml2
@c xmlNsPtr getNamespace (Ptr{None},) libxml2
@c Int32 checkNamespace (Ptr{None}, Ptr{xmlChar}) libxml2
@c None namespaceDecl (Ptr{None}, Ptr{xmlChar}, Ptr{xmlChar}) libxml2
@c None comment (Ptr{None}, Ptr{xmlChar}) libxml2
@c None cdataBlock (Ptr{None}, Ptr{xmlChar}, Int32) libxml2
@c None initxmlDefaultSAXHandler (Ptr{xmlSAXHandlerV1}, Int32) libxml2
@c None inithtmlDefaultSAXHandler (Ptr{xmlSAXHandlerV1},) libxml2
@c None initdocbDefaultSAXHandler (Ptr{xmlSAXHandlerV1},) libxml2

