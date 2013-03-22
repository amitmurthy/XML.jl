# Julia wrapper for header: /usr/include/libxml2/libxml/xmlreader.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

@c xmlTextReaderPtr xmlNewTextReader (xmlParserInputBufferPtr, Ptr{Uint8}) libxml2
@c xmlTextReaderPtr xmlNewTextReaderFilename (Ptr{Uint8},) libxml2
@c None xmlFreeTextReader (xmlTextReaderPtr,) libxml2
@c Int32 xmlTextReaderSetup (xmlTextReaderPtr, xmlParserInputBufferPtr, Ptr{Uint8}, Ptr{Uint8}, Int32) libxml2
@c Int32 xmlTextReaderRead (xmlTextReaderPtr,) libxml2
@c Ptr{xmlChar} xmlTextReaderReadInnerXml (xmlTextReaderPtr,) libxml2
@c Ptr{xmlChar} xmlTextReaderReadOuterXml (xmlTextReaderPtr,) libxml2
@c Ptr{xmlChar} xmlTextReaderReadString (xmlTextReaderPtr,) libxml2
@c Int32 xmlTextReaderReadAttributeValue (xmlTextReaderPtr,) libxml2
@c Int32 xmlTextReaderAttributeCount (xmlTextReaderPtr,) libxml2
@c Int32 xmlTextReaderDepth (xmlTextReaderPtr,) libxml2
@c Int32 xmlTextReaderHasAttributes (xmlTextReaderPtr,) libxml2
@c Int32 xmlTextReaderHasValue (xmlTextReaderPtr,) libxml2
@c Int32 xmlTextReaderIsDefault (xmlTextReaderPtr,) libxml2
@c Int32 xmlTextReaderIsEmptyElement (xmlTextReaderPtr,) libxml2
@c Int32 xmlTextReaderNodeType (xmlTextReaderPtr,) libxml2
@c Int32 xmlTextReaderQuoteChar (xmlTextReaderPtr,) libxml2
@c Int32 xmlTextReaderReadState (xmlTextReaderPtr,) libxml2
@c Int32 xmlTextReaderIsNamespaceDecl (xmlTextReaderPtr,) libxml2
@c Ptr{xmlChar} xmlTextReaderConstBaseUri (xmlTextReaderPtr,) libxml2
@c Ptr{xmlChar} xmlTextReaderConstLocalName (xmlTextReaderPtr,) libxml2
@c Ptr{xmlChar} xmlTextReaderConstName (xmlTextReaderPtr,) libxml2
@c Ptr{xmlChar} xmlTextReaderConstNamespaceUri (xmlTextReaderPtr,) libxml2
@c Ptr{xmlChar} xmlTextReaderConstPrefix (xmlTextReaderPtr,) libxml2
@c Ptr{xmlChar} xmlTextReaderConstXmlLang (xmlTextReaderPtr,) libxml2
@c Ptr{xmlChar} xmlTextReaderConstString (xmlTextReaderPtr, Ptr{xmlChar}) libxml2
@c Ptr{xmlChar} xmlTextReaderConstValue (xmlTextReaderPtr,) libxml2
@c Ptr{xmlChar} xmlTextReaderBaseUri (xmlTextReaderPtr,) libxml2
@c Ptr{xmlChar} xmlTextReaderLocalName (xmlTextReaderPtr,) libxml2
@c Ptr{xmlChar} xmlTextReaderName (xmlTextReaderPtr,) libxml2
@c Ptr{xmlChar} xmlTextReaderNamespaceUri (xmlTextReaderPtr,) libxml2
@c Ptr{xmlChar} xmlTextReaderPrefix (xmlTextReaderPtr,) libxml2
@c Ptr{xmlChar} xmlTextReaderXmlLang (xmlTextReaderPtr,) libxml2
@c Ptr{xmlChar} xmlTextReaderValue (xmlTextReaderPtr,) libxml2
@c Int32 xmlTextReaderClose (xmlTextReaderPtr,) libxml2
@c Ptr{xmlChar} xmlTextReaderGetAttributeNo (xmlTextReaderPtr, Int32) libxml2
@c Ptr{xmlChar} xmlTextReaderGetAttribute (xmlTextReaderPtr, Ptr{xmlChar}) libxml2
@c Ptr{xmlChar} xmlTextReaderGetAttributeNs (xmlTextReaderPtr, Ptr{xmlChar}, Ptr{xmlChar}) libxml2
@c xmlParserInputBufferPtr xmlTextReaderGetRemainder (xmlTextReaderPtr,) libxml2
@c Ptr{xmlChar} xmlTextReaderLookupNamespace (xmlTextReaderPtr, Ptr{xmlChar}) libxml2
@c Int32 xmlTextReaderMoveToAttributeNo (xmlTextReaderPtr, Int32) libxml2
@c Int32 xmlTextReaderMoveToAttribute (xmlTextReaderPtr, Ptr{xmlChar}) libxml2
@c Int32 xmlTextReaderMoveToAttributeNs (xmlTextReaderPtr, Ptr{xmlChar}, Ptr{xmlChar}) libxml2
@c Int32 xmlTextReaderMoveToFirstAttribute (xmlTextReaderPtr,) libxml2
@c Int32 xmlTextReaderMoveToNextAttribute (xmlTextReaderPtr,) libxml2
@c Int32 xmlTextReaderMoveToElement (xmlTextReaderPtr,) libxml2
@c Int32 xmlTextReaderNormalization (xmlTextReaderPtr,) libxml2
@c Ptr{xmlChar} xmlTextReaderConstEncoding (xmlTextReaderPtr,) libxml2
@c Int32 xmlTextReaderSetParserProp (xmlTextReaderPtr, Int32, Int32) libxml2
@c Int32 xmlTextReaderGetParserProp (xmlTextReaderPtr, Int32) libxml2
@c xmlNodePtr xmlTextReaderCurrentNode (xmlTextReaderPtr,) libxml2
@c Int32 xmlTextReaderGetParserLineNumber (xmlTextReaderPtr,) libxml2
@c Int32 xmlTextReaderGetParserColumnNumber (xmlTextReaderPtr,) libxml2
@c xmlNodePtr xmlTextReaderPreserve (xmlTextReaderPtr,) libxml2
@c Int32 xmlTextReaderPreservePattern (xmlTextReaderPtr, Ptr{xmlChar}, Ptr{Ptr{xmlChar}}) libxml2
@c xmlDocPtr xmlTextReaderCurrentDoc (xmlTextReaderPtr,) libxml2
@c xmlNodePtr xmlTextReaderExpand (xmlTextReaderPtr,) libxml2
@c Int32 xmlTextReaderNext (xmlTextReaderPtr,) libxml2
@c Int32 xmlTextReaderNextSibling (xmlTextReaderPtr,) libxml2
@c Int32 xmlTextReaderIsValid (xmlTextReaderPtr,) libxml2
@c Int32 xmlTextReaderRelaxNGValidate (xmlTextReaderPtr, Ptr{Uint8}) libxml2
@c Int32 xmlTextReaderRelaxNGSetSchema (xmlTextReaderPtr, xmlRelaxNGPtr) libxml2
@c Int32 xmlTextReaderSchemaValidate (xmlTextReaderPtr, Ptr{Uint8}) libxml2
@c Int32 xmlTextReaderSchemaValidateCtxt (xmlTextReaderPtr, xmlSchemaValidCtxtPtr, Int32) libxml2
@c Int32 xmlTextReaderSetSchema (xmlTextReaderPtr, xmlSchemaPtr) libxml2
@c Ptr{xmlChar} xmlTextReaderConstXmlVersion (xmlTextReaderPtr,) libxml2
@c Int32 xmlTextReaderStandalone (xmlTextReaderPtr,) libxml2
@c Int64 xmlTextReaderByteConsumed (xmlTextReaderPtr,) libxml2
@c xmlTextReaderPtr xmlReaderWalker (xmlDocPtr,) libxml2
@c xmlTextReaderPtr xmlReaderForDoc (Ptr{xmlChar}, Ptr{Uint8}, Ptr{Uint8}, Int32) libxml2
@c xmlTextReaderPtr xmlReaderForFile (Ptr{Uint8}, Ptr{Uint8}, Int32) libxml2
@c xmlTextReaderPtr xmlReaderForMemory (Ptr{Uint8}, Int32, Ptr{Uint8}, Ptr{Uint8}, Int32) libxml2
@c xmlTextReaderPtr xmlReaderForFd (Int32, Ptr{Uint8}, Ptr{Uint8}, Int32) libxml2
@c xmlTextReaderPtr xmlReaderForIO (xmlInputReadCallback, xmlInputCloseCallback, Ptr{None}, Ptr{Uint8}, Ptr{Uint8}, Int32) libxml2
@c Int32 xmlReaderNewWalker (xmlTextReaderPtr, xmlDocPtr) libxml2
@c Int32 xmlReaderNewDoc (xmlTextReaderPtr, Ptr{xmlChar}, Ptr{Uint8}, Ptr{Uint8}, Int32) libxml2
@c Int32 xmlReaderNewFile (xmlTextReaderPtr, Ptr{Uint8}, Ptr{Uint8}, Int32) libxml2
@c Int32 xmlReaderNewMemory (xmlTextReaderPtr, Ptr{Uint8}, Int32, Ptr{Uint8}, Ptr{Uint8}, Int32) libxml2
@c Int32 xmlReaderNewFd (xmlTextReaderPtr, Int32, Ptr{Uint8}, Ptr{Uint8}, Int32) libxml2
@c Int32 xmlReaderNewIO (xmlTextReaderPtr, xmlInputReadCallback, xmlInputCloseCallback, Ptr{None}, Ptr{Uint8}, Ptr{Uint8}, Int32) libxml2
@c Int32 xmlTextReaderLocatorLineNumber (xmlTextReaderLocatorPtr,) libxml2
@c Ptr{xmlChar} xmlTextReaderLocatorBaseURI (xmlTextReaderLocatorPtr,) libxml2
@c None xmlTextReaderSetErrorHandler (xmlTextReaderPtr, xmlTextReaderErrorFunc, Ptr{None}) libxml2
@c None xmlTextReaderSetStructuredErrorHandler (xmlTextReaderPtr, xmlStructuredErrorFunc, Ptr{None}) libxml2
@c None xmlTextReaderGetErrorHandler (xmlTextReaderPtr, Ptr{xmlTextReaderErrorFunc}, Ptr{Ptr{None}}) libxml2

