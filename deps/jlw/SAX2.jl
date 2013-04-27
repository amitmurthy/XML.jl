# Julia wrapper for header: /usr/include/libxml2/libxml/SAX2.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

@c Ptr{xmlChar} xmlSAX2GetPublicId (Ptr{None},) libxml2
@c Ptr{xmlChar} xmlSAX2GetSystemId (Ptr{None},) libxml2
@c None xmlSAX2SetDocumentLocator (Ptr{None}, xmlSAXLocatorPtr) libxml2
@c Int32 xmlSAX2GetLineNumber (Ptr{None},) libxml2
@c Int32 xmlSAX2GetColumnNumber (Ptr{None},) libxml2
@c Int32 xmlSAX2IsStandalone (Ptr{None},) libxml2
@c Int32 xmlSAX2HasInternalSubset (Ptr{None},) libxml2
@c Int32 xmlSAX2HasExternalSubset (Ptr{None},) libxml2
@c None xmlSAX2InternalSubset (Ptr{None}, Ptr{xmlChar}, Ptr{xmlChar}, Ptr{xmlChar}) libxml2
@c None xmlSAX2ExternalSubset (Ptr{None}, Ptr{xmlChar}, Ptr{xmlChar}, Ptr{xmlChar}) libxml2
@c xmlEntityPtr xmlSAX2GetEntity (Ptr{None}, Ptr{xmlChar}) libxml2
@c xmlEntityPtr xmlSAX2GetParameterEntity (Ptr{None}, Ptr{xmlChar}) libxml2
@c xmlParserInputPtr xmlSAX2ResolveEntity (Ptr{None}, Ptr{xmlChar}, Ptr{xmlChar}) libxml2
@c None xmlSAX2EntityDecl (Ptr{None}, Ptr{xmlChar}, Int32, Ptr{xmlChar}, Ptr{xmlChar}, Ptr{xmlChar}) libxml2
@c None xmlSAX2AttributeDecl (Ptr{None}, Ptr{xmlChar}, Ptr{xmlChar}, Int32, Int32, Ptr{xmlChar}, xmlEnumerationPtr) libxml2
@c None xmlSAX2ElementDecl (Ptr{None}, Ptr{xmlChar}, Int32, xmlElementContentPtr) libxml2
@c None xmlSAX2NotationDecl (Ptr{None}, Ptr{xmlChar}, Ptr{xmlChar}, Ptr{xmlChar}) libxml2
@c None xmlSAX2UnparsedEntityDecl (Ptr{None}, Ptr{xmlChar}, Ptr{xmlChar}, Ptr{xmlChar}, Ptr{xmlChar}) libxml2
@c None xmlSAX2StartDocument (Ptr{None},) libxml2
@c None xmlSAX2EndDocument (Ptr{None},) libxml2
@c None xmlSAX2StartElement (Ptr{None}, Ptr{xmlChar}, Ptr{Ptr{xmlChar}}) libxml2
@c None xmlSAX2EndElement (Ptr{None}, Ptr{xmlChar}) libxml2
@c None xmlSAX2StartElementNs (Ptr{None}, Ptr{xmlChar}, Ptr{xmlChar}, Ptr{xmlChar}, Int32, Ptr{Ptr{xmlChar}}, Int32, Int32, Ptr{Ptr{xmlChar}}) libxml2
@c None xmlSAX2EndElementNs (Ptr{None}, Ptr{xmlChar}, Ptr{xmlChar}, Ptr{xmlChar}) libxml2
@c None xmlSAX2Reference (Ptr{None}, Ptr{xmlChar}) libxml2
@c None xmlSAX2Characters (Ptr{None}, Ptr{xmlChar}, Int32) libxml2
@c None xmlSAX2IgnorableWhitespace (Ptr{None}, Ptr{xmlChar}, Int32) libxml2
@c None xmlSAX2ProcessingInstruction (Ptr{None}, Ptr{xmlChar}, Ptr{xmlChar}) libxml2
@c None xmlSAX2Comment (Ptr{None}, Ptr{xmlChar}) libxml2
@c None xmlSAX2CDataBlock (Ptr{None}, Ptr{xmlChar}, Int32) libxml2
@c Int32 xmlSAXDefaultVersion (Int32,) libxml2
@c Int32 xmlSAXVersion (Ptr{xmlSAXHandler}, Int32) libxml2
@c None xmlSAX2InitDefaultSAXHandler (Ptr{xmlSAXHandler}, Int32) libxml2
@c None xmlSAX2InitHtmlDefaultSAXHandler (Ptr{xmlSAXHandler},) libxml2
@c None htmlDefaultSAXHandlerInit () libxml2
@c None xmlSAX2InitDocbDefaultSAXHandler (Ptr{xmlSAXHandler},) libxml2
@c None docbDefaultSAXHandlerInit () libxml2
@c None xmlDefaultSAXHandlerInit () libxml2

