# Julia wrapper for header: /usr/include/libxml2/libxml/parser.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

@c None xmlInitParser () libxml2
@c None xmlCleanupParser () libxml2
@c Int32 xmlParserInputRead (xmlParserInputPtr, Int32) libxml2
@c Int32 xmlParserInputGrow (xmlParserInputPtr, Int32) libxml2
@c xmlDocPtr xmlParseDoc (Ptr{xmlChar},) libxml2
@c xmlDocPtr xmlParseFile (Ptr{Uint8},) libxml2
@c xmlDocPtr xmlParseMemory (Ptr{Uint8}, Int32) libxml2
@c Int32 xmlSubstituteEntitiesDefault (Int32,) libxml2
@c Int32 xmlKeepBlanksDefault (Int32,) libxml2
@c None xmlStopParser (xmlParserCtxtPtr,) libxml2
@c Int32 xmlPedanticParserDefault (Int32,) libxml2
@c Int32 xmlLineNumbersDefault (Int32,) libxml2
@c xmlDocPtr xmlRecoverDoc (Ptr{xmlChar},) libxml2
@c xmlDocPtr xmlRecoverMemory (Ptr{Uint8}, Int32) libxml2
@c xmlDocPtr xmlRecoverFile (Ptr{Uint8},) libxml2
@c Int32 xmlParseDocument (xmlParserCtxtPtr,) libxml2
@c Int32 xmlParseExtParsedEnt (xmlParserCtxtPtr,) libxml2
@c Int32 xmlSAXUserParseFile (xmlSAXHandlerPtr, Ptr{None}, Ptr{Uint8}) libxml2
@c Int32 xmlSAXUserParseMemory (xmlSAXHandlerPtr, Ptr{None}, Ptr{Uint8}, Int32) libxml2
@c xmlDocPtr xmlSAXParseDoc (xmlSAXHandlerPtr, Ptr{xmlChar}, Int32) libxml2
@c xmlDocPtr xmlSAXParseMemory (xmlSAXHandlerPtr, Ptr{Uint8}, Int32, Int32) libxml2
@c xmlDocPtr xmlSAXParseMemoryWithData (xmlSAXHandlerPtr, Ptr{Uint8}, Int32, Int32, Ptr{None}) libxml2
@c xmlDocPtr xmlSAXParseFile (xmlSAXHandlerPtr, Ptr{Uint8}, Int32) libxml2
@c xmlDocPtr xmlSAXParseFileWithData (xmlSAXHandlerPtr, Ptr{Uint8}, Int32, Ptr{None}) libxml2
@c xmlDocPtr xmlSAXParseEntity (xmlSAXHandlerPtr, Ptr{Uint8}) libxml2
@c xmlDocPtr xmlParseEntity (Ptr{Uint8},) libxml2
@c xmlDtdPtr xmlSAXParseDTD (xmlSAXHandlerPtr, Ptr{xmlChar}, Ptr{xmlChar}) libxml2
@c xmlDtdPtr xmlParseDTD (Ptr{xmlChar}, Ptr{xmlChar}) libxml2
@c xmlDtdPtr xmlIOParseDTD (xmlSAXHandlerPtr, xmlParserInputBufferPtr, xmlCharEncoding) libxml2
@c Int32 xmlParseBalancedChunkMemory (xmlDocPtr, xmlSAXHandlerPtr, Ptr{None}, Int32, Ptr{xmlChar}, Ptr{xmlNodePtr}) libxml2
@c xmlParserErrors xmlParseInNodeContext (xmlNodePtr, Ptr{Uint8}, Int32, Int32, Ptr{xmlNodePtr}) libxml2
@c Int32 xmlParseBalancedChunkMemoryRecover (xmlDocPtr, xmlSAXHandlerPtr, Ptr{None}, Int32, Ptr{xmlChar}, Ptr{xmlNodePtr}, Int32) libxml2
@c Int32 xmlParseExternalEntity (xmlDocPtr, xmlSAXHandlerPtr, Ptr{None}, Int32, Ptr{xmlChar}, Ptr{xmlChar}, Ptr{xmlNodePtr}) libxml2
@c Int32 xmlParseCtxtExternalEntity (xmlParserCtxtPtr, Ptr{xmlChar}, Ptr{xmlChar}, Ptr{xmlNodePtr}) libxml2
@c xmlParserCtxtPtr xmlNewParserCtxt () libxml2
@c Int32 xmlInitParserCtxt (xmlParserCtxtPtr,) libxml2
@c None xmlClearParserCtxt (xmlParserCtxtPtr,) libxml2
@c None xmlFreeParserCtxt (xmlParserCtxtPtr,) libxml2
@c None xmlSetupParserForBuffer (xmlParserCtxtPtr, Ptr{xmlChar}, Ptr{Uint8}) libxml2
@c xmlParserCtxtPtr xmlCreateDocParserCtxt (Ptr{xmlChar},) libxml2
@c Int32 xmlGetFeaturesList (Ptr{Int32}, Ptr{Ptr{Uint8}}) libxml2
@c Int32 xmlGetFeature (xmlParserCtxtPtr, Ptr{Uint8}, Ptr{None}) libxml2
@c Int32 xmlSetFeature (xmlParserCtxtPtr, Ptr{Uint8}, Ptr{None}) libxml2
@c xmlParserCtxtPtr xmlCreatePushParserCtxt (xmlSAXHandlerPtr, Ptr{None}, Ptr{Uint8}, Int32, Ptr{Uint8}) libxml2
@c Int32 xmlParseChunk (xmlParserCtxtPtr, Ptr{Uint8}, Int32, Int32) libxml2
@c xmlParserCtxtPtr xmlCreateIOParserCtxt (xmlSAXHandlerPtr, Ptr{None}, xmlInputReadCallback, xmlInputCloseCallback, Ptr{None}, xmlCharEncoding) libxml2
@c xmlParserInputPtr xmlNewIOInputStream (xmlParserCtxtPtr, xmlParserInputBufferPtr, xmlCharEncoding) libxml2
@c Ptr{xmlParserNodeInfo} xmlParserFindNodeInfo (xmlParserCtxtPtr, xmlNodePtr) libxml2
@c None xmlInitNodeInfoSeq (xmlParserNodeInfoSeqPtr,) libxml2
@c None xmlClearNodeInfoSeq (xmlParserNodeInfoSeqPtr,) libxml2
@c Uint64 xmlParserFindNodeInfoIndex (xmlParserNodeInfoSeqPtr, xmlNodePtr) libxml2
@c None xmlParserAddNodeInfo (xmlParserCtxtPtr, xmlParserNodeInfoPtr) libxml2
@c None xmlSetExternalEntityLoader (xmlExternalEntityLoader,) libxml2
@c xmlExternalEntityLoader xmlGetExternalEntityLoader () libxml2
@c xmlParserInputPtr xmlLoadExternalEntity (Ptr{Uint8}, Ptr{Uint8}, xmlParserCtxtPtr) libxml2
@c Int64 xmlByteConsumed (xmlParserCtxtPtr,) libxml2
@c None xmlCtxtReset (xmlParserCtxtPtr,) libxml2
@c Int32 xmlCtxtResetPush (xmlParserCtxtPtr, Ptr{Uint8}, Int32, Ptr{Uint8}, Ptr{Uint8}) libxml2
@c Int32 xmlCtxtUseOptions (xmlParserCtxtPtr, Int32) libxml2
@c xmlDocPtr xmlReadDoc (Ptr{xmlChar}, Ptr{Uint8}, Ptr{Uint8}, Int32) libxml2
@c xmlDocPtr xmlReadFile (Ptr{Uint8}, Ptr{Uint8}, Int32) libxml2
@c xmlDocPtr xmlReadMemory (Ptr{Uint8}, Int32, Ptr{Uint8}, Ptr{Uint8}, Int32) libxml2
@c xmlDocPtr xmlReadFd (Int32, Ptr{Uint8}, Ptr{Uint8}, Int32) libxml2
@c xmlDocPtr xmlReadIO (xmlInputReadCallback, xmlInputCloseCallback, Ptr{None}, Ptr{Uint8}, Ptr{Uint8}, Int32) libxml2
@c xmlDocPtr xmlCtxtReadDoc (xmlParserCtxtPtr, Ptr{xmlChar}, Ptr{Uint8}, Ptr{Uint8}, Int32) libxml2
@c xmlDocPtr xmlCtxtReadFile (xmlParserCtxtPtr, Ptr{Uint8}, Ptr{Uint8}, Int32) libxml2
@c xmlDocPtr xmlCtxtReadMemory (xmlParserCtxtPtr, Ptr{Uint8}, Int32, Ptr{Uint8}, Ptr{Uint8}, Int32) libxml2
@c xmlDocPtr xmlCtxtReadFd (xmlParserCtxtPtr, Int32, Ptr{Uint8}, Ptr{Uint8}, Int32) libxml2
@c xmlDocPtr xmlCtxtReadIO (xmlParserCtxtPtr, xmlInputReadCallback, xmlInputCloseCallback, Ptr{None}, Ptr{Uint8}, Ptr{Uint8}, Int32) libxml2
@c Int32 xmlHasFeature (xmlFeature,) libxml2

