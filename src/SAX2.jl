# Julia wrapper for header: /usr/include/libxml2/libxml/SAX2.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

@c Ptr{:xmlChar} xmlSAX2GetPublicId (Ptr{:None},) shlib
@c Ptr{:xmlChar} xmlSAX2GetSystemId (Ptr{:None},) shlib
@c None xmlSAX2SetDocumentLocator (Ptr{:None},:xmlSAXLocatorPtr) shlib
@c Int32 xmlSAX2GetLineNumber (Ptr{:None},) shlib
@c Int32 xmlSAX2GetColumnNumber (Ptr{:None},) shlib
@c Int32 xmlSAX2IsStandalone (Ptr{:None},) shlib
@c Int32 xmlSAX2HasInternalSubset (Ptr{:None},) shlib
@c Int32 xmlSAX2HasExternalSubset (Ptr{:None},) shlib
@c None xmlSAX2InternalSubset (Ptr{:None},Ptr{:xmlChar},Ptr{:xmlChar},Ptr{:xmlChar}) shlib
@c None xmlSAX2ExternalSubset (Ptr{:None},Ptr{:xmlChar},Ptr{:xmlChar},Ptr{:xmlChar}) shlib
@c xmlEntityPtr xmlSAX2GetEntity (Ptr{:None},Ptr{:xmlChar}) shlib
@c xmlEntityPtr xmlSAX2GetParameterEntity (Ptr{:None},Ptr{:xmlChar}) shlib
@c xmlParserInputPtr xmlSAX2ResolveEntity (Ptr{:None},Ptr{:xmlChar},Ptr{:xmlChar}) shlib
@c None xmlSAX2EntityDecl (Ptr{:None},Ptr{:xmlChar},:Int32,Ptr{:xmlChar},Ptr{:xmlChar},Ptr{:xmlChar}) shlib
@c None xmlSAX2AttributeDecl (Ptr{:None},Ptr{:xmlChar},Ptr{:xmlChar},:Int32,:Int32,Ptr{:xmlChar},:xmlEnumerationPtr) shlib
@c None xmlSAX2ElementDecl (Ptr{:None},Ptr{:xmlChar},:Int32,:xmlElementContentPtr) shlib
@c None xmlSAX2NotationDecl (Ptr{:None},Ptr{:xmlChar},Ptr{:xmlChar},Ptr{:xmlChar}) shlib
@c None xmlSAX2UnparsedEntityDecl (Ptr{:None},Ptr{:xmlChar},Ptr{:xmlChar},Ptr{:xmlChar},Ptr{:xmlChar}) shlib
@c None xmlSAX2StartDocument (Ptr{:None},) shlib
@c None xmlSAX2EndDocument (Ptr{:None},) shlib
@c None xmlSAX2StartElement (Ptr{:None},Ptr{:xmlChar},Ptr{Ptr{:xmlChar}}) shlib
@c None xmlSAX2EndElement (Ptr{:None},Ptr{:xmlChar}) shlib
@c None xmlSAX2StartElementNs (Ptr{:None},Ptr{:xmlChar},Ptr{:xmlChar},Ptr{:xmlChar},:Int32,Ptr{Ptr{:xmlChar}},:Int32,:Int32,Ptr{Ptr{:xmlChar}}) shlib
@c None xmlSAX2EndElementNs (Ptr{:None},Ptr{:xmlChar},Ptr{:xmlChar},Ptr{:xmlChar}) shlib
@c None xmlSAX2Reference (Ptr{:None},Ptr{:xmlChar}) shlib
@c None xmlSAX2Characters (Ptr{:None},Ptr{:xmlChar},:Int32) shlib
@c None xmlSAX2IgnorableWhitespace (Ptr{:None},Ptr{:xmlChar},:Int32) shlib
@c None xmlSAX2ProcessingInstruction (Ptr{:None},Ptr{:xmlChar},Ptr{:xmlChar}) shlib
@c None xmlSAX2Comment (Ptr{:None},Ptr{:xmlChar}) shlib
@c None xmlSAX2CDataBlock (Ptr{:None},Ptr{:xmlChar},:Int32) shlib
@c Int32 xmlSAXDefaultVersion (:Int32,) shlib
@c Int32 xmlSAXVersion (Ptr{:xmlSAXHandler},:Int32) shlib
@c None xmlSAX2InitDefaultSAXHandler (Ptr{:xmlSAXHandler},:Int32) shlib
@c None xmlSAX2InitHtmlDefaultSAXHandler (Ptr{:xmlSAXHandler},) shlib
@c None htmlDefaultSAXHandlerInit () shlib
@c None xmlSAX2InitDocbDefaultSAXHandler (Ptr{:xmlSAXHandler},) shlib
@c None docbDefaultSAXHandlerInit () shlib
@c None xmlDefaultSAXHandlerInit () shlib

