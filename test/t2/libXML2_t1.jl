# Julia wrapper for header: /usr/include/libxml2/libxml/c14n.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


# Julia wrapper for header: /usr/include/libxml2/libxml/catalog.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

@c xmlCatalogPtr xmlNewCatalog ("Int32",) libxml2
@c xmlCatalogPtr xmlLoadACatalog ("Ptr{Uint8}",) libxml2
@c xmlCatalogPtr xmlLoadSGMLSuperCatalog ("Ptr{Uint8}",) libxml2
@c Int32 xmlConvertSGMLCatalog ("xmlCatalogPtr",) libxml2
@c Int32 xmlACatalogAdd ("xmlCatalogPtr","Ptr{xmlChar}","Ptr{xmlChar}","Ptr{xmlChar}") libxml2
@c Int32 xmlACatalogRemove ("xmlCatalogPtr","Ptr{xmlChar}") libxml2
@c Ptr{xmlChar} xmlACatalogResolve ("xmlCatalogPtr","Ptr{xmlChar}","Ptr{xmlChar}") libxml2
@c Ptr{xmlChar} xmlACatalogResolveSystem ("xmlCatalogPtr","Ptr{xmlChar}") libxml2
@c Ptr{xmlChar} xmlACatalogResolvePublic ("xmlCatalogPtr","Ptr{xmlChar}") libxml2
@c Ptr{xmlChar} xmlACatalogResolveURI ("xmlCatalogPtr","Ptr{xmlChar}") libxml2
@c None xmlACatalogDump ("xmlCatalogPtr","Ptr{FILE}") libxml2
@c None xmlFreeCatalog ("xmlCatalogPtr",) libxml2
@c Int32 xmlCatalogIsEmpty ("xmlCatalogPtr",) libxml2
@c None xmlInitializeCatalog () libxml2
@c Int32 xmlLoadCatalog ("Ptr{Uint8}",) libxml2
@c None xmlLoadCatalogs ("Ptr{Uint8}",) libxml2
@c None xmlCatalogCleanup () libxml2
@c None xmlCatalogDump ("Ptr{FILE}",) libxml2
@c Ptr{xmlChar} xmlCatalogResolve ("Ptr{xmlChar}","Ptr{xmlChar}") libxml2
@c Ptr{xmlChar} xmlCatalogResolveSystem ("Ptr{xmlChar}",) libxml2
@c Ptr{xmlChar} xmlCatalogResolvePublic ("Ptr{xmlChar}",) libxml2
@c Ptr{xmlChar} xmlCatalogResolveURI ("Ptr{xmlChar}",) libxml2
@c Int32 xmlCatalogAdd ("Ptr{xmlChar}","Ptr{xmlChar}","Ptr{xmlChar}") libxml2
@c Int32 xmlCatalogRemove ("Ptr{xmlChar}",) libxml2
@c xmlDocPtr xmlParseCatalogFile ("Ptr{Uint8}",) libxml2
@c Int32 xmlCatalogConvert () libxml2
@c None xmlCatalogFreeLocal ("Ptr{None}",) libxml2
@c Ptr{None} xmlCatalogAddLocal ("Ptr{None}","Ptr{xmlChar}") libxml2
@c Ptr{xmlChar} xmlCatalogLocalResolve ("Ptr{None}","Ptr{xmlChar}","Ptr{xmlChar}") libxml2
@c Ptr{xmlChar} xmlCatalogLocalResolveURI ("Ptr{None}","Ptr{xmlChar}") libxml2
@c Int32 xmlCatalogSetDebug ("Int32",) libxml2
@c xmlCatalogPrefer xmlCatalogSetDefaultPrefer ("xmlCatalogPrefer",) libxml2
@c None xmlCatalogSetDefaults ("xmlCatalogAllow",) libxml2
@c xmlCatalogAllow xmlCatalogGetDefaults () libxml2
@c Ptr{xmlChar} xmlCatalogGetSystem ("Ptr{xmlChar}",) libxml2
@c Ptr{xmlChar} xmlCatalogGetPublic ("Ptr{xmlChar}",) libxml2

# Julia wrapper for header: /usr/include/libxml2/libxml/chvalid.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

@c Int32 xmlCharInRange ("Uint32","Ptr{xmlChRangeGroup}") libxml2
@c Int32 xmlIsBaseChar ("Uint32",) libxml2
@c Int32 xmlIsBlank ("Uint32",) libxml2
@c Int32 xmlIsChar ("Uint32",) libxml2
@c Int32 xmlIsCombining ("Uint32",) libxml2
@c Int32 xmlIsDigit ("Uint32",) libxml2
@c Int32 xmlIsExtender ("Uint32",) libxml2
@c Int32 xmlIsIdeographic ("Uint32",) libxml2
@c Int32 xmlIsPubidChar ("Uint32",) libxml2

# Julia wrapper for header: /usr/include/libxml2/libxml/debugXML.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

@c None xmlDebugDumpString ("Ptr{FILE}","Ptr{xmlChar}") libxml2
@c None xmlDebugDumpAttr ("Ptr{FILE}","xmlAttrPtr","Int32") libxml2
@c None xmlDebugDumpAttrList ("Ptr{FILE}","xmlAttrPtr","Int32") libxml2
@c None xmlDebugDumpOneNode ("Ptr{FILE}","xmlNodePtr","Int32") libxml2
@c None xmlDebugDumpNode ("Ptr{FILE}","xmlNodePtr","Int32") libxml2
@c None xmlDebugDumpNodeList ("Ptr{FILE}","xmlNodePtr","Int32") libxml2
@c None xmlDebugDumpDocumentHead ("Ptr{FILE}","xmlDocPtr") libxml2
@c None xmlDebugDumpDocument ("Ptr{FILE}","xmlDocPtr") libxml2
@c None xmlDebugDumpDTD ("Ptr{FILE}","xmlDtdPtr") libxml2
@c None xmlDebugDumpEntities ("Ptr{FILE}","xmlDocPtr") libxml2
@c Int32 xmlDebugCheckDocument ("Ptr{FILE}","xmlDocPtr") libxml2
@c None xmlLsOneNode ("Ptr{FILE}","xmlNodePtr") libxml2
@c Int32 xmlLsCountNode ("xmlNodePtr",) libxml2
@c Ptr{Uint8} xmlBoolToText ("Int32",) libxml2
@c None xmlShellPrintXPathError ("Int32","Ptr{Uint8}") libxml2
@c None xmlShellPrintXPathResult ("xmlXPathObjectPtr",) libxml2
@c Int32 xmlShellList ("xmlShellCtxtPtr","Ptr{Uint8}","xmlNodePtr","xmlNodePtr") libxml2
@c Int32 xmlShellBase ("xmlShellCtxtPtr","Ptr{Uint8}","xmlNodePtr","xmlNodePtr") libxml2
@c Int32 xmlShellDir ("xmlShellCtxtPtr","Ptr{Uint8}","xmlNodePtr","xmlNodePtr") libxml2
@c Int32 xmlShellLoad ("xmlShellCtxtPtr","Ptr{Uint8}","xmlNodePtr","xmlNodePtr") libxml2
@c None xmlShellPrintNode ("xmlNodePtr",) libxml2
@c Int32 xmlShellCat ("xmlShellCtxtPtr","Ptr{Uint8}","xmlNodePtr","xmlNodePtr") libxml2
@c Int32 xmlShellWrite ("xmlShellCtxtPtr","Ptr{Uint8}","xmlNodePtr","xmlNodePtr") libxml2
@c Int32 xmlShellSave ("xmlShellCtxtPtr","Ptr{Uint8}","xmlNodePtr","xmlNodePtr") libxml2
@c Int32 xmlShellValidate ("xmlShellCtxtPtr","Ptr{Uint8}","xmlNodePtr","xmlNodePtr") libxml2
@c Int32 xmlShellDu ("xmlShellCtxtPtr","Ptr{Uint8}","xmlNodePtr","xmlNodePtr") libxml2
@c Int32 xmlShellPwd ("xmlShellCtxtPtr","Ptr{Uint8}","xmlNodePtr","xmlNodePtr") libxml2
@c None xmlShell ("xmlDocPtr","Ptr{Uint8}","xmlShellReadlineFunc","Ptr{FILE}") libxml2

# Julia wrapper for header: /usr/include/libxml2/libxml/dict.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

@c xmlDictPtr xmlDictCreate () libxml2
@c xmlDictPtr xmlDictCreateSub ("xmlDictPtr",) libxml2
@c Int32 xmlDictReference ("xmlDictPtr",) libxml2
@c None xmlDictFree ("xmlDictPtr",) libxml2
@c Ptr{xmlChar} xmlDictLookup ("xmlDictPtr","Ptr{xmlChar}","Int32") libxml2
@c Ptr{xmlChar} xmlDictExists ("xmlDictPtr","Ptr{xmlChar}","Int32") libxml2
@c Ptr{xmlChar} xmlDictQLookup ("xmlDictPtr","Ptr{xmlChar}","Ptr{xmlChar}") libxml2
@c Int32 xmlDictOwns ("xmlDictPtr","Ptr{xmlChar}") libxml2
@c Int32 xmlDictSize ("xmlDictPtr",) libxml2
@c None xmlDictCleanup () libxml2

# Julia wrapper for header: /usr/include/libxml2/libxml/DOCBparser.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

@c Int32 docbEncodeEntities ("Ptr{Uint8}","Ptr{Int32}","Ptr{Uint8}","Ptr{Int32}","Int32") libxml2
@c docbDocPtr docbSAXParseDoc ("Ptr{xmlChar}","Ptr{Uint8}","docbSAXHandlerPtr","Ptr{None}") libxml2
@c docbDocPtr docbParseDoc ("Ptr{xmlChar}","Ptr{Uint8}") libxml2
@c docbDocPtr docbSAXParseFile ("Ptr{Uint8}","Ptr{Uint8}","docbSAXHandlerPtr","Ptr{None}") libxml2
@c docbDocPtr docbParseFile ("Ptr{Uint8}","Ptr{Uint8}") libxml2
@c None docbFreeParserCtxt ("docbParserCtxtPtr",) libxml2
@c docbParserCtxtPtr docbCreatePushParserCtxt ("docbSAXHandlerPtr","Ptr{None}","Ptr{Uint8}","Int32","Ptr{Uint8}","xmlCharEncoding") libxml2
@c Int32 docbParseChunk ("docbParserCtxtPtr","Ptr{Uint8}","Int32","Int32") libxml2
@c docbParserCtxtPtr docbCreateFileParserCtxt ("Ptr{Uint8}","Ptr{Uint8}") libxml2
@c Int32 docbParseDocument ("docbParserCtxtPtr",) libxml2

# Julia wrapper for header: /usr/include/libxml2/libxml/encoding.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

@c None xmlInitCharEncodingHandlers () libxml2
@c None xmlCleanupCharEncodingHandlers () libxml2
@c None xmlRegisterCharEncodingHandler ("xmlCharEncodingHandlerPtr",) libxml2
@c xmlCharEncodingHandlerPtr xmlGetCharEncodingHandler ("xmlCharEncoding",) libxml2
@c xmlCharEncodingHandlerPtr xmlFindCharEncodingHandler ("Ptr{Uint8}",) libxml2
@c xmlCharEncodingHandlerPtr xmlNewCharEncodingHandler ("Ptr{Uint8}","xmlCharEncodingInputFunc","xmlCharEncodingOutputFunc") libxml2
@c Int32 xmlAddEncodingAlias ("Ptr{Uint8}","Ptr{Uint8}") libxml2
@c Int32 xmlDelEncodingAlias ("Ptr{Uint8}",) libxml2
@c Ptr{Uint8} xmlGetEncodingAlias ("Ptr{Uint8}",) libxml2
@c None xmlCleanupEncodingAliases () libxml2
@c xmlCharEncoding xmlParseCharEncoding ("Ptr{Uint8}",) libxml2
@c Ptr{Uint8} xmlGetCharEncodingName ("xmlCharEncoding",) libxml2
@c xmlCharEncoding xmlDetectCharEncoding ("Ptr{Uint8}","Int32") libxml2
@c Int32 xmlCharEncOutFunc ("Ptr{xmlCharEncodingHandler}","xmlBufferPtr","xmlBufferPtr") libxml2
@c Int32 xmlCharEncInFunc ("Ptr{xmlCharEncodingHandler}","xmlBufferPtr","xmlBufferPtr") libxml2
@c Int32 xmlCharEncFirstLine ("Ptr{xmlCharEncodingHandler}","xmlBufferPtr","xmlBufferPtr") libxml2
@c Int32 xmlCharEncCloseFunc ("Ptr{xmlCharEncodingHandler}",) libxml2
@c Int32 UTF8Toisolat1 ("Ptr{Uint8}","Ptr{Int32}","Ptr{Uint8}","Ptr{Int32}") libxml2
@c Int32 isolat1ToUTF8 ("Ptr{Uint8}","Ptr{Int32}","Ptr{Uint8}","Ptr{Int32}") libxml2

# Julia wrapper for header: /usr/include/libxml2/libxml/entities.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

@c None xmlInitializePredefinedEntities () libxml2
@c xmlEntityPtr xmlNewEntity ("xmlDocPtr","Ptr{xmlChar}","Int32","Ptr{xmlChar}","Ptr{xmlChar}","Ptr{xmlChar}") libxml2
@c xmlEntityPtr xmlAddDocEntity ("xmlDocPtr","Ptr{xmlChar}","Int32","Ptr{xmlChar}","Ptr{xmlChar}","Ptr{xmlChar}") libxml2
@c xmlEntityPtr xmlAddDtdEntity ("xmlDocPtr","Ptr{xmlChar}","Int32","Ptr{xmlChar}","Ptr{xmlChar}","Ptr{xmlChar}") libxml2
@c xmlEntityPtr xmlGetPredefinedEntity ("Ptr{xmlChar}",) libxml2
@c xmlEntityPtr xmlGetDocEntity ("xmlDocPtr","Ptr{xmlChar}") libxml2
@c xmlEntityPtr xmlGetDtdEntity ("xmlDocPtr","Ptr{xmlChar}") libxml2
@c xmlEntityPtr xmlGetParameterEntity ("xmlDocPtr","Ptr{xmlChar}") libxml2
@c Ptr{xmlChar} xmlEncodeEntities ("xmlDocPtr","Ptr{xmlChar}") libxml2
@c Ptr{xmlChar} xmlEncodeEntitiesReentrant ("xmlDocPtr","Ptr{xmlChar}") libxml2
@c Ptr{xmlChar} xmlEncodeSpecialChars ("xmlDocPtr","Ptr{xmlChar}") libxml2
@c xmlEntitiesTablePtr xmlCreateEntitiesTable () libxml2
@c xmlEntitiesTablePtr xmlCopyEntitiesTable ("xmlEntitiesTablePtr",) libxml2
@c None xmlFreeEntitiesTable ("xmlEntitiesTablePtr",) libxml2
@c None xmlDumpEntitiesTable ("xmlBufferPtr","xmlEntitiesTablePtr") libxml2
@c None xmlDumpEntityDecl ("xmlBufferPtr","xmlEntityPtr") libxml2
@c None xmlCleanupPredefinedEntities () libxml2

# Julia wrapper for header: /usr/include/libxml2/libxml/globals.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

@c None xmlInitGlobals () libxml2
@c None xmlCleanupGlobals () libxml2
@c xmlParserInputBufferCreateFilenameFunc xmlParserInputBufferCreateFilenameDefault ("xmlParserInputBufferCreateFilenameFunc",) libxml2
@c xmlOutputBufferCreateFilenameFunc xmlOutputBufferCreateFilenameDefault ("xmlOutputBufferCreateFilenameFunc",) libxml2
@c None xmlInitializeGlobalState ("xmlGlobalStatePtr",) libxml2
@c None xmlThrDefSetGenericErrorFunc ("Ptr{None}","xmlGenericErrorFunc") libxml2
@c None xmlThrDefSetStructuredErrorFunc ("Ptr{None}","xmlStructuredErrorFunc") libxml2
@c xmlRegisterNodeFunc xmlRegisterNodeDefault ("xmlRegisterNodeFunc",) libxml2
@c xmlRegisterNodeFunc xmlThrDefRegisterNodeDefault ("xmlRegisterNodeFunc",) libxml2
@c xmlDeregisterNodeFunc xmlDeregisterNodeDefault ("xmlDeregisterNodeFunc",) libxml2
@c xmlDeregisterNodeFunc xmlThrDefDeregisterNodeDefault ("xmlDeregisterNodeFunc",) libxml2
@c xmlOutputBufferCreateFilenameFunc xmlThrDefOutputBufferCreateFilenameDefault ("xmlOutputBufferCreateFilenameFunc",) libxml2
@c xmlParserInputBufferCreateFilenameFunc xmlThrDefParserInputBufferCreateFilenameDefault ("xmlParserInputBufferCreateFilenameFunc",) libxml2
@c Ptr{xmlSAXHandlerV1} __docbDefaultSAXHandler () libxml2
@c Ptr{xmlSAXHandlerV1} __htmlDefaultSAXHandler () libxml2
@c Ptr{xmlError} __xmlLastError () libxml2
@c Ptr{Int32} __oldXMLWDcompatibility () libxml2
@c Ptr{xmlBufferAllocationScheme} __xmlBufferAllocScheme () libxml2
@c xmlBufferAllocationScheme xmlThrDefBufferAllocScheme ("xmlBufferAllocationScheme",) libxml2
@c Ptr{Int32} __xmlDefaultBufferSize () libxml2
@c Int32 xmlThrDefDefaultBufferSize ("Int32",) libxml2
@c Ptr{xmlSAXHandlerV1} __xmlDefaultSAXHandler () libxml2
@c Ptr{xmlSAXLocator} __xmlDefaultSAXLocator () libxml2
@c Ptr{Int32} __xmlDoValidityCheckingDefaultValue () libxml2
@c Int32 xmlThrDefDoValidityCheckingDefaultValue ("Int32",) libxml2
@c Ptr{xmlGenericErrorFunc} __xmlGenericError () libxml2
@c Ptr{xmlStructuredErrorFunc} __xmlStructuredError () libxml2
@c Ptr{Ptr{None}} __xmlGenericErrorContext () libxml2
@c Ptr{Ptr{None}} __xmlStructuredErrorContext () libxml2
@c Ptr{Int32} __xmlGetWarningsDefaultValue () libxml2
@c Int32 xmlThrDefGetWarningsDefaultValue ("Int32",) libxml2
@c Ptr{Int32} __xmlIndentTreeOutput () libxml2
@c Int32 xmlThrDefIndentTreeOutput ("Int32",) libxml2
@c Ptr{Ptr{Uint8}} __xmlTreeIndentString () libxml2
@c Ptr{Uint8} xmlThrDefTreeIndentString ("Ptr{Uint8}",) libxml2
@c Ptr{Int32} __xmlKeepBlanksDefaultValue () libxml2
@c Int32 xmlThrDefKeepBlanksDefaultValue ("Int32",) libxml2
@c Ptr{Int32} __xmlLineNumbersDefaultValue () libxml2
@c Int32 xmlThrDefLineNumbersDefaultValue ("Int32",) libxml2
@c Ptr{Int32} __xmlLoadExtDtdDefaultValue () libxml2
@c Int32 xmlThrDefLoadExtDtdDefaultValue ("Int32",) libxml2
@c Ptr{Int32} __xmlParserDebugEntities () libxml2
@c Int32 xmlThrDefParserDebugEntities ("Int32",) libxml2
@c Ptr{Ptr{Uint8}} __xmlParserVersion () libxml2
@c Ptr{Int32} __xmlPedanticParserDefaultValue () libxml2
@c Int32 xmlThrDefPedanticParserDefaultValue ("Int32",) libxml2
@c Ptr{Int32} __xmlSaveNoEmptyTags () libxml2
@c Int32 xmlThrDefSaveNoEmptyTags ("Int32",) libxml2
@c Ptr{Int32} __xmlSubstituteEntitiesDefaultValue () libxml2
@c Int32 xmlThrDefSubstituteEntitiesDefaultValue ("Int32",) libxml2
@c Ptr{xmlRegisterNodeFunc} __xmlRegisterNodeDefaultValue () libxml2
@c Ptr{xmlDeregisterNodeFunc} __xmlDeregisterNodeDefaultValue () libxml2
@c Ptr{xmlParserInputBufferCreateFilenameFunc} __xmlParserInputBufferCreateFilenameValue () libxml2
@c Ptr{xmlOutputBufferCreateFilenameFunc} __xmlOutputBufferCreateFilenameValue () libxml2

# Julia wrapper for header: /usr/include/libxml2/libxml/hash.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

@c xmlHashTablePtr xmlHashCreate ("Int32",) libxml2
@c xmlHashTablePtr xmlHashCreateDict ("Int32","xmlDictPtr") libxml2
@c None xmlHashFree ("xmlHashTablePtr","xmlHashDeallocator") libxml2
@c Int32 xmlHashAddEntry ("xmlHashTablePtr","Ptr{xmlChar}","Ptr{None}") libxml2
@c Int32 xmlHashUpdateEntry ("xmlHashTablePtr","Ptr{xmlChar}","Ptr{None}","xmlHashDeallocator") libxml2
@c Int32 xmlHashAddEntry2 ("xmlHashTablePtr","Ptr{xmlChar}","Ptr{xmlChar}","Ptr{None}") libxml2
@c Int32 xmlHashUpdateEntry2 ("xmlHashTablePtr","Ptr{xmlChar}","Ptr{xmlChar}","Ptr{None}","xmlHashDeallocator") libxml2
@c Int32 xmlHashAddEntry3 ("xmlHashTablePtr","Ptr{xmlChar}","Ptr{xmlChar}","Ptr{xmlChar}","Ptr{None}") libxml2
@c Int32 xmlHashUpdateEntry3 ("xmlHashTablePtr","Ptr{xmlChar}","Ptr{xmlChar}","Ptr{xmlChar}","Ptr{None}","xmlHashDeallocator") libxml2
@c Int32 xmlHashRemoveEntry ("xmlHashTablePtr","Ptr{xmlChar}","xmlHashDeallocator") libxml2
@c Int32 xmlHashRemoveEntry2 ("xmlHashTablePtr","Ptr{xmlChar}","Ptr{xmlChar}","xmlHashDeallocator") libxml2
@c Int32 xmlHashRemoveEntry3 ("xmlHashTablePtr","Ptr{xmlChar}","Ptr{xmlChar}","Ptr{xmlChar}","xmlHashDeallocator") libxml2
@c Ptr{None} xmlHashLookup ("xmlHashTablePtr","Ptr{xmlChar}") libxml2
@c Ptr{None} xmlHashLookup2 ("xmlHashTablePtr","Ptr{xmlChar}","Ptr{xmlChar}") libxml2
@c Ptr{None} xmlHashLookup3 ("xmlHashTablePtr","Ptr{xmlChar}","Ptr{xmlChar}","Ptr{xmlChar}") libxml2
@c Ptr{None} xmlHashQLookup ("xmlHashTablePtr","Ptr{xmlChar}","Ptr{xmlChar}") libxml2
@c Ptr{None} xmlHashQLookup2 ("xmlHashTablePtr","Ptr{xmlChar}","Ptr{xmlChar}","Ptr{xmlChar}","Ptr{xmlChar}") libxml2
@c Ptr{None} xmlHashQLookup3 ("xmlHashTablePtr","Ptr{xmlChar}","Ptr{xmlChar}","Ptr{xmlChar}","Ptr{xmlChar}","Ptr{xmlChar}","Ptr{xmlChar}") libxml2
@c xmlHashTablePtr xmlHashCopy ("xmlHashTablePtr","xmlHashCopier") libxml2
@c Int32 xmlHashSize ("xmlHashTablePtr",) libxml2
@c None xmlHashScan ("xmlHashTablePtr","xmlHashScanner","Ptr{None}") libxml2
@c None xmlHashScan3 ("xmlHashTablePtr","Ptr{xmlChar}","Ptr{xmlChar}","Ptr{xmlChar}","xmlHashScanner","Ptr{None}") libxml2
@c None xmlHashScanFull ("xmlHashTablePtr","xmlHashScannerFull","Ptr{None}") libxml2
@c None xmlHashScanFull3 ("xmlHashTablePtr","Ptr{xmlChar}","Ptr{xmlChar}","Ptr{xmlChar}","xmlHashScannerFull","Ptr{None}") libxml2

# Julia wrapper for header: /usr/include/libxml2/libxml/HTMLparser.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

@c Ptr{htmlElemDesc} htmlTagLookup ("Ptr{xmlChar}",) libxml2
@c Ptr{htmlEntityDesc} htmlEntityLookup ("Ptr{xmlChar}",) libxml2
@c Ptr{htmlEntityDesc} htmlEntityValueLookup ("Uint32",) libxml2
@c Int32 htmlIsAutoClosed ("htmlDocPtr","htmlNodePtr") libxml2
@c Int32 htmlAutoCloseTag ("htmlDocPtr","Ptr{xmlChar}","htmlNodePtr") libxml2
@c Ptr{htmlEntityDesc} htmlParseEntityRef ("htmlParserCtxtPtr","Ptr{Ptr{xmlChar}}") libxml2
@c Int32 htmlParseCharRef ("htmlParserCtxtPtr",) libxml2
@c None htmlParseElement ("htmlParserCtxtPtr",) libxml2
@c htmlParserCtxtPtr htmlNewParserCtxt () libxml2
@c htmlParserCtxtPtr htmlCreateMemoryParserCtxt ("Ptr{Uint8}","Int32") libxml2
@c Int32 htmlParseDocument ("htmlParserCtxtPtr",) libxml2
@c htmlDocPtr htmlSAXParseDoc ("Ptr{xmlChar}","Ptr{Uint8}","htmlSAXHandlerPtr","Ptr{None}") libxml2
@c htmlDocPtr htmlParseDoc ("Ptr{xmlChar}","Ptr{Uint8}") libxml2
@c htmlDocPtr htmlSAXParseFile ("Ptr{Uint8}","Ptr{Uint8}","htmlSAXHandlerPtr","Ptr{None}") libxml2
@c htmlDocPtr htmlParseFile ("Ptr{Uint8}","Ptr{Uint8}") libxml2
@c Int32 UTF8ToHtml ("Ptr{Uint8}","Ptr{Int32}","Ptr{Uint8}","Ptr{Int32}") libxml2
@c Int32 htmlEncodeEntities ("Ptr{Uint8}","Ptr{Int32}","Ptr{Uint8}","Ptr{Int32}","Int32") libxml2
@c Int32 htmlIsScriptAttribute ("Ptr{xmlChar}",) libxml2
@c Int32 htmlHandleOmittedElem ("Int32",) libxml2
@c htmlParserCtxtPtr htmlCreatePushParserCtxt ("htmlSAXHandlerPtr","Ptr{None}","Ptr{Uint8}","Int32","Ptr{Uint8}","xmlCharEncoding") libxml2
@c Int32 htmlParseChunk ("htmlParserCtxtPtr","Ptr{Uint8}","Int32","Int32") libxml2
@c None htmlFreeParserCtxt ("htmlParserCtxtPtr",) libxml2
@c None htmlCtxtReset ("htmlParserCtxtPtr",) libxml2
@c Int32 htmlCtxtUseOptions ("htmlParserCtxtPtr","Int32") libxml2
@c htmlDocPtr htmlReadDoc ("Ptr{xmlChar}","Ptr{Uint8}","Ptr{Uint8}","Int32") libxml2
@c htmlDocPtr htmlReadFile ("Ptr{Uint8}","Ptr{Uint8}","Int32") libxml2
@c htmlDocPtr htmlReadMemory ("Ptr{Uint8}","Int32","Ptr{Uint8}","Ptr{Uint8}","Int32") libxml2
@c htmlDocPtr htmlReadFd ("Int32","Ptr{Uint8}","Ptr{Uint8}","Int32") libxml2
@c htmlDocPtr htmlReadIO ("xmlInputReadCallback","xmlInputCloseCallback","Ptr{None}","Ptr{Uint8}","Ptr{Uint8}","Int32") libxml2
@c htmlDocPtr htmlCtxtReadDoc ("xmlParserCtxtPtr","Ptr{xmlChar}","Ptr{Uint8}","Ptr{Uint8}","Int32") libxml2
@c htmlDocPtr htmlCtxtReadFile ("xmlParserCtxtPtr","Ptr{Uint8}","Ptr{Uint8}","Int32") libxml2
@c htmlDocPtr htmlCtxtReadMemory ("xmlParserCtxtPtr","Ptr{Uint8}","Int32","Ptr{Uint8}","Ptr{Uint8}","Int32") libxml2
@c htmlDocPtr htmlCtxtReadFd ("xmlParserCtxtPtr","Int32","Ptr{Uint8}","Ptr{Uint8}","Int32") libxml2
@c htmlDocPtr htmlCtxtReadIO ("xmlParserCtxtPtr","xmlInputReadCallback","xmlInputCloseCallback","Ptr{None}","Ptr{Uint8}","Ptr{Uint8}","Int32") libxml2
@c htmlStatus htmlAttrAllowed ("Ptr{htmlElemDesc}","Ptr{xmlChar}","Int32") libxml2
@c Int32 htmlElementAllowedHere ("Ptr{htmlElemDesc}","Ptr{xmlChar}") libxml2
@c htmlStatus htmlElementStatusHere ("Ptr{htmlElemDesc}","Ptr{htmlElemDesc}") libxml2
@c htmlStatus htmlNodeStatus ("htmlNodePtr","Int32") libxml2

# Julia wrapper for header: /usr/include/libxml2/libxml/HTMLtree.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

@c htmlDocPtr htmlNewDoc ("Ptr{xmlChar}","Ptr{xmlChar}") libxml2
@c htmlDocPtr htmlNewDocNoDtD ("Ptr{xmlChar}","Ptr{xmlChar}") libxml2
@c Ptr{xmlChar} htmlGetMetaEncoding ("htmlDocPtr",) libxml2
@c Int32 htmlSetMetaEncoding ("htmlDocPtr","Ptr{xmlChar}") libxml2
@c None htmlDocDumpMemory ("xmlDocPtr","Ptr{Ptr{xmlChar}}","Ptr{Int32}") libxml2
@c None htmlDocDumpMemoryFormat ("xmlDocPtr","Ptr{Ptr{xmlChar}}","Ptr{Int32}","Int32") libxml2
@c Int32 htmlDocDump ("Ptr{FILE}","xmlDocPtr") libxml2
@c Int32 htmlSaveFile ("Ptr{Uint8}","xmlDocPtr") libxml2
@c Int32 htmlNodeDump ("xmlBufferPtr","xmlDocPtr","xmlNodePtr") libxml2
@c None htmlNodeDumpFile ("Ptr{FILE}","xmlDocPtr","xmlNodePtr") libxml2
@c Int32 htmlNodeDumpFileFormat ("Ptr{FILE}","xmlDocPtr","xmlNodePtr","Ptr{Uint8}","Int32") libxml2
@c Int32 htmlSaveFileEnc ("Ptr{Uint8}","xmlDocPtr","Ptr{Uint8}") libxml2
@c Int32 htmlSaveFileFormat ("Ptr{Uint8}","xmlDocPtr","Ptr{Uint8}","Int32") libxml2
@c None htmlNodeDumpFormatOutput ("xmlOutputBufferPtr","xmlDocPtr","xmlNodePtr","Ptr{Uint8}","Int32") libxml2
@c None htmlDocContentDumpOutput ("xmlOutputBufferPtr","xmlDocPtr","Ptr{Uint8}") libxml2
@c None htmlDocContentDumpFormatOutput ("xmlOutputBufferPtr","xmlDocPtr","Ptr{Uint8}","Int32") libxml2
@c None htmlNodeDumpOutput ("xmlOutputBufferPtr","xmlDocPtr","xmlNodePtr","Ptr{Uint8}") libxml2
@c Int32 htmlIsBooleanAttr ("Ptr{xmlChar}",) libxml2

# Julia wrapper for header: /usr/include/libxml2/libxml/list.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

@c xmlListPtr xmlListCreate ("xmlListDeallocator","xmlListDataCompare") libxml2
@c None xmlListDelete ("xmlListPtr",) libxml2
@c Ptr{None} xmlListSearch ("xmlListPtr","Ptr{None}") libxml2
@c Ptr{None} xmlListReverseSearch ("xmlListPtr","Ptr{None}") libxml2
@c Int32 xmlListInsert ("xmlListPtr","Ptr{None}") libxml2
@c Int32 xmlListAppend ("xmlListPtr","Ptr{None}") libxml2
@c Int32 xmlListRemoveFirst ("xmlListPtr","Ptr{None}") libxml2
@c Int32 xmlListRemoveLast ("xmlListPtr","Ptr{None}") libxml2
@c Int32 xmlListRemoveAll ("xmlListPtr","Ptr{None}") libxml2
@c None xmlListClear ("xmlListPtr",) libxml2
@c Int32 xmlListEmpty ("xmlListPtr",) libxml2
@c xmlLinkPtr xmlListFront ("xmlListPtr",) libxml2
@c xmlLinkPtr xmlListEnd ("xmlListPtr",) libxml2
@c Int32 xmlListSize ("xmlListPtr",) libxml2
@c None xmlListPopFront ("xmlListPtr",) libxml2
@c None xmlListPopBack ("xmlListPtr",) libxml2
@c Int32 xmlListPushFront ("xmlListPtr","Ptr{None}") libxml2
@c Int32 xmlListPushBack ("xmlListPtr","Ptr{None}") libxml2
@c None xmlListReverse ("xmlListPtr",) libxml2
@c None xmlListSort ("xmlListPtr",) libxml2
@c None xmlListWalk ("xmlListPtr","xmlListWalker","Ptr{None}") libxml2
@c None xmlListReverseWalk ("xmlListPtr","xmlListWalker","Ptr{None}") libxml2
@c None xmlListMerge ("xmlListPtr","xmlListPtr") libxml2
@c xmlListPtr xmlListDup ("xmlListPtr",) libxml2
@c Int32 xmlListCopy ("xmlListPtr","xmlListPtr") libxml2
@c Ptr{None} xmlLinkGetData ("xmlLinkPtr",) libxml2

# Julia wrapper for header: /usr/include/libxml2/libxml/nanoftp.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

@c None xmlNanoFTPInit () libxml2
@c None xmlNanoFTPCleanup () libxml2
@c Ptr{None} xmlNanoFTPNewCtxt ("Ptr{Uint8}",) libxml2
@c None xmlNanoFTPFreeCtxt ("Ptr{None}",) libxml2
@c Ptr{None} xmlNanoFTPConnectTo ("Ptr{Uint8}","Int32") libxml2
@c Ptr{None} xmlNanoFTPOpen ("Ptr{Uint8}",) libxml2
@c Int32 xmlNanoFTPConnect ("Ptr{None}",) libxml2
@c Int32 xmlNanoFTPClose ("Ptr{None}",) libxml2
@c Int32 xmlNanoFTPQuit ("Ptr{None}",) libxml2
@c None xmlNanoFTPScanProxy ("Ptr{Uint8}",) libxml2
@c None xmlNanoFTPProxy ("Ptr{Uint8}","Int32","Ptr{Uint8}","Ptr{Uint8}","Int32") libxml2
@c Int32 xmlNanoFTPUpdateURL ("Ptr{None}","Ptr{Uint8}") libxml2
@c Int32 xmlNanoFTPGetResponse ("Ptr{None}",) libxml2
@c Int32 xmlNanoFTPCheckResponse ("Ptr{None}",) libxml2
@c Int32 xmlNanoFTPCwd ("Ptr{None}","Ptr{Uint8}") libxml2
@c Int32 xmlNanoFTPDele ("Ptr{None}","Ptr{Uint8}") libxml2
@c Int32 xmlNanoFTPGetConnection ("Ptr{None}",) libxml2
@c Int32 xmlNanoFTPCloseConnection ("Ptr{None}",) libxml2
@c Int32 xmlNanoFTPList ("Ptr{None}","ftpListCallback","Ptr{None}","Ptr{Uint8}") libxml2
@c Int32 xmlNanoFTPGetSocket ("Ptr{None}","Ptr{Uint8}") libxml2
@c Int32 xmlNanoFTPGet ("Ptr{None}","ftpDataCallback","Ptr{None}","Ptr{Uint8}") libxml2
@c Int32 xmlNanoFTPRead ("Ptr{None}","Ptr{None}","Int32") libxml2

# Julia wrapper for header: /usr/include/libxml2/libxml/nanohttp.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

@c None xmlNanoHTTPInit () libxml2
@c None xmlNanoHTTPCleanup () libxml2
@c None xmlNanoHTTPScanProxy ("Ptr{Uint8}",) libxml2
@c Int32 xmlNanoHTTPFetch ("Ptr{Uint8}","Ptr{Uint8}","Ptr{Ptr{Uint8}}") libxml2
@c Ptr{None} xmlNanoHTTPMethod ("Ptr{Uint8}","Ptr{Uint8}","Ptr{Uint8}","Ptr{Ptr{Uint8}}","Ptr{Uint8}","Int32") libxml2
@c Ptr{None} xmlNanoHTTPMethodRedir ("Ptr{Uint8}","Ptr{Uint8}","Ptr{Uint8}","Ptr{Ptr{Uint8}}","Ptr{Ptr{Uint8}}","Ptr{Uint8}","Int32") libxml2
@c Ptr{None} xmlNanoHTTPOpen ("Ptr{Uint8}","Ptr{Ptr{Uint8}}") libxml2
@c Ptr{None} xmlNanoHTTPOpenRedir ("Ptr{Uint8}","Ptr{Ptr{Uint8}}","Ptr{Ptr{Uint8}}") libxml2
@c Int32 xmlNanoHTTPReturnCode ("Ptr{None}",) libxml2
@c Ptr{Uint8} xmlNanoHTTPAuthHeader ("Ptr{None}",) libxml2
@c Ptr{Uint8} xmlNanoHTTPRedir ("Ptr{None}",) libxml2
@c Int32 xmlNanoHTTPContentLength ("Ptr{None}",) libxml2
@c Ptr{Uint8} xmlNanoHTTPEncoding ("Ptr{None}",) libxml2
@c Ptr{Uint8} xmlNanoHTTPMimeType ("Ptr{None}",) libxml2
@c Int32 xmlNanoHTTPRead ("Ptr{None}","Ptr{None}","Int32") libxml2
@c Int32 xmlNanoHTTPSave ("Ptr{None}","Ptr{Uint8}") libxml2
@c None xmlNanoHTTPClose ("Ptr{None}",) libxml2

# Julia wrapper for header: /usr/include/libxml2/libxml/parser.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

@c None xmlInitParser () libxml2
@c None xmlCleanupParser () libxml2
@c Int32 xmlParserInputRead ("xmlParserInputPtr","Int32") libxml2
@c Int32 xmlParserInputGrow ("xmlParserInputPtr","Int32") libxml2
@c xmlDocPtr xmlParseDoc ("Ptr{xmlChar}",) libxml2
@c xmlDocPtr xmlParseFile ("Ptr{Uint8}",) libxml2
@c xmlDocPtr xmlParseMemory ("Ptr{Uint8}","Int32") libxml2
@c Int32 xmlSubstituteEntitiesDefault ("Int32",) libxml2
@c Int32 xmlKeepBlanksDefault ("Int32",) libxml2
@c None xmlStopParser ("xmlParserCtxtPtr",) libxml2
@c Int32 xmlPedanticParserDefault ("Int32",) libxml2
@c Int32 xmlLineNumbersDefault ("Int32",) libxml2
@c xmlDocPtr xmlRecoverDoc ("Ptr{xmlChar}",) libxml2
@c xmlDocPtr xmlRecoverMemory ("Ptr{Uint8}","Int32") libxml2
@c xmlDocPtr xmlRecoverFile ("Ptr{Uint8}",) libxml2
@c Int32 xmlParseDocument ("xmlParserCtxtPtr",) libxml2
@c Int32 xmlParseExtParsedEnt ("xmlParserCtxtPtr",) libxml2
@c Int32 xmlSAXUserParseFile ("xmlSAXHandlerPtr","Ptr{None}","Ptr{Uint8}") libxml2
@c Int32 xmlSAXUserParseMemory ("xmlSAXHandlerPtr","Ptr{None}","Ptr{Uint8}","Int32") libxml2
@c xmlDocPtr xmlSAXParseDoc ("xmlSAXHandlerPtr","Ptr{xmlChar}","Int32") libxml2
@c xmlDocPtr xmlSAXParseMemory ("xmlSAXHandlerPtr","Ptr{Uint8}","Int32","Int32") libxml2
@c xmlDocPtr xmlSAXParseMemoryWithData ("xmlSAXHandlerPtr","Ptr{Uint8}","Int32","Int32","Ptr{None}") libxml2
@c xmlDocPtr xmlSAXParseFile ("xmlSAXHandlerPtr","Ptr{Uint8}","Int32") libxml2
@c xmlDocPtr xmlSAXParseFileWithData ("xmlSAXHandlerPtr","Ptr{Uint8}","Int32","Ptr{None}") libxml2
@c xmlDocPtr xmlSAXParseEntity ("xmlSAXHandlerPtr","Ptr{Uint8}") libxml2
@c xmlDocPtr xmlParseEntity ("Ptr{Uint8}",) libxml2
@c xmlDtdPtr xmlSAXParseDTD ("xmlSAXHandlerPtr","Ptr{xmlChar}","Ptr{xmlChar}") libxml2
@c xmlDtdPtr xmlParseDTD ("Ptr{xmlChar}","Ptr{xmlChar}") libxml2
@c xmlDtdPtr xmlIOParseDTD ("xmlSAXHandlerPtr","xmlParserInputBufferPtr","xmlCharEncoding") libxml2
@c Int32 xmlParseBalancedChunkMemory ("xmlDocPtr","xmlSAXHandlerPtr","Ptr{None}","Int32","Ptr{xmlChar}","Ptr{xmlNodePtr}") libxml2
@c xmlParserErrors xmlParseInNodeContext ("xmlNodePtr","Ptr{Uint8}","Int32","Int32","Ptr{xmlNodePtr}") libxml2
@c Int32 xmlParseBalancedChunkMemoryRecover ("xmlDocPtr","xmlSAXHandlerPtr","Ptr{None}","Int32","Ptr{xmlChar}","Ptr{xmlNodePtr}","Int32") libxml2
@c Int32 xmlParseExternalEntity ("xmlDocPtr","xmlSAXHandlerPtr","Ptr{None}","Int32","Ptr{xmlChar}","Ptr{xmlChar}","Ptr{xmlNodePtr}") libxml2
@c Int32 xmlParseCtxtExternalEntity ("xmlParserCtxtPtr","Ptr{xmlChar}","Ptr{xmlChar}","Ptr{xmlNodePtr}") libxml2
@c xmlParserCtxtPtr xmlNewParserCtxt () libxml2
@c Int32 xmlInitParserCtxt ("xmlParserCtxtPtr",) libxml2
@c None xmlClearParserCtxt ("xmlParserCtxtPtr",) libxml2
@c None xmlFreeParserCtxt ("xmlParserCtxtPtr",) libxml2
@c None xmlSetupParserForBuffer ("xmlParserCtxtPtr","Ptr{xmlChar}","Ptr{Uint8}") libxml2
@c xmlParserCtxtPtr xmlCreateDocParserCtxt ("Ptr{xmlChar}",) libxml2
@c Int32 xmlGetFeaturesList ("Ptr{Int32}","Ptr{Ptr{Uint8}}") libxml2
@c Int32 xmlGetFeature ("xmlParserCtxtPtr","Ptr{Uint8}","Ptr{None}") libxml2
@c Int32 xmlSetFeature ("xmlParserCtxtPtr","Ptr{Uint8}","Ptr{None}") libxml2
@c xmlParserCtxtPtr xmlCreatePushParserCtxt ("xmlSAXHandlerPtr","Ptr{None}","Ptr{Uint8}","Int32","Ptr{Uint8}") libxml2
@c Int32 xmlParseChunk ("xmlParserCtxtPtr","Ptr{Uint8}","Int32","Int32") libxml2
@c xmlParserCtxtPtr xmlCreateIOParserCtxt ("xmlSAXHandlerPtr","Ptr{None}","xmlInputReadCallback","xmlInputCloseCallback","Ptr{None}","xmlCharEncoding") libxml2
@c xmlParserInputPtr xmlNewIOInputStream ("xmlParserCtxtPtr","xmlParserInputBufferPtr","xmlCharEncoding") libxml2
@c Ptr{xmlParserNodeInfo} xmlParserFindNodeInfo ("xmlParserCtxtPtr","xmlNodePtr") libxml2
@c None xmlInitNodeInfoSeq ("xmlParserNodeInfoSeqPtr",) libxml2
@c None xmlClearNodeInfoSeq ("xmlParserNodeInfoSeqPtr",) libxml2
@c Uint64 xmlParserFindNodeInfoIndex ("xmlParserNodeInfoSeqPtr","xmlNodePtr") libxml2
@c None xmlParserAddNodeInfo ("xmlParserCtxtPtr","xmlParserNodeInfoPtr") libxml2
@c None xmlSetExternalEntityLoader ("xmlExternalEntityLoader",) libxml2
@c xmlExternalEntityLoader xmlGetExternalEntityLoader () libxml2
@c xmlParserInputPtr xmlLoadExternalEntity ("Ptr{Uint8}","Ptr{Uint8}","xmlParserCtxtPtr") libxml2
@c Int64 xmlByteConsumed ("xmlParserCtxtPtr",) libxml2
@c None xmlCtxtReset ("xmlParserCtxtPtr",) libxml2
@c Int32 xmlCtxtResetPush ("xmlParserCtxtPtr","Ptr{Uint8}","Int32","Ptr{Uint8}","Ptr{Uint8}") libxml2
@c Int32 xmlCtxtUseOptions ("xmlParserCtxtPtr","Int32") libxml2
@c xmlDocPtr xmlReadDoc ("Ptr{xmlChar}","Ptr{Uint8}","Ptr{Uint8}","Int32") libxml2
@c xmlDocPtr xmlReadFile ("Ptr{Uint8}","Ptr{Uint8}","Int32") libxml2
@c xmlDocPtr xmlReadMemory ("Ptr{Uint8}","Int32","Ptr{Uint8}","Ptr{Uint8}","Int32") libxml2
@c xmlDocPtr xmlReadFd ("Int32","Ptr{Uint8}","Ptr{Uint8}","Int32") libxml2
@c xmlDocPtr xmlReadIO ("xmlInputReadCallback","xmlInputCloseCallback","Ptr{None}","Ptr{Uint8}","Ptr{Uint8}","Int32") libxml2
@c xmlDocPtr xmlCtxtReadDoc ("xmlParserCtxtPtr","Ptr{xmlChar}","Ptr{Uint8}","Ptr{Uint8}","Int32") libxml2
@c xmlDocPtr xmlCtxtReadFile ("xmlParserCtxtPtr","Ptr{Uint8}","Ptr{Uint8}","Int32") libxml2
@c xmlDocPtr xmlCtxtReadMemory ("xmlParserCtxtPtr","Ptr{Uint8}","Int32","Ptr{Uint8}","Ptr{Uint8}","Int32") libxml2
@c xmlDocPtr xmlCtxtReadFd ("xmlParserCtxtPtr","Int32","Ptr{Uint8}","Ptr{Uint8}","Int32") libxml2
@c xmlDocPtr xmlCtxtReadIO ("xmlParserCtxtPtr","xmlInputReadCallback","xmlInputCloseCallback","Ptr{None}","Ptr{Uint8}","Ptr{Uint8}","Int32") libxml2
@c Int32 xmlHasFeature ("xmlFeature",) libxml2

# Julia wrapper for header: /usr/include/libxml2/libxml/parserInternals.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

@c Int32 xmlIsLetter ("Int32",) libxml2
@c xmlParserCtxtPtr xmlCreateFileParserCtxt ("Ptr{Uint8}",) libxml2
@c xmlParserCtxtPtr xmlCreateURLParserCtxt ("Ptr{Uint8}","Int32") libxml2
@c xmlParserCtxtPtr xmlCreateMemoryParserCtxt ("Ptr{Uint8}","Int32") libxml2
@c xmlParserCtxtPtr xmlCreateEntityParserCtxt ("Ptr{xmlChar}","Ptr{xmlChar}","Ptr{xmlChar}") libxml2
@c Int32 xmlSwitchEncoding ("xmlParserCtxtPtr","xmlCharEncoding") libxml2
@c Int32 xmlSwitchToEncoding ("xmlParserCtxtPtr","xmlCharEncodingHandlerPtr") libxml2
@c Int32 xmlSwitchInputEncoding ("xmlParserCtxtPtr","xmlParserInputPtr","xmlCharEncodingHandlerPtr") libxml2
@c xmlParserInputPtr xmlNewStringInputStream ("xmlParserCtxtPtr","Ptr{xmlChar}") libxml2
@c xmlParserInputPtr xmlNewEntityInputStream ("xmlParserCtxtPtr","xmlEntityPtr") libxml2
@c Int32 xmlPushInput ("xmlParserCtxtPtr","xmlParserInputPtr") libxml2
@c xmlChar xmlPopInput ("xmlParserCtxtPtr",) libxml2
@c None xmlFreeInputStream ("xmlParserInputPtr",) libxml2
@c xmlParserInputPtr xmlNewInputFromFile ("xmlParserCtxtPtr","Ptr{Uint8}") libxml2
@c xmlParserInputPtr xmlNewInputStream ("xmlParserCtxtPtr",) libxml2
@c Ptr{xmlChar} xmlSplitQName ("xmlParserCtxtPtr","Ptr{xmlChar}","Ptr{Ptr{xmlChar}}") libxml2
@c Ptr{xmlChar} xmlParseName ("xmlParserCtxtPtr",) libxml2
@c Ptr{xmlChar} xmlParseNmtoken ("xmlParserCtxtPtr",) libxml2
@c Ptr{xmlChar} xmlParseEntityValue ("xmlParserCtxtPtr","Ptr{Ptr{xmlChar}}") libxml2
@c Ptr{xmlChar} xmlParseAttValue ("xmlParserCtxtPtr",) libxml2
@c Ptr{xmlChar} xmlParseSystemLiteral ("xmlParserCtxtPtr",) libxml2
@c Ptr{xmlChar} xmlParsePubidLiteral ("xmlParserCtxtPtr",) libxml2
@c None xmlParseCharData ("xmlParserCtxtPtr","Int32") libxml2
@c Ptr{xmlChar} xmlParseExternalID ("xmlParserCtxtPtr","Ptr{Ptr{xmlChar}}","Int32") libxml2
@c None xmlParseComment ("xmlParserCtxtPtr",) libxml2
@c Ptr{xmlChar} xmlParsePITarget ("xmlParserCtxtPtr",) libxml2
@c None xmlParsePI ("xmlParserCtxtPtr",) libxml2
@c None xmlParseNotationDecl ("xmlParserCtxtPtr",) libxml2
@c None xmlParseEntityDecl ("xmlParserCtxtPtr",) libxml2
@c Int32 xmlParseDefaultDecl ("xmlParserCtxtPtr","Ptr{Ptr{xmlChar}}") libxml2
@c xmlEnumerationPtr xmlParseNotationType ("xmlParserCtxtPtr",) libxml2
@c xmlEnumerationPtr xmlParseEnumerationType ("xmlParserCtxtPtr",) libxml2
@c Int32 xmlParseEnumeratedType ("xmlParserCtxtPtr","Ptr{xmlEnumerationPtr}") libxml2
@c Int32 xmlParseAttributeType ("xmlParserCtxtPtr","Ptr{xmlEnumerationPtr}") libxml2
@c None xmlParseAttributeListDecl ("xmlParserCtxtPtr",) libxml2
@c xmlElementContentPtr xmlParseElementMixedContentDecl ("xmlParserCtxtPtr","Int32") libxml2
@c xmlElementContentPtr xmlParseElementChildrenContentDecl ("xmlParserCtxtPtr","Int32") libxml2
@c Int32 xmlParseElementContentDecl ("xmlParserCtxtPtr","Ptr{xmlChar}","Ptr{xmlElementContentPtr}") libxml2
@c Int32 xmlParseElementDecl ("xmlParserCtxtPtr",) libxml2
@c None xmlParseMarkupDecl ("xmlParserCtxtPtr",) libxml2
@c Int32 xmlParseCharRef ("xmlParserCtxtPtr",) libxml2
@c xmlEntityPtr xmlParseEntityRef ("xmlParserCtxtPtr",) libxml2
@c None xmlParseReference ("xmlParserCtxtPtr",) libxml2
@c None xmlParsePEReference ("xmlParserCtxtPtr",) libxml2
@c None xmlParseDocTypeDecl ("xmlParserCtxtPtr",) libxml2
@c Ptr{xmlChar} xmlParseAttribute ("xmlParserCtxtPtr","Ptr{Ptr{xmlChar}}") libxml2
@c Ptr{xmlChar} xmlParseStartTag ("xmlParserCtxtPtr",) libxml2
@c None xmlParseEndTag ("xmlParserCtxtPtr",) libxml2
@c None xmlParseCDSect ("xmlParserCtxtPtr",) libxml2
@c None xmlParseContent ("xmlParserCtxtPtr",) libxml2
@c None xmlParseElement ("xmlParserCtxtPtr",) libxml2
@c Ptr{xmlChar} xmlParseVersionNum ("xmlParserCtxtPtr",) libxml2
@c Ptr{xmlChar} xmlParseVersionInfo ("xmlParserCtxtPtr",) libxml2
@c Ptr{xmlChar} xmlParseEncName ("xmlParserCtxtPtr",) libxml2
@c Ptr{xmlChar} xmlParseEncodingDecl ("xmlParserCtxtPtr",) libxml2
@c Int32 xmlParseSDDecl ("xmlParserCtxtPtr",) libxml2
@c None xmlParseXMLDecl ("xmlParserCtxtPtr",) libxml2
@c None xmlParseTextDecl ("xmlParserCtxtPtr",) libxml2
@c None xmlParseMisc ("xmlParserCtxtPtr",) libxml2
@c None xmlParseExternalSubset ("xmlParserCtxtPtr","Ptr{xmlChar}","Ptr{xmlChar}") libxml2
@c Ptr{xmlChar} xmlStringDecodeEntities ("xmlParserCtxtPtr","Ptr{xmlChar}","Int32","xmlChar","xmlChar","xmlChar") libxml2
@c Ptr{xmlChar} xmlStringLenDecodeEntities ("xmlParserCtxtPtr","Ptr{xmlChar}","Int32","Int32","xmlChar","xmlChar","xmlChar") libxml2
@c Int32 nodePush ("xmlParserCtxtPtr","xmlNodePtr") libxml2
@c xmlNodePtr nodePop ("xmlParserCtxtPtr",) libxml2
@c Int32 inputPush ("xmlParserCtxtPtr","xmlParserInputPtr") libxml2
@c xmlParserInputPtr inputPop ("xmlParserCtxtPtr",) libxml2
@c Ptr{xmlChar} namePop ("xmlParserCtxtPtr",) libxml2
@c Int32 namePush ("xmlParserCtxtPtr","Ptr{xmlChar}") libxml2
@c Int32 xmlSkipBlankChars ("xmlParserCtxtPtr",) libxml2
@c Int32 xmlStringCurrentChar ("xmlParserCtxtPtr","Ptr{xmlChar}","Ptr{Int32}") libxml2
@c None xmlParserHandlePEReference ("xmlParserCtxtPtr",) libxml2
@c Int32 xmlCheckLanguageID ("Ptr{xmlChar}",) libxml2
@c Int32 xmlCurrentChar ("xmlParserCtxtPtr","Ptr{Int32}") libxml2
@c Int32 xmlCopyCharMultiByte ("Ptr{xmlChar}","Int32") libxml2
@c Int32 xmlCopyChar ("Int32","Ptr{xmlChar}","Int32") libxml2
@c None xmlNextChar ("xmlParserCtxtPtr",) libxml2
@c None xmlParserInputShrink ("xmlParserInputPtr",) libxml2
@c None htmlInitAutoClose () libxml2
@c htmlParserCtxtPtr htmlCreateFileParserCtxt ("Ptr{Uint8}","Ptr{Uint8}") libxml2
@c None xmlSetEntityReferenceFunc ("xmlEntityReferenceFunc",) libxml2
@c Ptr{xmlChar} xmlParseQuotedString ("xmlParserCtxtPtr",) libxml2
@c None xmlParseNamespace ("xmlParserCtxtPtr",) libxml2
@c Ptr{xmlChar} xmlNamespaceParseNSDef ("xmlParserCtxtPtr",) libxml2
@c Ptr{xmlChar} xmlScanName ("xmlParserCtxtPtr",) libxml2
@c Ptr{xmlChar} xmlNamespaceParseNCName ("xmlParserCtxtPtr",) libxml2
@c None xmlParserHandleReference ("xmlParserCtxtPtr",) libxml2
@c Ptr{xmlChar} xmlNamespaceParseQName ("xmlParserCtxtPtr","Ptr{Ptr{xmlChar}}") libxml2
@c Ptr{xmlChar} xmlDecodeEntities ("xmlParserCtxtPtr","Int32","Int32","xmlChar","xmlChar","xmlChar") libxml2
@c None xmlHandleEntity ("xmlParserCtxtPtr","xmlEntityPtr") libxml2

# Julia wrapper for header: /usr/include/libxml2/libxml/pattern.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

@c None xmlFreePattern ("xmlPatternPtr",) libxml2
@c None xmlFreePatternList ("xmlPatternPtr",) libxml2
@c xmlPatternPtr xmlPatterncompile ("Ptr{xmlChar}","Ptr{xmlDict}","Int32","Ptr{Ptr{xmlChar}}") libxml2
@c Int32 xmlPatternMatch ("xmlPatternPtr","xmlNodePtr") libxml2
@c Int32 xmlPatternStreamable ("xmlPatternPtr",) libxml2
@c Int32 xmlPatternMaxDepth ("xmlPatternPtr",) libxml2
@c Int32 xmlPatternMinDepth ("xmlPatternPtr",) libxml2
@c Int32 xmlPatternFromRoot ("xmlPatternPtr",) libxml2
@c xmlStreamCtxtPtr xmlPatternGetStreamCtxt ("xmlPatternPtr",) libxml2
@c None xmlFreeStreamCtxt ("xmlStreamCtxtPtr",) libxml2
@c Int32 xmlStreamPushNode ("xmlStreamCtxtPtr","Ptr{xmlChar}","Ptr{xmlChar}","Int32") libxml2
@c Int32 xmlStreamPush ("xmlStreamCtxtPtr","Ptr{xmlChar}","Ptr{xmlChar}") libxml2
@c Int32 xmlStreamPushAttr ("xmlStreamCtxtPtr","Ptr{xmlChar}","Ptr{xmlChar}") libxml2
@c Int32 xmlStreamPop ("xmlStreamCtxtPtr",) libxml2
@c Int32 xmlStreamWantsAnyNode ("xmlStreamCtxtPtr",) libxml2

# Julia wrapper for header: /usr/include/libxml2/libxml/relaxng.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

@c Int32 xmlRelaxNGInitTypes () libxml2
@c None xmlRelaxNGCleanupTypes () libxml2
@c xmlRelaxNGParserCtxtPtr xmlRelaxNGNewParserCtxt ("Ptr{Uint8}",) libxml2
@c xmlRelaxNGParserCtxtPtr xmlRelaxNGNewMemParserCtxt ("Ptr{Uint8}","Int32") libxml2
@c xmlRelaxNGParserCtxtPtr xmlRelaxNGNewDocParserCtxt ("xmlDocPtr",) libxml2
@c Int32 xmlRelaxParserSetFlag ("xmlRelaxNGParserCtxtPtr","Int32") libxml2
@c None xmlRelaxNGFreeParserCtxt ("xmlRelaxNGParserCtxtPtr",) libxml2
@c None xmlRelaxNGSetParserErrors ("xmlRelaxNGParserCtxtPtr","xmlRelaxNGValidityErrorFunc","xmlRelaxNGValidityWarningFunc","Ptr{None}") libxml2
@c Int32 xmlRelaxNGGetParserErrors ("xmlRelaxNGParserCtxtPtr","Ptr{xmlRelaxNGValidityErrorFunc}","Ptr{xmlRelaxNGValidityWarningFunc}","Ptr{Ptr{None}}") libxml2
@c None xmlRelaxNGSetParserStructuredErrors ("xmlRelaxNGParserCtxtPtr","xmlStructuredErrorFunc","Ptr{None}") libxml2
@c xmlRelaxNGPtr xmlRelaxNGParse ("xmlRelaxNGParserCtxtPtr",) libxml2
@c None xmlRelaxNGFree ("xmlRelaxNGPtr",) libxml2
@c None xmlRelaxNGDump ("Ptr{FILE}","xmlRelaxNGPtr") libxml2
@c None xmlRelaxNGDumpTree ("Ptr{FILE}","xmlRelaxNGPtr") libxml2
@c None xmlRelaxNGSetValidErrors ("xmlRelaxNGValidCtxtPtr","xmlRelaxNGValidityErrorFunc","xmlRelaxNGValidityWarningFunc","Ptr{None}") libxml2
@c Int32 xmlRelaxNGGetValidErrors ("xmlRelaxNGValidCtxtPtr","Ptr{xmlRelaxNGValidityErrorFunc}","Ptr{xmlRelaxNGValidityWarningFunc}","Ptr{Ptr{None}}") libxml2
@c None xmlRelaxNGSetValidStructuredErrors ("xmlRelaxNGValidCtxtPtr","xmlStructuredErrorFunc","Ptr{None}") libxml2
@c xmlRelaxNGValidCtxtPtr xmlRelaxNGNewValidCtxt ("xmlRelaxNGPtr",) libxml2
@c None xmlRelaxNGFreeValidCtxt ("xmlRelaxNGValidCtxtPtr",) libxml2
@c Int32 xmlRelaxNGValidateDoc ("xmlRelaxNGValidCtxtPtr","xmlDocPtr") libxml2
@c Int32 xmlRelaxNGValidatePushElement ("xmlRelaxNGValidCtxtPtr","xmlDocPtr","xmlNodePtr") libxml2
@c Int32 xmlRelaxNGValidatePushCData ("xmlRelaxNGValidCtxtPtr","Ptr{xmlChar}","Int32") libxml2
@c Int32 xmlRelaxNGValidatePopElement ("xmlRelaxNGValidCtxtPtr","xmlDocPtr","xmlNodePtr") libxml2
@c Int32 xmlRelaxNGValidateFullElement ("xmlRelaxNGValidCtxtPtr","xmlDocPtr","xmlNodePtr") libxml2

# Julia wrapper for header: /usr/include/libxml2/libxml/SAX2.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

@c Ptr{xmlChar} xmlSAX2GetPublicId ("Ptr{None}",) libxml2
@c Ptr{xmlChar} xmlSAX2GetSystemId ("Ptr{None}",) libxml2
@c None xmlSAX2SetDocumentLocator ("Ptr{None}","xmlSAXLocatorPtr") libxml2
@c Int32 xmlSAX2GetLineNumber ("Ptr{None}",) libxml2
@c Int32 xmlSAX2GetColumnNumber ("Ptr{None}",) libxml2
@c Int32 xmlSAX2IsStandalone ("Ptr{None}",) libxml2
@c Int32 xmlSAX2HasInternalSubset ("Ptr{None}",) libxml2
@c Int32 xmlSAX2HasExternalSubset ("Ptr{None}",) libxml2
@c None xmlSAX2InternalSubset ("Ptr{None}","Ptr{xmlChar}","Ptr{xmlChar}","Ptr{xmlChar}") libxml2
@c None xmlSAX2ExternalSubset ("Ptr{None}","Ptr{xmlChar}","Ptr{xmlChar}","Ptr{xmlChar}") libxml2
@c xmlEntityPtr xmlSAX2GetEntity ("Ptr{None}","Ptr{xmlChar}") libxml2
@c xmlEntityPtr xmlSAX2GetParameterEntity ("Ptr{None}","Ptr{xmlChar}") libxml2
@c xmlParserInputPtr xmlSAX2ResolveEntity ("Ptr{None}","Ptr{xmlChar}","Ptr{xmlChar}") libxml2
@c None xmlSAX2EntityDecl ("Ptr{None}","Ptr{xmlChar}","Int32","Ptr{xmlChar}","Ptr{xmlChar}","Ptr{xmlChar}") libxml2
@c None xmlSAX2AttributeDecl ("Ptr{None}","Ptr{xmlChar}","Ptr{xmlChar}","Int32","Int32","Ptr{xmlChar}","xmlEnumerationPtr") libxml2
@c None xmlSAX2ElementDecl ("Ptr{None}","Ptr{xmlChar}","Int32","xmlElementContentPtr") libxml2
@c None xmlSAX2NotationDecl ("Ptr{None}","Ptr{xmlChar}","Ptr{xmlChar}","Ptr{xmlChar}") libxml2
@c None xmlSAX2UnparsedEntityDecl ("Ptr{None}","Ptr{xmlChar}","Ptr{xmlChar}","Ptr{xmlChar}","Ptr{xmlChar}") libxml2
@c None xmlSAX2StartDocument ("Ptr{None}",) libxml2
@c None xmlSAX2EndDocument ("Ptr{None}",) libxml2
@c None xmlSAX2StartElement ("Ptr{None}","Ptr{xmlChar}","Ptr{Ptr{xmlChar}}") libxml2
@c None xmlSAX2EndElement ("Ptr{None}","Ptr{xmlChar}") libxml2
@c None xmlSAX2StartElementNs ("Ptr{None}","Ptr{xmlChar}","Ptr{xmlChar}","Ptr{xmlChar}","Int32","Ptr{Ptr{xmlChar}}","Int32","Int32","Ptr{Ptr{xmlChar}}") libxml2
@c None xmlSAX2EndElementNs ("Ptr{None}","Ptr{xmlChar}","Ptr{xmlChar}","Ptr{xmlChar}") libxml2
@c None xmlSAX2Reference ("Ptr{None}","Ptr{xmlChar}") libxml2
@c None xmlSAX2Characters ("Ptr{None}","Ptr{xmlChar}","Int32") libxml2
@c None xmlSAX2IgnorableWhitespace ("Ptr{None}","Ptr{xmlChar}","Int32") libxml2
@c None xmlSAX2ProcessingInstruction ("Ptr{None}","Ptr{xmlChar}","Ptr{xmlChar}") libxml2
@c None xmlSAX2Comment ("Ptr{None}","Ptr{xmlChar}") libxml2
@c None xmlSAX2CDataBlock ("Ptr{None}","Ptr{xmlChar}","Int32") libxml2
@c Int32 xmlSAXDefaultVersion ("Int32",) libxml2
@c Int32 xmlSAXVersion ("Ptr{xmlSAXHandler}","Int32") libxml2
@c None xmlSAX2InitDefaultSAXHandler ("Ptr{xmlSAXHandler}","Int32") libxml2
@c None xmlSAX2InitHtmlDefaultSAXHandler ("Ptr{xmlSAXHandler}",) libxml2
@c None htmlDefaultSAXHandlerInit () libxml2
@c None xmlSAX2InitDocbDefaultSAXHandler ("Ptr{xmlSAXHandler}",) libxml2
@c None docbDefaultSAXHandlerInit () libxml2
@c None xmlDefaultSAXHandlerInit () libxml2

# Julia wrapper for header: /usr/include/libxml2/libxml/SAX.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

@c Ptr{xmlChar} getPublicId ("Ptr{None}",) libxml2
@c Ptr{xmlChar} getSystemId ("Ptr{None}",) libxml2
@c None setDocumentLocator ("Ptr{None}","xmlSAXLocatorPtr") libxml2
@c Int32 getLineNumber ("Ptr{None}",) libxml2
@c Int32 getColumnNumber ("Ptr{None}",) libxml2
@c Int32 isStandalone ("Ptr{None}",) libxml2
@c Int32 hasInternalSubset ("Ptr{None}",) libxml2
@c Int32 hasExternalSubset ("Ptr{None}",) libxml2
@c None internalSubset ("Ptr{None}","Ptr{xmlChar}","Ptr{xmlChar}","Ptr{xmlChar}") libxml2
@c None externalSubset ("Ptr{None}","Ptr{xmlChar}","Ptr{xmlChar}","Ptr{xmlChar}") libxml2
@c xmlEntityPtr getEntity ("Ptr{None}","Ptr{xmlChar}") libxml2
@c xmlEntityPtr getParameterEntity ("Ptr{None}","Ptr{xmlChar}") libxml2
@c xmlParserInputPtr resolveEntity ("Ptr{None}","Ptr{xmlChar}","Ptr{xmlChar}") libxml2
@c None entityDecl ("Ptr{None}","Ptr{xmlChar}","Int32","Ptr{xmlChar}","Ptr{xmlChar}","Ptr{xmlChar}") libxml2
@c None attributeDecl ("Ptr{None}","Ptr{xmlChar}","Ptr{xmlChar}","Int32","Int32","Ptr{xmlChar}","xmlEnumerationPtr") libxml2
@c None elementDecl ("Ptr{None}","Ptr{xmlChar}","Int32","xmlElementContentPtr") libxml2
@c None notationDecl ("Ptr{None}","Ptr{xmlChar}","Ptr{xmlChar}","Ptr{xmlChar}") libxml2
@c None unparsedEntityDecl ("Ptr{None}","Ptr{xmlChar}","Ptr{xmlChar}","Ptr{xmlChar}","Ptr{xmlChar}") libxml2
@c None startDocument ("Ptr{None}",) libxml2
@c None endDocument ("Ptr{None}",) libxml2
@c None attribute ("Ptr{None}","Ptr{xmlChar}","Ptr{xmlChar}") libxml2
@c None startElement ("Ptr{None}","Ptr{xmlChar}","Ptr{Ptr{xmlChar}}") libxml2
@c None endElement ("Ptr{None}","Ptr{xmlChar}") libxml2
@c None reference ("Ptr{None}","Ptr{xmlChar}") libxml2
@c None characters ("Ptr{None}","Ptr{xmlChar}","Int32") libxml2
@c None ignorableWhitespace ("Ptr{None}","Ptr{xmlChar}","Int32") libxml2
@c None processingInstruction ("Ptr{None}","Ptr{xmlChar}","Ptr{xmlChar}") libxml2
@c None globalNamespace ("Ptr{None}","Ptr{xmlChar}","Ptr{xmlChar}") libxml2
@c None setNamespace ("Ptr{None}","Ptr{xmlChar}") libxml2
@c xmlNsPtr getNamespace ("Ptr{None}",) libxml2
@c Int32 checkNamespace ("Ptr{None}","Ptr{xmlChar}") libxml2
@c None namespaceDecl ("Ptr{None}","Ptr{xmlChar}","Ptr{xmlChar}") libxml2
@c None comment ("Ptr{None}","Ptr{xmlChar}") libxml2
@c None cdataBlock ("Ptr{None}","Ptr{xmlChar}","Int32") libxml2
@c None initxmlDefaultSAXHandler ("Ptr{xmlSAXHandlerV1}","Int32") libxml2
@c None inithtmlDefaultSAXHandler ("Ptr{xmlSAXHandlerV1}",) libxml2
@c None initdocbDefaultSAXHandler ("Ptr{xmlSAXHandlerV1}",) libxml2

# Julia wrapper for header: /usr/include/libxml2/libxml/schemasInternals.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

@c None xmlSchemaFreeType ("xmlSchemaTypePtr",) libxml2
@c None xmlSchemaFreeWildcard ("xmlSchemaWildcardPtr",) libxml2

# Julia wrapper for header: /usr/include/libxml2/libxml/schematron.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

@c xmlSchematronParserCtxtPtr xmlSchematronNewParserCtxt ("Ptr{Uint8}",) libxml2
@c xmlSchematronParserCtxtPtr xmlSchematronNewMemParserCtxt ("Ptr{Uint8}","Int32") libxml2
@c xmlSchematronParserCtxtPtr xmlSchematronNewDocParserCtxt ("xmlDocPtr",) libxml2
@c None xmlSchematronFreeParserCtxt ("xmlSchematronParserCtxtPtr",) libxml2
@c xmlSchematronPtr xmlSchematronParse ("xmlSchematronParserCtxtPtr",) libxml2
@c None xmlSchematronFree ("xmlSchematronPtr",) libxml2
@c None xmlSchematronSetValidStructuredErrors ("xmlSchematronValidCtxtPtr","xmlStructuredErrorFunc","Ptr{None}") libxml2
@c xmlSchematronValidCtxtPtr xmlSchematronNewValidCtxt ("xmlSchematronPtr","Int32") libxml2
@c None xmlSchematronFreeValidCtxt ("xmlSchematronValidCtxtPtr",) libxml2
@c Int32 xmlSchematronValidateDoc ("xmlSchematronValidCtxtPtr","xmlDocPtr") libxml2

# Julia wrapper for header: /usr/include/libxml2/libxml/threads.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

@c xmlMutexPtr xmlNewMutex () libxml2
@c None xmlMutexLock ("xmlMutexPtr",) libxml2
@c None xmlMutexUnlock ("xmlMutexPtr",) libxml2
@c None xmlFreeMutex ("xmlMutexPtr",) libxml2
@c xmlRMutexPtr xmlNewRMutex () libxml2
@c None xmlRMutexLock ("xmlRMutexPtr",) libxml2
@c None xmlRMutexUnlock ("xmlRMutexPtr",) libxml2
@c None xmlFreeRMutex ("xmlRMutexPtr",) libxml2
@c None xmlInitThreads () libxml2
@c None xmlLockLibrary () libxml2
@c None xmlUnlockLibrary () libxml2
@c Int32 xmlGetThreadId () libxml2
@c Int32 xmlIsMainThread () libxml2
@c None xmlCleanupThreads () libxml2
@c xmlGlobalStatePtr xmlGetGlobalState () libxml2

# Julia wrapper for header: /usr/include/libxml2/libxml/tree.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

@c Int32 xmlValidateNCName ("Ptr{xmlChar}","Int32") libxml2
@c Int32 xmlValidateQName ("Ptr{xmlChar}","Int32") libxml2
@c Int32 xmlValidateName ("Ptr{xmlChar}","Int32") libxml2
@c Int32 xmlValidateNMToken ("Ptr{xmlChar}","Int32") libxml2
@c Ptr{xmlChar} xmlBuildQName ("Ptr{xmlChar}","Ptr{xmlChar}","Ptr{xmlChar}","Int32") libxml2
@c Ptr{xmlChar} xmlSplitQName2 ("Ptr{xmlChar}","Ptr{Ptr{xmlChar}}") libxml2
@c Ptr{xmlChar} xmlSplitQName3 ("Ptr{xmlChar}","Ptr{Int32}") libxml2
@c None xmlSetBufferAllocationScheme ("xmlBufferAllocationScheme",) libxml2
@c xmlBufferAllocationScheme xmlGetBufferAllocationScheme () libxml2
@c xmlBufferPtr xmlBufferCreate () libxml2
@c xmlBufferPtr xmlBufferCreateSize ("size_t",) libxml2
@c xmlBufferPtr xmlBufferCreateStatic ("Ptr{None}","size_t") libxml2
@c Int32 xmlBufferResize ("xmlBufferPtr","Uint32") libxml2
@c None xmlBufferFree ("xmlBufferPtr",) libxml2
@c Int32 xmlBufferDump ("Ptr{FILE}","xmlBufferPtr") libxml2
@c Int32 xmlBufferAdd ("xmlBufferPtr","Ptr{xmlChar}","Int32") libxml2
@c Int32 xmlBufferAddHead ("xmlBufferPtr","Ptr{xmlChar}","Int32") libxml2
@c Int32 xmlBufferCat ("xmlBufferPtr","Ptr{xmlChar}") libxml2
@c Int32 xmlBufferCCat ("xmlBufferPtr","Ptr{Uint8}") libxml2
@c Int32 xmlBufferShrink ("xmlBufferPtr","Uint32") libxml2
@c Int32 xmlBufferGrow ("xmlBufferPtr","Uint32") libxml2
@c None xmlBufferEmpty ("xmlBufferPtr",) libxml2
@c Ptr{xmlChar} xmlBufferContent ("xmlBufferPtr",) libxml2
@c None xmlBufferSetAllocationScheme ("xmlBufferPtr","xmlBufferAllocationScheme") libxml2
@c Int32 xmlBufferLength ("xmlBufferPtr",) libxml2
@c xmlDtdPtr xmlCreateIntSubset ("xmlDocPtr","Ptr{xmlChar}","Ptr{xmlChar}","Ptr{xmlChar}") libxml2
@c xmlDtdPtr xmlNewDtd ("xmlDocPtr","Ptr{xmlChar}","Ptr{xmlChar}","Ptr{xmlChar}") libxml2
@c xmlDtdPtr xmlGetIntSubset ("xmlDocPtr",) libxml2
@c None xmlFreeDtd ("xmlDtdPtr",) libxml2
@c xmlNsPtr xmlNewGlobalNs ("xmlDocPtr","Ptr{xmlChar}","Ptr{xmlChar}") libxml2
@c xmlNsPtr xmlNewNs ("xmlNodePtr","Ptr{xmlChar}","Ptr{xmlChar}") libxml2
@c None xmlFreeNs ("xmlNsPtr",) libxml2
@c None xmlFreeNsList ("xmlNsPtr",) libxml2
@c xmlDocPtr xmlNewDoc ("Ptr{xmlChar}",) libxml2
@c None xmlFreeDoc ("xmlDocPtr",) libxml2
@c xmlAttrPtr xmlNewDocProp ("xmlDocPtr","Ptr{xmlChar}","Ptr{xmlChar}") libxml2
@c xmlAttrPtr xmlNewProp ("xmlNodePtr","Ptr{xmlChar}","Ptr{xmlChar}") libxml2
@c xmlAttrPtr xmlNewNsProp ("xmlNodePtr","xmlNsPtr","Ptr{xmlChar}","Ptr{xmlChar}") libxml2
@c xmlAttrPtr xmlNewNsPropEatName ("xmlNodePtr","xmlNsPtr","Ptr{xmlChar}","Ptr{xmlChar}") libxml2
@c None xmlFreePropList ("xmlAttrPtr",) libxml2
@c None xmlFreeProp ("xmlAttrPtr",) libxml2
@c xmlAttrPtr xmlCopyProp ("xmlNodePtr","xmlAttrPtr") libxml2
@c xmlAttrPtr xmlCopyPropList ("xmlNodePtr","xmlAttrPtr") libxml2
@c xmlDtdPtr xmlCopyDtd ("xmlDtdPtr",) libxml2
@c xmlDocPtr xmlCopyDoc ("xmlDocPtr","Int32") libxml2
@c xmlNodePtr xmlNewDocNode ("xmlDocPtr","xmlNsPtr","Ptr{xmlChar}","Ptr{xmlChar}") libxml2
@c xmlNodePtr xmlNewDocNodeEatName ("xmlDocPtr","xmlNsPtr","Ptr{xmlChar}","Ptr{xmlChar}") libxml2
@c xmlNodePtr xmlNewNode ("xmlNsPtr","Ptr{xmlChar}") libxml2
@c xmlNodePtr xmlNewNodeEatName ("xmlNsPtr","Ptr{xmlChar}") libxml2
@c xmlNodePtr xmlNewChild ("xmlNodePtr","xmlNsPtr","Ptr{xmlChar}","Ptr{xmlChar}") libxml2
@c xmlNodePtr xmlNewDocText ("xmlDocPtr","Ptr{xmlChar}") libxml2
@c xmlNodePtr xmlNewText ("Ptr{xmlChar}",) libxml2
@c xmlNodePtr xmlNewDocPI ("xmlDocPtr","Ptr{xmlChar}","Ptr{xmlChar}") libxml2
@c xmlNodePtr xmlNewPI ("Ptr{xmlChar}","Ptr{xmlChar}") libxml2
@c xmlNodePtr xmlNewDocTextLen ("xmlDocPtr","Ptr{xmlChar}","Int32") libxml2
@c xmlNodePtr xmlNewTextLen ("Ptr{xmlChar}","Int32") libxml2
@c xmlNodePtr xmlNewDocComment ("xmlDocPtr","Ptr{xmlChar}") libxml2
@c xmlNodePtr xmlNewComment ("Ptr{xmlChar}",) libxml2
@c xmlNodePtr xmlNewCDataBlock ("xmlDocPtr","Ptr{xmlChar}","Int32") libxml2
@c xmlNodePtr xmlNewCharRef ("xmlDocPtr","Ptr{xmlChar}") libxml2
@c xmlNodePtr xmlNewReference ("xmlDocPtr","Ptr{xmlChar}") libxml2
@c xmlNodePtr xmlCopyNode ("xmlNodePtr","Int32") libxml2
@c xmlNodePtr xmlDocCopyNode ("xmlNodePtr","xmlDocPtr","Int32") libxml2
@c xmlNodePtr xmlDocCopyNodeList ("xmlDocPtr","xmlNodePtr") libxml2
@c xmlNodePtr xmlCopyNodeList ("xmlNodePtr",) libxml2
@c xmlNodePtr xmlNewTextChild ("xmlNodePtr","xmlNsPtr","Ptr{xmlChar}","Ptr{xmlChar}") libxml2
@c xmlNodePtr xmlNewDocRawNode ("xmlDocPtr","xmlNsPtr","Ptr{xmlChar}","Ptr{xmlChar}") libxml2
@c xmlNodePtr xmlNewDocFragment ("xmlDocPtr",) libxml2
@c Int64 xmlGetLineNo ("xmlNodePtr",) libxml2
@c Ptr{xmlChar} xmlGetNodePath ("xmlNodePtr",) libxml2
@c xmlNodePtr xmlDocGetRootElement ("xmlDocPtr",) libxml2
@c xmlNodePtr xmlGetLastChild ("xmlNodePtr",) libxml2
@c Int32 xmlNodeIsText ("xmlNodePtr",) libxml2
@c Int32 xmlIsBlankNode ("xmlNodePtr",) libxml2
@c xmlNodePtr xmlDocSetRootElement ("xmlDocPtr","xmlNodePtr") libxml2
@c None xmlNodeSetName ("xmlNodePtr","Ptr{xmlChar}") libxml2
@c xmlNodePtr xmlAddChild ("xmlNodePtr","xmlNodePtr") libxml2
@c xmlNodePtr xmlAddChildList ("xmlNodePtr","xmlNodePtr") libxml2
@c xmlNodePtr xmlReplaceNode ("xmlNodePtr","xmlNodePtr") libxml2
@c xmlNodePtr xmlAddPrevSibling ("xmlNodePtr","xmlNodePtr") libxml2
@c xmlNodePtr xmlAddSibling ("xmlNodePtr","xmlNodePtr") libxml2
@c xmlNodePtr xmlAddNextSibling ("xmlNodePtr","xmlNodePtr") libxml2
@c None xmlUnlinkNode ("xmlNodePtr",) libxml2
@c xmlNodePtr xmlTextMerge ("xmlNodePtr","xmlNodePtr") libxml2
@c Int32 xmlTextConcat ("xmlNodePtr","Ptr{xmlChar}","Int32") libxml2
@c None xmlFreeNodeList ("xmlNodePtr",) libxml2
@c None xmlFreeNode ("xmlNodePtr",) libxml2
@c None xmlSetTreeDoc ("xmlNodePtr","xmlDocPtr") libxml2
@c None xmlSetListDoc ("xmlNodePtr","xmlDocPtr") libxml2
@c xmlNsPtr xmlSearchNs ("xmlDocPtr","xmlNodePtr","Ptr{xmlChar}") libxml2
@c xmlNsPtr xmlSearchNsByHref ("xmlDocPtr","xmlNodePtr","Ptr{xmlChar}") libxml2
@c Ptr{xmlNsPtr} xmlGetNsList ("xmlDocPtr","xmlNodePtr") libxml2
@c None xmlSetNs ("xmlNodePtr","xmlNsPtr") libxml2
@c xmlNsPtr xmlCopyNamespace ("xmlNsPtr",) libxml2
@c xmlNsPtr xmlCopyNamespaceList ("xmlNsPtr",) libxml2
@c xmlAttrPtr xmlSetProp ("xmlNodePtr","Ptr{xmlChar}","Ptr{xmlChar}") libxml2
@c xmlAttrPtr xmlSetNsProp ("xmlNodePtr","xmlNsPtr","Ptr{xmlChar}","Ptr{xmlChar}") libxml2
@c Ptr{xmlChar} xmlGetNoNsProp ("xmlNodePtr","Ptr{xmlChar}") libxml2
@c Ptr{xmlChar} xmlGetProp ("xmlNodePtr","Ptr{xmlChar}") libxml2
@c xmlAttrPtr xmlHasProp ("xmlNodePtr","Ptr{xmlChar}") libxml2
@c xmlAttrPtr xmlHasNsProp ("xmlNodePtr","Ptr{xmlChar}","Ptr{xmlChar}") libxml2
@c Ptr{xmlChar} xmlGetNsProp ("xmlNodePtr","Ptr{xmlChar}","Ptr{xmlChar}") libxml2
@c xmlNodePtr xmlStringGetNodeList ("xmlDocPtr","Ptr{xmlChar}") libxml2
@c xmlNodePtr xmlStringLenGetNodeList ("xmlDocPtr","Ptr{xmlChar}","Int32") libxml2
@c Ptr{xmlChar} xmlNodeListGetString ("xmlDocPtr","xmlNodePtr","Int32") libxml2
@c Ptr{xmlChar} xmlNodeListGetRawString ("xmlDocPtr","xmlNodePtr","Int32") libxml2
@c None xmlNodeSetContent ("xmlNodePtr","Ptr{xmlChar}") libxml2
@c None xmlNodeSetContentLen ("xmlNodePtr","Ptr{xmlChar}","Int32") libxml2
@c None xmlNodeAddContent ("xmlNodePtr","Ptr{xmlChar}") libxml2
@c None xmlNodeAddContentLen ("xmlNodePtr","Ptr{xmlChar}","Int32") libxml2
@c Ptr{xmlChar} xmlNodeGetContent ("xmlNodePtr",) libxml2
@c Int32 xmlNodeBufGetContent ("xmlBufferPtr","xmlNodePtr") libxml2
@c Ptr{xmlChar} xmlNodeGetLang ("xmlNodePtr",) libxml2
@c Int32 xmlNodeGetSpacePreserve ("xmlNodePtr",) libxml2
@c None xmlNodeSetLang ("xmlNodePtr","Ptr{xmlChar}") libxml2
@c None xmlNodeSetSpacePreserve ("xmlNodePtr","Int32") libxml2
@c Ptr{xmlChar} xmlNodeGetBase ("xmlDocPtr","xmlNodePtr") libxml2
@c None xmlNodeSetBase ("xmlNodePtr","Ptr{xmlChar}") libxml2
@c Int32 xmlRemoveProp ("xmlAttrPtr",) libxml2
@c Int32 xmlUnsetNsProp ("xmlNodePtr","xmlNsPtr","Ptr{xmlChar}") libxml2
@c Int32 xmlUnsetProp ("xmlNodePtr","Ptr{xmlChar}") libxml2
@c None xmlBufferWriteCHAR ("xmlBufferPtr","Ptr{xmlChar}") libxml2
@c None xmlBufferWriteChar ("xmlBufferPtr","Ptr{Uint8}") libxml2
@c None xmlBufferWriteQuotedString ("xmlBufferPtr","Ptr{xmlChar}") libxml2
@c None xmlAttrSerializeTxtContent ("xmlBufferPtr","xmlDocPtr","xmlAttrPtr","Ptr{xmlChar}") libxml2
@c Int32 xmlReconciliateNs ("xmlDocPtr","xmlNodePtr") libxml2
@c None xmlDocDumpFormatMemory ("xmlDocPtr","Ptr{Ptr{xmlChar}}","Ptr{Int32}","Int32") libxml2
@c None xmlDocDumpMemory ("xmlDocPtr","Ptr{Ptr{xmlChar}}","Ptr{Int32}") libxml2
@c None xmlDocDumpMemoryEnc ("xmlDocPtr","Ptr{Ptr{xmlChar}}","Ptr{Int32}","Ptr{Uint8}") libxml2
@c None xmlDocDumpFormatMemoryEnc ("xmlDocPtr","Ptr{Ptr{xmlChar}}","Ptr{Int32}","Ptr{Uint8}","Int32") libxml2
@c Int32 xmlDocFormatDump ("Ptr{FILE}","xmlDocPtr","Int32") libxml2
@c Int32 xmlDocDump ("Ptr{FILE}","xmlDocPtr") libxml2
@c None xmlElemDump ("Ptr{FILE}","xmlDocPtr","xmlNodePtr") libxml2
@c Int32 xmlSaveFile ("Ptr{Uint8}","xmlDocPtr") libxml2
@c Int32 xmlSaveFormatFile ("Ptr{Uint8}","xmlDocPtr","Int32") libxml2
@c Int32 xmlNodeDump ("xmlBufferPtr","xmlDocPtr","xmlNodePtr","Int32","Int32") libxml2
@c Int32 xmlSaveFileTo ("xmlOutputBufferPtr","xmlDocPtr","Ptr{Uint8}") libxml2
@c Int32 xmlSaveFormatFileTo ("xmlOutputBufferPtr","xmlDocPtr","Ptr{Uint8}","Int32") libxml2
@c None xmlNodeDumpOutput ("xmlOutputBufferPtr","xmlDocPtr","xmlNodePtr","Int32","Int32","Ptr{Uint8}") libxml2
@c Int32 xmlSaveFormatFileEnc ("Ptr{Uint8}","xmlDocPtr","Ptr{Uint8}","Int32") libxml2
@c Int32 xmlSaveFileEnc ("Ptr{Uint8}","xmlDocPtr","Ptr{Uint8}") libxml2
@c Int32 xmlIsXHTML ("Ptr{xmlChar}","Ptr{xmlChar}") libxml2
@c Int32 xmlGetDocCompressMode ("xmlDocPtr",) libxml2
@c None xmlSetDocCompressMode ("xmlDocPtr","Int32") libxml2
@c Int32 xmlGetCompressMode () libxml2
@c None xmlSetCompressMode ("Int32",) libxml2
@c xmlDOMWrapCtxtPtr xmlDOMWrapNewCtxt () libxml2
@c None xmlDOMWrapFreeCtxt ("xmlDOMWrapCtxtPtr",) libxml2
@c Int32 xmlDOMWrapReconcileNamespaces ("xmlDOMWrapCtxtPtr","xmlNodePtr","Int32") libxml2
@c Int32 xmlDOMWrapAdoptNode ("xmlDOMWrapCtxtPtr","xmlDocPtr","xmlNodePtr","xmlDocPtr","xmlNodePtr","Int32") libxml2
@c Int32 xmlDOMWrapRemoveNode ("xmlDOMWrapCtxtPtr","xmlDocPtr","xmlNodePtr","Int32") libxml2
@c Int32 xmlDOMWrapCloneNode ("xmlDOMWrapCtxtPtr","xmlDocPtr","xmlNodePtr","Ptr{xmlNodePtr}","xmlDocPtr","xmlNodePtr","Int32","Int32") libxml2
@c Uint64 xmlChildElementCount ("xmlNodePtr",) libxml2
@c xmlNodePtr xmlNextElementSibling ("xmlNodePtr",) libxml2
@c xmlNodePtr xmlFirstElementChild ("xmlNodePtr",) libxml2
@c xmlNodePtr xmlLastElementChild ("xmlNodePtr",) libxml2
@c xmlNodePtr xmlPreviousElementSibling ("xmlNodePtr",) libxml2

# Julia wrapper for header: /usr/include/libxml2/libxml/uri.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

@c xmlURIPtr xmlCreateURI () libxml2
@c Ptr{xmlChar} xmlBuildURI ("Ptr{xmlChar}","Ptr{xmlChar}") libxml2
@c Ptr{xmlChar} xmlBuildRelativeURI ("Ptr{xmlChar}","Ptr{xmlChar}") libxml2
@c xmlURIPtr xmlParseURI ("Ptr{Uint8}",) libxml2
@c xmlURIPtr xmlParseURIRaw ("Ptr{Uint8}","Int32") libxml2
@c Int32 xmlParseURIReference ("xmlURIPtr","Ptr{Uint8}") libxml2
@c Ptr{xmlChar} xmlSaveUri ("xmlURIPtr",) libxml2
@c None xmlPrintURI ("Ptr{FILE}","xmlURIPtr") libxml2
@c Ptr{xmlChar} xmlURIEscapeStr ("Ptr{xmlChar}","Ptr{xmlChar}") libxml2
@c Ptr{Uint8} xmlURIUnescapeString ("Ptr{Uint8}","Int32","Ptr{Uint8}") libxml2
@c Int32 xmlNormalizeURIPath ("Ptr{Uint8}",) libxml2
@c Ptr{xmlChar} xmlURIEscape ("Ptr{xmlChar}",) libxml2
@c None xmlFreeURI ("xmlURIPtr",) libxml2
@c Ptr{xmlChar} xmlCanonicPath ("Ptr{xmlChar}",) libxml2
@c Ptr{xmlChar} xmlPathToURI ("Ptr{xmlChar}",) libxml2

# Julia wrapper for header: /usr/include/libxml2/libxml/valid.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

@c xmlNotationPtr xmlAddNotationDecl ("xmlValidCtxtPtr","xmlDtdPtr","Ptr{xmlChar}","Ptr{xmlChar}","Ptr{xmlChar}") libxml2
@c xmlNotationTablePtr xmlCopyNotationTable ("xmlNotationTablePtr",) libxml2
@c None xmlFreeNotationTable ("xmlNotationTablePtr",) libxml2
@c None xmlDumpNotationDecl ("xmlBufferPtr","xmlNotationPtr") libxml2
@c None xmlDumpNotationTable ("xmlBufferPtr","xmlNotationTablePtr") libxml2
@c xmlElementContentPtr xmlNewElementContent ("Ptr{xmlChar}","xmlElementContentType") libxml2
@c xmlElementContentPtr xmlCopyElementContent ("xmlElementContentPtr",) libxml2
@c None xmlFreeElementContent ("xmlElementContentPtr",) libxml2
@c xmlElementContentPtr xmlNewDocElementContent ("xmlDocPtr","Ptr{xmlChar}","xmlElementContentType") libxml2
@c xmlElementContentPtr xmlCopyDocElementContent ("xmlDocPtr","xmlElementContentPtr") libxml2
@c None xmlFreeDocElementContent ("xmlDocPtr","xmlElementContentPtr") libxml2
@c None xmlSnprintfElementContent ("Ptr{Uint8}","Int32","xmlElementContentPtr","Int32") libxml2
@c None xmlSprintfElementContent ("Ptr{Uint8}","xmlElementContentPtr","Int32") libxml2
@c xmlElementPtr xmlAddElementDecl ("xmlValidCtxtPtr","xmlDtdPtr","Ptr{xmlChar}","xmlElementTypeVal","xmlElementContentPtr") libxml2
@c xmlElementTablePtr xmlCopyElementTable ("xmlElementTablePtr",) libxml2
@c None xmlFreeElementTable ("xmlElementTablePtr",) libxml2
@c None xmlDumpElementTable ("xmlBufferPtr","xmlElementTablePtr") libxml2
@c None xmlDumpElementDecl ("xmlBufferPtr","xmlElementPtr") libxml2
@c xmlEnumerationPtr xmlCreateEnumeration ("Ptr{xmlChar}",) libxml2
@c None xmlFreeEnumeration ("xmlEnumerationPtr",) libxml2
@c xmlEnumerationPtr xmlCopyEnumeration ("xmlEnumerationPtr",) libxml2
@c xmlAttributePtr xmlAddAttributeDecl ("xmlValidCtxtPtr","xmlDtdPtr","Ptr{xmlChar}","Ptr{xmlChar}","Ptr{xmlChar}","xmlAttributeType","xmlAttributeDefault","Ptr{xmlChar}","xmlEnumerationPtr") libxml2
@c xmlAttributeTablePtr xmlCopyAttributeTable ("xmlAttributeTablePtr",) libxml2
@c None xmlFreeAttributeTable ("xmlAttributeTablePtr",) libxml2
@c None xmlDumpAttributeTable ("xmlBufferPtr","xmlAttributeTablePtr") libxml2
@c None xmlDumpAttributeDecl ("xmlBufferPtr","xmlAttributePtr") libxml2
@c xmlIDPtr xmlAddID ("xmlValidCtxtPtr","xmlDocPtr","Ptr{xmlChar}","xmlAttrPtr") libxml2
@c None xmlFreeIDTable ("xmlIDTablePtr",) libxml2
@c xmlAttrPtr xmlGetID ("xmlDocPtr","Ptr{xmlChar}") libxml2
@c Int32 xmlIsID ("xmlDocPtr","xmlNodePtr","xmlAttrPtr") libxml2
@c Int32 xmlRemoveID ("xmlDocPtr","xmlAttrPtr") libxml2
@c xmlRefPtr xmlAddRef ("xmlValidCtxtPtr","xmlDocPtr","Ptr{xmlChar}","xmlAttrPtr") libxml2
@c None xmlFreeRefTable ("xmlRefTablePtr",) libxml2
@c Int32 xmlIsRef ("xmlDocPtr","xmlNodePtr","xmlAttrPtr") libxml2
@c Int32 xmlRemoveRef ("xmlDocPtr","xmlAttrPtr") libxml2
@c xmlListPtr xmlGetRefs ("xmlDocPtr","Ptr{xmlChar}") libxml2
@c xmlValidCtxtPtr xmlNewValidCtxt () libxml2
@c None xmlFreeValidCtxt ("xmlValidCtxtPtr",) libxml2
@c Int32 xmlValidateRoot ("xmlValidCtxtPtr","xmlDocPtr") libxml2
@c Int32 xmlValidateElementDecl ("xmlValidCtxtPtr","xmlDocPtr","xmlElementPtr") libxml2
@c Ptr{xmlChar} xmlValidNormalizeAttributeValue ("xmlDocPtr","xmlNodePtr","Ptr{xmlChar}","Ptr{xmlChar}") libxml2
@c Ptr{xmlChar} xmlValidCtxtNormalizeAttributeValue ("xmlValidCtxtPtr","xmlDocPtr","xmlNodePtr","Ptr{xmlChar}","Ptr{xmlChar}") libxml2
@c Int32 xmlValidateAttributeDecl ("xmlValidCtxtPtr","xmlDocPtr","xmlAttributePtr") libxml2
@c Int32 xmlValidateAttributeValue ("xmlAttributeType","Ptr{xmlChar}") libxml2
@c Int32 xmlValidateNotationDecl ("xmlValidCtxtPtr","xmlDocPtr","xmlNotationPtr") libxml2
@c Int32 xmlValidateDtd ("xmlValidCtxtPtr","xmlDocPtr","xmlDtdPtr") libxml2
@c Int32 xmlValidateDtdFinal ("xmlValidCtxtPtr","xmlDocPtr") libxml2
@c Int32 xmlValidateDocument ("xmlValidCtxtPtr","xmlDocPtr") libxml2
@c Int32 xmlValidateElement ("xmlValidCtxtPtr","xmlDocPtr","xmlNodePtr") libxml2
@c Int32 xmlValidateOneElement ("xmlValidCtxtPtr","xmlDocPtr","xmlNodePtr") libxml2
@c Int32 xmlValidateOneAttribute ("xmlValidCtxtPtr","xmlDocPtr","xmlNodePtr","xmlAttrPtr","Ptr{xmlChar}") libxml2
@c Int32 xmlValidateOneNamespace ("xmlValidCtxtPtr","xmlDocPtr","xmlNodePtr","Ptr{xmlChar}","xmlNsPtr","Ptr{xmlChar}") libxml2
@c Int32 xmlValidateDocumentFinal ("xmlValidCtxtPtr","xmlDocPtr") libxml2
@c Int32 xmlValidateNotationUse ("xmlValidCtxtPtr","xmlDocPtr","Ptr{xmlChar}") libxml2
@c Int32 xmlIsMixedElement ("xmlDocPtr","Ptr{xmlChar}") libxml2
@c xmlAttributePtr xmlGetDtdAttrDesc ("xmlDtdPtr","Ptr{xmlChar}","Ptr{xmlChar}") libxml2
@c xmlAttributePtr xmlGetDtdQAttrDesc ("xmlDtdPtr","Ptr{xmlChar}","Ptr{xmlChar}","Ptr{xmlChar}") libxml2
@c xmlNotationPtr xmlGetDtdNotationDesc ("xmlDtdPtr","Ptr{xmlChar}") libxml2
@c xmlElementPtr xmlGetDtdQElementDesc ("xmlDtdPtr","Ptr{xmlChar}","Ptr{xmlChar}") libxml2
@c xmlElementPtr xmlGetDtdElementDesc ("xmlDtdPtr","Ptr{xmlChar}") libxml2
@c Int32 xmlValidGetPotentialChildren ("Ptr{xmlElementContent}","Ptr{Ptr{xmlChar}}","Ptr{Int32}","Int32") libxml2
@c Int32 xmlValidGetValidElements ("Ptr{xmlNode}","Ptr{xmlNode}","Ptr{Ptr{xmlChar}}","Int32") libxml2
@c Int32 xmlValidateNameValue ("Ptr{xmlChar}",) libxml2
@c Int32 xmlValidateNamesValue ("Ptr{xmlChar}",) libxml2
@c Int32 xmlValidateNmtokenValue ("Ptr{xmlChar}",) libxml2
@c Int32 xmlValidateNmtokensValue ("Ptr{xmlChar}",) libxml2
@c Int32 xmlValidBuildContentModel ("xmlValidCtxtPtr","xmlElementPtr") libxml2
@c Int32 xmlValidatePushElement ("xmlValidCtxtPtr","xmlDocPtr","xmlNodePtr","Ptr{xmlChar}") libxml2
@c Int32 xmlValidatePushCData ("xmlValidCtxtPtr","Ptr{xmlChar}","Int32") libxml2
@c Int32 xmlValidatePopElement ("xmlValidCtxtPtr","xmlDocPtr","xmlNodePtr","Ptr{xmlChar}") libxml2

# Julia wrapper for header: /usr/include/libxml2/libxml/xinclude.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

@c Int32 xmlXIncludeProcess ("xmlDocPtr",) libxml2
@c Int32 xmlXIncludeProcessFlags ("xmlDocPtr","Int32") libxml2
@c Int32 xmlXIncludeProcessFlagsData ("xmlDocPtr","Int32","Ptr{None}") libxml2
@c Int32 xmlXIncludeProcessTreeFlagsData ("xmlNodePtr","Int32","Ptr{None}") libxml2
@c Int32 xmlXIncludeProcessTree ("xmlNodePtr",) libxml2
@c Int32 xmlXIncludeProcessTreeFlags ("xmlNodePtr","Int32") libxml2
@c xmlXIncludeCtxtPtr xmlXIncludeNewContext ("xmlDocPtr",) libxml2
@c Int32 xmlXIncludeSetFlags ("xmlXIncludeCtxtPtr","Int32") libxml2
@c None xmlXIncludeFreeContext ("xmlXIncludeCtxtPtr",) libxml2
@c Int32 xmlXIncludeProcessNode ("xmlXIncludeCtxtPtr","xmlNodePtr") libxml2

# Julia wrapper for header: /usr/include/libxml2/libxml/xlink.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

@c xlinkNodeDetectFunc xlinkGetDefaultDetect () libxml2
@c None xlinkSetDefaultDetect ("xlinkNodeDetectFunc",) libxml2
@c xlinkHandlerPtr xlinkGetDefaultHandler () libxml2
@c None xlinkSetDefaultHandler ("xlinkHandlerPtr",) libxml2
@c xlinkType xlinkIsLink ("xmlDocPtr","xmlNodePtr") libxml2

# Julia wrapper for header: /usr/include/libxml2/libxml/xmlautomata.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

@c xmlAutomataPtr xmlNewAutomata () libxml2
@c None xmlFreeAutomata ("xmlAutomataPtr",) libxml2
@c xmlAutomataStatePtr xmlAutomataGetInitState ("xmlAutomataPtr",) libxml2
@c Int32 xmlAutomataSetFinalState ("xmlAutomataPtr","xmlAutomataStatePtr") libxml2
@c xmlAutomataStatePtr xmlAutomataNewState ("xmlAutomataPtr",) libxml2
@c xmlAutomataStatePtr xmlAutomataNewTransition ("xmlAutomataPtr","xmlAutomataStatePtr","xmlAutomataStatePtr","Ptr{xmlChar}","Ptr{None}") libxml2
@c xmlAutomataStatePtr xmlAutomataNewTransition2 ("xmlAutomataPtr","xmlAutomataStatePtr","xmlAutomataStatePtr","Ptr{xmlChar}","Ptr{xmlChar}","Ptr{None}") libxml2
@c xmlAutomataStatePtr xmlAutomataNewNegTrans ("xmlAutomataPtr","xmlAutomataStatePtr","xmlAutomataStatePtr","Ptr{xmlChar}","Ptr{xmlChar}","Ptr{None}") libxml2
@c xmlAutomataStatePtr xmlAutomataNewCountTrans ("xmlAutomataPtr","xmlAutomataStatePtr","xmlAutomataStatePtr","Ptr{xmlChar}","Int32","Int32","Ptr{None}") libxml2
@c xmlAutomataStatePtr xmlAutomataNewCountTrans2 ("xmlAutomataPtr","xmlAutomataStatePtr","xmlAutomataStatePtr","Ptr{xmlChar}","Ptr{xmlChar}","Int32","Int32","Ptr{None}") libxml2
@c xmlAutomataStatePtr xmlAutomataNewOnceTrans ("xmlAutomataPtr","xmlAutomataStatePtr","xmlAutomataStatePtr","Ptr{xmlChar}","Int32","Int32","Ptr{None}") libxml2
@c xmlAutomataStatePtr xmlAutomataNewOnceTrans2 ("xmlAutomataPtr","xmlAutomataStatePtr","xmlAutomataStatePtr","Ptr{xmlChar}","Ptr{xmlChar}","Int32","Int32","Ptr{None}") libxml2
@c xmlAutomataStatePtr xmlAutomataNewAllTrans ("xmlAutomataPtr","xmlAutomataStatePtr","xmlAutomataStatePtr","Int32") libxml2
@c xmlAutomataStatePtr xmlAutomataNewEpsilon ("xmlAutomataPtr","xmlAutomataStatePtr","xmlAutomataStatePtr") libxml2
@c xmlAutomataStatePtr xmlAutomataNewCountedTrans ("xmlAutomataPtr","xmlAutomataStatePtr","xmlAutomataStatePtr","Int32") libxml2
@c xmlAutomataStatePtr xmlAutomataNewCounterTrans ("xmlAutomataPtr","xmlAutomataStatePtr","xmlAutomataStatePtr","Int32") libxml2
@c Int32 xmlAutomataNewCounter ("xmlAutomataPtr","Int32","Int32") libxml2
@c xmlRegexpPtr xmlAutomataCompile ("xmlAutomataPtr",) libxml2
@c Int32 xmlAutomataIsDeterminist ("xmlAutomataPtr",) libxml2

# Julia wrapper for header: /usr/include/libxml2/libxml/xmlerror.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

@c None xmlSetGenericErrorFunc ("Ptr{None}","xmlGenericErrorFunc") libxml2
@c None initGenericErrorDefaultFunc ("Ptr{xmlGenericErrorFunc}",) libxml2
@c None xmlSetStructuredErrorFunc ("Ptr{None}","xmlStructuredErrorFunc") libxml2
@c None xmlParserError ("Ptr{None}","Ptr{Uint8}") libxml2
@c None xmlParserWarning ("Ptr{None}","Ptr{Uint8}") libxml2
@c None xmlParserValidityError ("Ptr{None}","Ptr{Uint8}") libxml2
@c None xmlParserValidityWarning ("Ptr{None}","Ptr{Uint8}") libxml2
@c None xmlParserPrintFileInfo ("xmlParserInputPtr",) libxml2
@c None xmlParserPrintFileContext ("xmlParserInputPtr",) libxml2
@c xmlErrorPtr xmlGetLastError () libxml2
@c None xmlResetLastError () libxml2
@c xmlErrorPtr xmlCtxtGetLastError ("Ptr{None}",) libxml2
@c None xmlCtxtResetLastError ("Ptr{None}",) libxml2
@c None xmlResetError ("xmlErrorPtr",) libxml2
@c Int32 xmlCopyError ("xmlErrorPtr","xmlErrorPtr") libxml2

# Julia wrapper for header: /usr/include/libxml2/libxml/xmlexports.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


# Julia wrapper for header: /usr/include/libxml2/libxml/xmlIO.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

@c None xmlCleanupInputCallbacks () libxml2
@c Int32 xmlPopInputCallbacks () libxml2
@c None xmlRegisterDefaultInputCallbacks () libxml2
@c xmlParserInputBufferPtr xmlAllocParserInputBuffer ("xmlCharEncoding",) libxml2
@c xmlParserInputBufferPtr xmlParserInputBufferCreateFilename ("Ptr{Uint8}","xmlCharEncoding") libxml2
@c xmlParserInputBufferPtr xmlParserInputBufferCreateFile ("Ptr{FILE}","xmlCharEncoding") libxml2
@c xmlParserInputBufferPtr xmlParserInputBufferCreateFd ("Int32","xmlCharEncoding") libxml2
@c xmlParserInputBufferPtr xmlParserInputBufferCreateMem ("Ptr{Uint8}","Int32","xmlCharEncoding") libxml2
@c xmlParserInputBufferPtr xmlParserInputBufferCreateStatic ("Ptr{Uint8}","Int32","xmlCharEncoding") libxml2
@c xmlParserInputBufferPtr xmlParserInputBufferCreateIO ("xmlInputReadCallback","xmlInputCloseCallback","Ptr{None}","xmlCharEncoding") libxml2
@c Int32 xmlParserInputBufferRead ("xmlParserInputBufferPtr","Int32") libxml2
@c Int32 xmlParserInputBufferGrow ("xmlParserInputBufferPtr","Int32") libxml2
@c Int32 xmlParserInputBufferPush ("xmlParserInputBufferPtr","Int32","Ptr{Uint8}") libxml2
@c None xmlFreeParserInputBuffer ("xmlParserInputBufferPtr",) libxml2
@c Ptr{Uint8} xmlParserGetDirectory ("Ptr{Uint8}",) libxml2
@c Int32 xmlRegisterInputCallbacks ("xmlInputMatchCallback","xmlInputOpenCallback","xmlInputReadCallback","xmlInputCloseCallback") libxml2
@c xmlParserInputBufferPtr __xmlParserInputBufferCreateFilename ("Ptr{Uint8}","xmlCharEncoding") libxml2
@c None xmlCleanupOutputCallbacks () libxml2
@c None xmlRegisterDefaultOutputCallbacks () libxml2
@c xmlOutputBufferPtr xmlAllocOutputBuffer ("xmlCharEncodingHandlerPtr",) libxml2
@c xmlOutputBufferPtr xmlOutputBufferCreateFilename ("Ptr{Uint8}","xmlCharEncodingHandlerPtr","Int32") libxml2
@c xmlOutputBufferPtr xmlOutputBufferCreateFile ("Ptr{FILE}","xmlCharEncodingHandlerPtr") libxml2
@c xmlOutputBufferPtr xmlOutputBufferCreateBuffer ("xmlBufferPtr","xmlCharEncodingHandlerPtr") libxml2
@c xmlOutputBufferPtr xmlOutputBufferCreateFd ("Int32","xmlCharEncodingHandlerPtr") libxml2
@c xmlOutputBufferPtr xmlOutputBufferCreateIO ("xmlOutputWriteCallback","xmlOutputCloseCallback","Ptr{None}","xmlCharEncodingHandlerPtr") libxml2
@c Int32 xmlOutputBufferWrite ("xmlOutputBufferPtr","Int32","Ptr{Uint8}") libxml2
@c Int32 xmlOutputBufferWriteString ("xmlOutputBufferPtr","Ptr{Uint8}") libxml2
@c Int32 xmlOutputBufferWriteEscape ("xmlOutputBufferPtr","Ptr{xmlChar}","xmlCharEncodingOutputFunc") libxml2
@c Int32 xmlOutputBufferFlush ("xmlOutputBufferPtr",) libxml2
@c Int32 xmlOutputBufferClose ("xmlOutputBufferPtr",) libxml2
@c Int32 xmlRegisterOutputCallbacks ("xmlOutputMatchCallback","xmlOutputOpenCallback","xmlOutputWriteCallback","xmlOutputCloseCallback") libxml2
@c xmlOutputBufferPtr __xmlOutputBufferCreateFilename ("Ptr{Uint8}","xmlCharEncodingHandlerPtr","Int32") libxml2
@c None xmlRegisterHTTPPostCallbacks () libxml2
@c xmlParserInputPtr xmlCheckHTTPInput ("xmlParserCtxtPtr","xmlParserInputPtr") libxml2
@c xmlParserInputPtr xmlNoNetExternalEntityLoader ("Ptr{Uint8}","Ptr{Uint8}","xmlParserCtxtPtr") libxml2
@c Ptr{xmlChar} xmlNormalizeWindowsPath ("Ptr{xmlChar}",) libxml2
@c Int32 xmlCheckFilename ("Ptr{Uint8}",) libxml2
@c Int32 xmlFileMatch ("Ptr{Uint8}",) libxml2
@c Ptr{None} xmlFileOpen ("Ptr{Uint8}",) libxml2
@c Int32 xmlFileRead ("Ptr{None}","Ptr{Uint8}","Int32") libxml2
@c Int32 xmlFileClose ("Ptr{None}",) libxml2
@c Int32 xmlIOHTTPMatch ("Ptr{Uint8}",) libxml2
@c Ptr{None} xmlIOHTTPOpen ("Ptr{Uint8}",) libxml2
@c Ptr{None} xmlIOHTTPOpenW ("Ptr{Uint8}","Int32") libxml2
@c Int32 xmlIOHTTPRead ("Ptr{None}","Ptr{Uint8}","Int32") libxml2
@c Int32 xmlIOHTTPClose ("Ptr{None}",) libxml2
@c Int32 xmlIOFTPMatch ("Ptr{Uint8}",) libxml2
@c Ptr{None} xmlIOFTPOpen ("Ptr{Uint8}",) libxml2
@c Int32 xmlIOFTPRead ("Ptr{None}","Ptr{Uint8}","Int32") libxml2
@c Int32 xmlIOFTPClose ("Ptr{None}",) libxml2

# Julia wrapper for header: /usr/include/libxml2/libxml/xmlmemory.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

@c Int32 xmlMemSetup ("xmlFreeFunc","xmlMallocFunc","xmlReallocFunc","xmlStrdupFunc") libxml2
@c Int32 xmlMemGet ("Ptr{xmlFreeFunc}","Ptr{xmlMallocFunc}","Ptr{xmlReallocFunc}","Ptr{xmlStrdupFunc}") libxml2
@c Int32 xmlGcMemSetup ("xmlFreeFunc","xmlMallocFunc","xmlMallocFunc","xmlReallocFunc","xmlStrdupFunc") libxml2
@c Int32 xmlGcMemGet ("Ptr{xmlFreeFunc}","Ptr{xmlMallocFunc}","Ptr{xmlMallocFunc}","Ptr{xmlReallocFunc}","Ptr{xmlStrdupFunc}") libxml2
@c Int32 xmlInitMemory () libxml2
@c None xmlCleanupMemory () libxml2
@c Int32 xmlMemUsed () libxml2
@c Int32 xmlMemBlocks () libxml2
@c None xmlMemDisplay ("Ptr{FILE}",) libxml2
@c None xmlMemDisplayLast ("Ptr{FILE}","Int64") libxml2
@c None xmlMemShow ("Ptr{FILE}","Int32") libxml2
@c None xmlMemoryDump () libxml2
@c Ptr{None} xmlMemMalloc ("size_t",) libxml2
@c Ptr{None} xmlMemRealloc ("Ptr{None}","size_t") libxml2
@c None xmlMemFree ("Ptr{None}",) libxml2
@c Ptr{Uint8} xmlMemoryStrdup ("Ptr{Uint8}",) libxml2
@c Ptr{None} xmlMallocLoc ("size_t","Ptr{Uint8}","Int32") libxml2
@c Ptr{None} xmlReallocLoc ("Ptr{None}","size_t","Ptr{Uint8}","Int32") libxml2
@c Ptr{None} xmlMallocAtomicLoc ("size_t","Ptr{Uint8}","Int32") libxml2
@c Ptr{Uint8} xmlMemStrdupLoc ("Ptr{Uint8}","Ptr{Uint8}","Int32") libxml2

# Julia wrapper for header: /usr/include/libxml2/libxml/xmlmodule.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

@c xmlModulePtr xmlModuleOpen ("Ptr{Uint8}","Int32") libxml2
@c Int32 xmlModuleSymbol ("xmlModulePtr","Ptr{Uint8}","Ptr{Ptr{None}}") libxml2
@c Int32 xmlModuleClose ("xmlModulePtr",) libxml2
@c Int32 xmlModuleFree ("xmlModulePtr",) libxml2

# Julia wrapper for header: /usr/include/libxml2/libxml/xmlreader.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

@c xmlTextReaderPtr xmlNewTextReader ("xmlParserInputBufferPtr","Ptr{Uint8}") libxml2
@c xmlTextReaderPtr xmlNewTextReaderFilename ("Ptr{Uint8}",) libxml2
@c None xmlFreeTextReader ("xmlTextReaderPtr",) libxml2
@c Int32 xmlTextReaderSetup ("xmlTextReaderPtr","xmlParserInputBufferPtr","Ptr{Uint8}","Ptr{Uint8}","Int32") libxml2
@c Int32 xmlTextReaderRead ("xmlTextReaderPtr",) libxml2
@c Ptr{xmlChar} xmlTextReaderReadInnerXml ("xmlTextReaderPtr",) libxml2
@c Ptr{xmlChar} xmlTextReaderReadOuterXml ("xmlTextReaderPtr",) libxml2
@c Ptr{xmlChar} xmlTextReaderReadString ("xmlTextReaderPtr",) libxml2
@c Int32 xmlTextReaderReadAttributeValue ("xmlTextReaderPtr",) libxml2
@c Int32 xmlTextReaderAttributeCount ("xmlTextReaderPtr",) libxml2
@c Int32 xmlTextReaderDepth ("xmlTextReaderPtr",) libxml2
@c Int32 xmlTextReaderHasAttributes ("xmlTextReaderPtr",) libxml2
@c Int32 xmlTextReaderHasValue ("xmlTextReaderPtr",) libxml2
@c Int32 xmlTextReaderIsDefault ("xmlTextReaderPtr",) libxml2
@c Int32 xmlTextReaderIsEmptyElement ("xmlTextReaderPtr",) libxml2
@c Int32 xmlTextReaderNodeType ("xmlTextReaderPtr",) libxml2
@c Int32 xmlTextReaderQuoteChar ("xmlTextReaderPtr",) libxml2
@c Int32 xmlTextReaderReadState ("xmlTextReaderPtr",) libxml2
@c Int32 xmlTextReaderIsNamespaceDecl ("xmlTextReaderPtr",) libxml2
@c Ptr{xmlChar} xmlTextReaderConstBaseUri ("xmlTextReaderPtr",) libxml2
@c Ptr{xmlChar} xmlTextReaderConstLocalName ("xmlTextReaderPtr",) libxml2
@c Ptr{xmlChar} xmlTextReaderConstName ("xmlTextReaderPtr",) libxml2
@c Ptr{xmlChar} xmlTextReaderConstNamespaceUri ("xmlTextReaderPtr",) libxml2
@c Ptr{xmlChar} xmlTextReaderConstPrefix ("xmlTextReaderPtr",) libxml2
@c Ptr{xmlChar} xmlTextReaderConstXmlLang ("xmlTextReaderPtr",) libxml2
@c Ptr{xmlChar} xmlTextReaderConstString ("xmlTextReaderPtr","Ptr{xmlChar}") libxml2
@c Ptr{xmlChar} xmlTextReaderConstValue ("xmlTextReaderPtr",) libxml2
@c Ptr{xmlChar} xmlTextReaderBaseUri ("xmlTextReaderPtr",) libxml2
@c Ptr{xmlChar} xmlTextReaderLocalName ("xmlTextReaderPtr",) libxml2
@c Ptr{xmlChar} xmlTextReaderName ("xmlTextReaderPtr",) libxml2
@c Ptr{xmlChar} xmlTextReaderNamespaceUri ("xmlTextReaderPtr",) libxml2
@c Ptr{xmlChar} xmlTextReaderPrefix ("xmlTextReaderPtr",) libxml2
@c Ptr{xmlChar} xmlTextReaderXmlLang ("xmlTextReaderPtr",) libxml2
@c Ptr{xmlChar} xmlTextReaderValue ("xmlTextReaderPtr",) libxml2
@c Int32 xmlTextReaderClose ("xmlTextReaderPtr",) libxml2
@c Ptr{xmlChar} xmlTextReaderGetAttributeNo ("xmlTextReaderPtr","Int32") libxml2
@c Ptr{xmlChar} xmlTextReaderGetAttribute ("xmlTextReaderPtr","Ptr{xmlChar}") libxml2
@c Ptr{xmlChar} xmlTextReaderGetAttributeNs ("xmlTextReaderPtr","Ptr{xmlChar}","Ptr{xmlChar}") libxml2
@c xmlParserInputBufferPtr xmlTextReaderGetRemainder ("xmlTextReaderPtr",) libxml2
@c Ptr{xmlChar} xmlTextReaderLookupNamespace ("xmlTextReaderPtr","Ptr{xmlChar}") libxml2
@c Int32 xmlTextReaderMoveToAttributeNo ("xmlTextReaderPtr","Int32") libxml2
@c Int32 xmlTextReaderMoveToAttribute ("xmlTextReaderPtr","Ptr{xmlChar}") libxml2
@c Int32 xmlTextReaderMoveToAttributeNs ("xmlTextReaderPtr","Ptr{xmlChar}","Ptr{xmlChar}") libxml2
@c Int32 xmlTextReaderMoveToFirstAttribute ("xmlTextReaderPtr",) libxml2
@c Int32 xmlTextReaderMoveToNextAttribute ("xmlTextReaderPtr",) libxml2
@c Int32 xmlTextReaderMoveToElement ("xmlTextReaderPtr",) libxml2
@c Int32 xmlTextReaderNormalization ("xmlTextReaderPtr",) libxml2
@c Ptr{xmlChar} xmlTextReaderConstEncoding ("xmlTextReaderPtr",) libxml2
@c Int32 xmlTextReaderSetParserProp ("xmlTextReaderPtr","Int32","Int32") libxml2
@c Int32 xmlTextReaderGetParserProp ("xmlTextReaderPtr","Int32") libxml2
@c xmlNodePtr xmlTextReaderCurrentNode ("xmlTextReaderPtr",) libxml2
@c Int32 xmlTextReaderGetParserLineNumber ("xmlTextReaderPtr",) libxml2
@c Int32 xmlTextReaderGetParserColumnNumber ("xmlTextReaderPtr",) libxml2
@c xmlNodePtr xmlTextReaderPreserve ("xmlTextReaderPtr",) libxml2
@c Int32 xmlTextReaderPreservePattern ("xmlTextReaderPtr","Ptr{xmlChar}","Ptr{Ptr{xmlChar}}") libxml2
@c xmlDocPtr xmlTextReaderCurrentDoc ("xmlTextReaderPtr",) libxml2
@c xmlNodePtr xmlTextReaderExpand ("xmlTextReaderPtr",) libxml2
@c Int32 xmlTextReaderNext ("xmlTextReaderPtr",) libxml2
@c Int32 xmlTextReaderNextSibling ("xmlTextReaderPtr",) libxml2
@c Int32 xmlTextReaderIsValid ("xmlTextReaderPtr",) libxml2
@c Int32 xmlTextReaderRelaxNGValidate ("xmlTextReaderPtr","Ptr{Uint8}") libxml2
@c Int32 xmlTextReaderRelaxNGSetSchema ("xmlTextReaderPtr","xmlRelaxNGPtr") libxml2
@c Int32 xmlTextReaderSchemaValidate ("xmlTextReaderPtr","Ptr{Uint8}") libxml2
@c Int32 xmlTextReaderSchemaValidateCtxt ("xmlTextReaderPtr","xmlSchemaValidCtxtPtr","Int32") libxml2
@c Int32 xmlTextReaderSetSchema ("xmlTextReaderPtr","xmlSchemaPtr") libxml2
@c Ptr{xmlChar} xmlTextReaderConstXmlVersion ("xmlTextReaderPtr",) libxml2
@c Int32 xmlTextReaderStandalone ("xmlTextReaderPtr",) libxml2
@c Int64 xmlTextReaderByteConsumed ("xmlTextReaderPtr",) libxml2
@c xmlTextReaderPtr xmlReaderWalker ("xmlDocPtr",) libxml2
@c xmlTextReaderPtr xmlReaderForDoc ("Ptr{xmlChar}","Ptr{Uint8}","Ptr{Uint8}","Int32") libxml2
@c xmlTextReaderPtr xmlReaderForFile ("Ptr{Uint8}","Ptr{Uint8}","Int32") libxml2
@c xmlTextReaderPtr xmlReaderForMemory ("Ptr{Uint8}","Int32","Ptr{Uint8}","Ptr{Uint8}","Int32") libxml2
@c xmlTextReaderPtr xmlReaderForFd ("Int32","Ptr{Uint8}","Ptr{Uint8}","Int32") libxml2
@c xmlTextReaderPtr xmlReaderForIO ("xmlInputReadCallback","xmlInputCloseCallback","Ptr{None}","Ptr{Uint8}","Ptr{Uint8}","Int32") libxml2
@c Int32 xmlReaderNewWalker ("xmlTextReaderPtr","xmlDocPtr") libxml2
@c Int32 xmlReaderNewDoc ("xmlTextReaderPtr","Ptr{xmlChar}","Ptr{Uint8}","Ptr{Uint8}","Int32") libxml2
@c Int32 xmlReaderNewFile ("xmlTextReaderPtr","Ptr{Uint8}","Ptr{Uint8}","Int32") libxml2
@c Int32 xmlReaderNewMemory ("xmlTextReaderPtr","Ptr{Uint8}","Int32","Ptr{Uint8}","Ptr{Uint8}","Int32") libxml2
@c Int32 xmlReaderNewFd ("xmlTextReaderPtr","Int32","Ptr{Uint8}","Ptr{Uint8}","Int32") libxml2
@c Int32 xmlReaderNewIO ("xmlTextReaderPtr","xmlInputReadCallback","xmlInputCloseCallback","Ptr{None}","Ptr{Uint8}","Ptr{Uint8}","Int32") libxml2
@c Int32 xmlTextReaderLocatorLineNumber ("xmlTextReaderLocatorPtr",) libxml2
@c Ptr{xmlChar} xmlTextReaderLocatorBaseURI ("xmlTextReaderLocatorPtr",) libxml2
@c None xmlTextReaderSetErrorHandler ("xmlTextReaderPtr","xmlTextReaderErrorFunc","Ptr{None}") libxml2
@c None xmlTextReaderSetStructuredErrorHandler ("xmlTextReaderPtr","xmlStructuredErrorFunc","Ptr{None}") libxml2
@c None xmlTextReaderGetErrorHandler ("xmlTextReaderPtr","Ptr{xmlTextReaderErrorFunc}","Ptr{Ptr{None}}") libxml2

# Julia wrapper for header: /usr/include/libxml2/libxml/xmlregexp.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

@c xmlRegexpPtr xmlRegexpCompile ("Ptr{xmlChar}",) libxml2
@c None xmlRegFreeRegexp ("xmlRegexpPtr",) libxml2
@c Int32 xmlRegexpExec ("xmlRegexpPtr","Ptr{xmlChar}") libxml2
@c None xmlRegexpPrint ("Ptr{FILE}","xmlRegexpPtr") libxml2
@c Int32 xmlRegexpIsDeterminist ("xmlRegexpPtr",) libxml2
@c xmlRegExecCtxtPtr xmlRegNewExecCtxt ("xmlRegexpPtr","xmlRegExecCallbacks","Ptr{None}") libxml2
@c None xmlRegFreeExecCtxt ("xmlRegExecCtxtPtr",) libxml2
@c Int32 xmlRegExecPushString ("xmlRegExecCtxtPtr","Ptr{xmlChar}","Ptr{None}") libxml2
@c Int32 xmlRegExecPushString2 ("xmlRegExecCtxtPtr","Ptr{xmlChar}","Ptr{xmlChar}","Ptr{None}") libxml2
@c Int32 xmlRegExecNextValues ("xmlRegExecCtxtPtr","Ptr{Int32}","Ptr{Int32}","Ptr{Ptr{xmlChar}}","Ptr{Int32}") libxml2
@c Int32 xmlRegExecErrInfo ("xmlRegExecCtxtPtr","Ptr{Ptr{xmlChar}}","Ptr{Int32}","Ptr{Int32}","Ptr{Ptr{xmlChar}}","Ptr{Int32}") libxml2
@c None xmlExpFreeCtxt ("xmlExpCtxtPtr",) libxml2
@c xmlExpCtxtPtr xmlExpNewCtxt ("Int32","xmlDictPtr") libxml2
@c Int32 xmlExpCtxtNbNodes ("xmlExpCtxtPtr",) libxml2
@c Int32 xmlExpCtxtNbCons ("xmlExpCtxtPtr",) libxml2
@c None xmlExpFree ("xmlExpCtxtPtr","xmlExpNodePtr") libxml2
@c None xmlExpRef ("xmlExpNodePtr",) libxml2
@c xmlExpNodePtr xmlExpParse ("xmlExpCtxtPtr","Ptr{Uint8}") libxml2
@c xmlExpNodePtr xmlExpNewAtom ("xmlExpCtxtPtr","Ptr{xmlChar}","Int32") libxml2
@c xmlExpNodePtr xmlExpNewOr ("xmlExpCtxtPtr","xmlExpNodePtr","xmlExpNodePtr") libxml2
@c xmlExpNodePtr xmlExpNewSeq ("xmlExpCtxtPtr","xmlExpNodePtr","xmlExpNodePtr") libxml2
@c xmlExpNodePtr xmlExpNewRange ("xmlExpCtxtPtr","xmlExpNodePtr","Int32","Int32") libxml2
@c Int32 xmlExpIsNillable ("xmlExpNodePtr",) libxml2
@c Int32 xmlExpMaxToken ("xmlExpNodePtr",) libxml2
@c Int32 xmlExpGetLanguage ("xmlExpCtxtPtr","xmlExpNodePtr","Ptr{Ptr{xmlChar}}","Int32") libxml2
@c Int32 xmlExpGetStart ("xmlExpCtxtPtr","xmlExpNodePtr","Ptr{Ptr{xmlChar}}","Int32") libxml2
@c xmlExpNodePtr xmlExpStringDerive ("xmlExpCtxtPtr","xmlExpNodePtr","Ptr{xmlChar}","Int32") libxml2
@c xmlExpNodePtr xmlExpExpDerive ("xmlExpCtxtPtr","xmlExpNodePtr","xmlExpNodePtr") libxml2
@c Int32 xmlExpSubsume ("xmlExpCtxtPtr","xmlExpNodePtr","xmlExpNodePtr") libxml2
@c None xmlExpDump ("xmlBufferPtr","xmlExpNodePtr") libxml2

# Julia wrapper for header: /usr/include/libxml2/libxml/xmlsave.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

@c xmlSaveCtxtPtr xmlSaveToFd ("Int32","Ptr{Uint8}","Int32") libxml2
@c xmlSaveCtxtPtr xmlSaveToFilename ("Ptr{Uint8}","Ptr{Uint8}","Int32") libxml2
@c xmlSaveCtxtPtr xmlSaveToBuffer ("xmlBufferPtr","Ptr{Uint8}","Int32") libxml2
@c xmlSaveCtxtPtr xmlSaveToIO ("xmlOutputWriteCallback","xmlOutputCloseCallback","Ptr{None}","Ptr{Uint8}","Int32") libxml2
@c Int64 xmlSaveDoc ("xmlSaveCtxtPtr","xmlDocPtr") libxml2
@c Int64 xmlSaveTree ("xmlSaveCtxtPtr","xmlNodePtr") libxml2
@c Int32 xmlSaveFlush ("xmlSaveCtxtPtr",) libxml2
@c Int32 xmlSaveClose ("xmlSaveCtxtPtr",) libxml2
@c Int32 xmlSaveSetEscape ("xmlSaveCtxtPtr","xmlCharEncodingOutputFunc") libxml2
@c Int32 xmlSaveSetAttrEscape ("xmlSaveCtxtPtr","xmlCharEncodingOutputFunc") libxml2

# Julia wrapper for header: /usr/include/libxml2/libxml/xmlschemas.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

@c xmlSchemaParserCtxtPtr xmlSchemaNewParserCtxt ("Ptr{Uint8}",) libxml2
@c xmlSchemaParserCtxtPtr xmlSchemaNewMemParserCtxt ("Ptr{Uint8}","Int32") libxml2
@c xmlSchemaParserCtxtPtr xmlSchemaNewDocParserCtxt ("xmlDocPtr",) libxml2
@c None xmlSchemaFreeParserCtxt ("xmlSchemaParserCtxtPtr",) libxml2
@c None xmlSchemaSetParserErrors ("xmlSchemaParserCtxtPtr","xmlSchemaValidityErrorFunc","xmlSchemaValidityWarningFunc","Ptr{None}") libxml2
@c None xmlSchemaSetParserStructuredErrors ("xmlSchemaParserCtxtPtr","xmlStructuredErrorFunc","Ptr{None}") libxml2
@c Int32 xmlSchemaGetParserErrors ("xmlSchemaParserCtxtPtr","Ptr{xmlSchemaValidityErrorFunc}","Ptr{xmlSchemaValidityWarningFunc}","Ptr{Ptr{None}}") libxml2
@c Int32 xmlSchemaIsValid ("xmlSchemaValidCtxtPtr",) libxml2
@c xmlSchemaPtr xmlSchemaParse ("xmlSchemaParserCtxtPtr",) libxml2
@c None xmlSchemaFree ("xmlSchemaPtr",) libxml2
@c None xmlSchemaDump ("Ptr{FILE}","xmlSchemaPtr") libxml2
@c None xmlSchemaSetValidErrors ("xmlSchemaValidCtxtPtr","xmlSchemaValidityErrorFunc","xmlSchemaValidityWarningFunc","Ptr{None}") libxml2
@c None xmlSchemaSetValidStructuredErrors ("xmlSchemaValidCtxtPtr","xmlStructuredErrorFunc","Ptr{None}") libxml2
@c Int32 xmlSchemaGetValidErrors ("xmlSchemaValidCtxtPtr","Ptr{xmlSchemaValidityErrorFunc}","Ptr{xmlSchemaValidityWarningFunc}","Ptr{Ptr{None}}") libxml2
@c Int32 xmlSchemaSetValidOptions ("xmlSchemaValidCtxtPtr","Int32") libxml2
@c Int32 xmlSchemaValidCtxtGetOptions ("xmlSchemaValidCtxtPtr",) libxml2
@c xmlSchemaValidCtxtPtr xmlSchemaNewValidCtxt ("xmlSchemaPtr",) libxml2
@c None xmlSchemaFreeValidCtxt ("xmlSchemaValidCtxtPtr",) libxml2
@c Int32 xmlSchemaValidateDoc ("xmlSchemaValidCtxtPtr","xmlDocPtr") libxml2
@c Int32 xmlSchemaValidateOneElement ("xmlSchemaValidCtxtPtr","xmlNodePtr") libxml2
@c Int32 xmlSchemaValidateStream ("xmlSchemaValidCtxtPtr","xmlParserInputBufferPtr","xmlCharEncoding","xmlSAXHandlerPtr","Ptr{None}") libxml2
@c Int32 xmlSchemaValidateFile ("xmlSchemaValidCtxtPtr","Ptr{Uint8}","Int32") libxml2
@c xmlParserCtxtPtr xmlSchemaValidCtxtGetParserCtxt ("xmlSchemaValidCtxtPtr",) libxml2
@c xmlSchemaSAXPlugPtr xmlSchemaSAXPlug ("xmlSchemaValidCtxtPtr","Ptr{xmlSAXHandlerPtr}","Ptr{Ptr{None}}") libxml2
@c Int32 xmlSchemaSAXUnplug ("xmlSchemaSAXPlugPtr",) libxml2

# Julia wrapper for header: /usr/include/libxml2/libxml/xmlschemastypes.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

@c None xmlSchemaInitTypes () libxml2
@c None xmlSchemaCleanupTypes () libxml2
@c xmlSchemaTypePtr xmlSchemaGetPredefinedType ("Ptr{xmlChar}","Ptr{xmlChar}") libxml2
@c Int32 xmlSchemaValidatePredefinedType ("xmlSchemaTypePtr","Ptr{xmlChar}","Ptr{xmlSchemaValPtr}") libxml2
@c Int32 xmlSchemaValPredefTypeNode ("xmlSchemaTypePtr","Ptr{xmlChar}","Ptr{xmlSchemaValPtr}","xmlNodePtr") libxml2
@c Int32 xmlSchemaValidateFacet ("xmlSchemaTypePtr","xmlSchemaFacetPtr","Ptr{xmlChar}","xmlSchemaValPtr") libxml2
@c Int32 xmlSchemaValidateFacetWhtsp ("xmlSchemaFacetPtr","xmlSchemaWhitespaceValueType","xmlSchemaValType","Ptr{xmlChar}","xmlSchemaValPtr","xmlSchemaWhitespaceValueType") libxml2
@c None xmlSchemaFreeValue ("xmlSchemaValPtr",) libxml2
@c xmlSchemaFacetPtr xmlSchemaNewFacet () libxml2
@c Int32 xmlSchemaCheckFacet ("xmlSchemaFacetPtr","xmlSchemaTypePtr","xmlSchemaParserCtxtPtr","Ptr{xmlChar}") libxml2
@c None xmlSchemaFreeFacet ("xmlSchemaFacetPtr",) libxml2
@c Int32 xmlSchemaCompareValues ("xmlSchemaValPtr","xmlSchemaValPtr") libxml2
@c xmlSchemaTypePtr xmlSchemaGetBuiltInListSimpleTypeItemType ("xmlSchemaTypePtr",) libxml2
@c Int32 xmlSchemaValidateListSimpleTypeFacet ("xmlSchemaFacetPtr","Ptr{xmlChar}","Uint64","Ptr{Uint64}") libxml2
@c xmlSchemaTypePtr xmlSchemaGetBuiltInType ("xmlSchemaValType",) libxml2
@c Int32 xmlSchemaIsBuiltInTypeFacet ("xmlSchemaTypePtr","Int32") libxml2
@c Ptr{xmlChar} xmlSchemaCollapseString ("Ptr{xmlChar}",) libxml2
@c Ptr{xmlChar} xmlSchemaWhiteSpaceReplace ("Ptr{xmlChar}",) libxml2
@c Uint64 xmlSchemaGetFacetValueAsULong ("xmlSchemaFacetPtr",) libxml2
@c Int32 xmlSchemaValidateLengthFacet ("xmlSchemaTypePtr","xmlSchemaFacetPtr","Ptr{xmlChar}","xmlSchemaValPtr","Ptr{Uint64}") libxml2
@c Int32 xmlSchemaValidateLengthFacetWhtsp ("xmlSchemaFacetPtr","xmlSchemaValType","Ptr{xmlChar}","xmlSchemaValPtr","Ptr{Uint64}","xmlSchemaWhitespaceValueType") libxml2
@c Int32 xmlSchemaValPredefTypeNodeNoNorm ("xmlSchemaTypePtr","Ptr{xmlChar}","Ptr{xmlSchemaValPtr}","xmlNodePtr") libxml2
@c Int32 xmlSchemaGetCanonValue ("xmlSchemaValPtr","Ptr{Ptr{xmlChar}}") libxml2
@c Int32 xmlSchemaGetCanonValueWhtsp ("xmlSchemaValPtr","Ptr{Ptr{xmlChar}}","xmlSchemaWhitespaceValueType") libxml2
@c Int32 xmlSchemaValueAppend ("xmlSchemaValPtr","xmlSchemaValPtr") libxml2
@c xmlSchemaValPtr xmlSchemaValueGetNext ("xmlSchemaValPtr",) libxml2
@c Ptr{xmlChar} xmlSchemaValueGetAsString ("xmlSchemaValPtr",) libxml2
@c Int32 xmlSchemaValueGetAsBoolean ("xmlSchemaValPtr",) libxml2
@c xmlSchemaValPtr xmlSchemaNewStringValue ("xmlSchemaValType","Ptr{xmlChar}") libxml2
@c xmlSchemaValPtr xmlSchemaNewNOTATIONValue ("Ptr{xmlChar}","Ptr{xmlChar}") libxml2
@c xmlSchemaValPtr xmlSchemaNewQNameValue ("Ptr{xmlChar}","Ptr{xmlChar}") libxml2
@c Int32 xmlSchemaCompareValuesWhtsp ("xmlSchemaValPtr","xmlSchemaWhitespaceValueType","xmlSchemaValPtr","xmlSchemaWhitespaceValueType") libxml2
@c xmlSchemaValPtr xmlSchemaCopyValue ("xmlSchemaValPtr",) libxml2
@c xmlSchemaValType xmlSchemaGetValType ("xmlSchemaValPtr",) libxml2

# Julia wrapper for header: /usr/include/libxml2/libxml/xmlstring.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

@c Ptr{xmlChar} xmlStrdup ("Ptr{xmlChar}",) libxml2
@c Ptr{xmlChar} xmlStrndup ("Ptr{xmlChar}","Int32") libxml2
@c Ptr{xmlChar} xmlCharStrndup ("Ptr{Uint8}","Int32") libxml2
@c Ptr{xmlChar} xmlCharStrdup ("Ptr{Uint8}",) libxml2
@c Ptr{xmlChar} xmlStrsub ("Ptr{xmlChar}","Int32","Int32") libxml2
@c Ptr{xmlChar} xmlStrchr ("Ptr{xmlChar}","xmlChar") libxml2
@c Ptr{xmlChar} xmlStrstr ("Ptr{xmlChar}","Ptr{xmlChar}") libxml2
@c Ptr{xmlChar} xmlStrcasestr ("Ptr{xmlChar}","Ptr{xmlChar}") libxml2
@c Int32 xmlStrcmp ("Ptr{xmlChar}","Ptr{xmlChar}") libxml2
@c Int32 xmlStrncmp ("Ptr{xmlChar}","Ptr{xmlChar}","Int32") libxml2
@c Int32 xmlStrcasecmp ("Ptr{xmlChar}","Ptr{xmlChar}") libxml2
@c Int32 xmlStrncasecmp ("Ptr{xmlChar}","Ptr{xmlChar}","Int32") libxml2
@c Int32 xmlStrEqual ("Ptr{xmlChar}","Ptr{xmlChar}") libxml2
@c Int32 xmlStrQEqual ("Ptr{xmlChar}","Ptr{xmlChar}","Ptr{xmlChar}") libxml2
@c Int32 xmlStrlen ("Ptr{xmlChar}",) libxml2
@c Ptr{xmlChar} xmlStrcat ("Ptr{xmlChar}","Ptr{xmlChar}") libxml2
@c Ptr{xmlChar} xmlStrncat ("Ptr{xmlChar}","Ptr{xmlChar}","Int32") libxml2
@c Ptr{xmlChar} xmlStrncatNew ("Ptr{xmlChar}","Ptr{xmlChar}","Int32") libxml2
@c Int32 xmlStrPrintf ("Ptr{xmlChar}","Int32","Ptr{xmlChar}") libxml2
@c Int32 xmlStrVPrintf ("Ptr{xmlChar}","Int32","Ptr{xmlChar}","Ptr{__va_list_tag}") libxml2
@c Int32 xmlGetUTF8Char ("Ptr{Uint8}","Ptr{Int32}") libxml2
@c Int32 xmlCheckUTF8 ("Ptr{Uint8}",) libxml2
@c Int32 xmlUTF8Strsize ("Ptr{xmlChar}","Int32") libxml2
@c Ptr{xmlChar} xmlUTF8Strndup ("Ptr{xmlChar}","Int32") libxml2
@c Ptr{xmlChar} xmlUTF8Strpos ("Ptr{xmlChar}","Int32") libxml2
@c Int32 xmlUTF8Strloc ("Ptr{xmlChar}","Ptr{xmlChar}") libxml2
@c Ptr{xmlChar} xmlUTF8Strsub ("Ptr{xmlChar}","Int32","Int32") libxml2
@c Int32 xmlUTF8Strlen ("Ptr{xmlChar}",) libxml2
@c Int32 xmlUTF8Size ("Ptr{xmlChar}",) libxml2
@c Int32 xmlUTF8Charcmp ("Ptr{xmlChar}","Ptr{xmlChar}") libxml2

# Julia wrapper for header: /usr/include/libxml2/libxml/xmlunicode.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

@c Int32 xmlUCSIsAegeanNumbers ("Int32",) libxml2
@c Int32 xmlUCSIsAlphabeticPresentationForms ("Int32",) libxml2
@c Int32 xmlUCSIsArabic ("Int32",) libxml2
@c Int32 xmlUCSIsArabicPresentationFormsA ("Int32",) libxml2
@c Int32 xmlUCSIsArabicPresentationFormsB ("Int32",) libxml2
@c Int32 xmlUCSIsArmenian ("Int32",) libxml2
@c Int32 xmlUCSIsArrows ("Int32",) libxml2
@c Int32 xmlUCSIsBasicLatin ("Int32",) libxml2
@c Int32 xmlUCSIsBengali ("Int32",) libxml2
@c Int32 xmlUCSIsBlockElements ("Int32",) libxml2
@c Int32 xmlUCSIsBopomofo ("Int32",) libxml2
@c Int32 xmlUCSIsBopomofoExtended ("Int32",) libxml2
@c Int32 xmlUCSIsBoxDrawing ("Int32",) libxml2
@c Int32 xmlUCSIsBraillePatterns ("Int32",) libxml2
@c Int32 xmlUCSIsBuhid ("Int32",) libxml2
@c Int32 xmlUCSIsByzantineMusicalSymbols ("Int32",) libxml2
@c Int32 xmlUCSIsCJKCompatibility ("Int32",) libxml2
@c Int32 xmlUCSIsCJKCompatibilityForms ("Int32",) libxml2
@c Int32 xmlUCSIsCJKCompatibilityIdeographs ("Int32",) libxml2
@c Int32 xmlUCSIsCJKCompatibilityIdeographsSupplement ("Int32",) libxml2
@c Int32 xmlUCSIsCJKRadicalsSupplement ("Int32",) libxml2
@c Int32 xmlUCSIsCJKSymbolsandPunctuation ("Int32",) libxml2
@c Int32 xmlUCSIsCJKUnifiedIdeographs ("Int32",) libxml2
@c Int32 xmlUCSIsCJKUnifiedIdeographsExtensionA ("Int32",) libxml2
@c Int32 xmlUCSIsCJKUnifiedIdeographsExtensionB ("Int32",) libxml2
@c Int32 xmlUCSIsCherokee ("Int32",) libxml2
@c Int32 xmlUCSIsCombiningDiacriticalMarks ("Int32",) libxml2
@c Int32 xmlUCSIsCombiningDiacriticalMarksforSymbols ("Int32",) libxml2
@c Int32 xmlUCSIsCombiningHalfMarks ("Int32",) libxml2
@c Int32 xmlUCSIsCombiningMarksforSymbols ("Int32",) libxml2
@c Int32 xmlUCSIsControlPictures ("Int32",) libxml2
@c Int32 xmlUCSIsCurrencySymbols ("Int32",) libxml2
@c Int32 xmlUCSIsCypriotSyllabary ("Int32",) libxml2
@c Int32 xmlUCSIsCyrillic ("Int32",) libxml2
@c Int32 xmlUCSIsCyrillicSupplement ("Int32",) libxml2
@c Int32 xmlUCSIsDeseret ("Int32",) libxml2
@c Int32 xmlUCSIsDevanagari ("Int32",) libxml2
@c Int32 xmlUCSIsDingbats ("Int32",) libxml2
@c Int32 xmlUCSIsEnclosedAlphanumerics ("Int32",) libxml2
@c Int32 xmlUCSIsEnclosedCJKLettersandMonths ("Int32",) libxml2
@c Int32 xmlUCSIsEthiopic ("Int32",) libxml2
@c Int32 xmlUCSIsGeneralPunctuation ("Int32",) libxml2
@c Int32 xmlUCSIsGeometricShapes ("Int32",) libxml2
@c Int32 xmlUCSIsGeorgian ("Int32",) libxml2
@c Int32 xmlUCSIsGothic ("Int32",) libxml2
@c Int32 xmlUCSIsGreek ("Int32",) libxml2
@c Int32 xmlUCSIsGreekExtended ("Int32",) libxml2
@c Int32 xmlUCSIsGreekandCoptic ("Int32",) libxml2
@c Int32 xmlUCSIsGujarati ("Int32",) libxml2
@c Int32 xmlUCSIsGurmukhi ("Int32",) libxml2
@c Int32 xmlUCSIsHalfwidthandFullwidthForms ("Int32",) libxml2
@c Int32 xmlUCSIsHangulCompatibilityJamo ("Int32",) libxml2
@c Int32 xmlUCSIsHangulJamo ("Int32",) libxml2
@c Int32 xmlUCSIsHangulSyllables ("Int32",) libxml2
@c Int32 xmlUCSIsHanunoo ("Int32",) libxml2
@c Int32 xmlUCSIsHebrew ("Int32",) libxml2
@c Int32 xmlUCSIsHighPrivateUseSurrogates ("Int32",) libxml2
@c Int32 xmlUCSIsHighSurrogates ("Int32",) libxml2
@c Int32 xmlUCSIsHiragana ("Int32",) libxml2
@c Int32 xmlUCSIsIPAExtensions ("Int32",) libxml2
@c Int32 xmlUCSIsIdeographicDescriptionCharacters ("Int32",) libxml2
@c Int32 xmlUCSIsKanbun ("Int32",) libxml2
@c Int32 xmlUCSIsKangxiRadicals ("Int32",) libxml2
@c Int32 xmlUCSIsKannada ("Int32",) libxml2
@c Int32 xmlUCSIsKatakana ("Int32",) libxml2
@c Int32 xmlUCSIsKatakanaPhoneticExtensions ("Int32",) libxml2
@c Int32 xmlUCSIsKhmer ("Int32",) libxml2
@c Int32 xmlUCSIsKhmerSymbols ("Int32",) libxml2
@c Int32 xmlUCSIsLao ("Int32",) libxml2
@c Int32 xmlUCSIsLatin1Supplement ("Int32",) libxml2
@c Int32 xmlUCSIsLatinExtendedA ("Int32",) libxml2
@c Int32 xmlUCSIsLatinExtendedB ("Int32",) libxml2
@c Int32 xmlUCSIsLatinExtendedAdditional ("Int32",) libxml2
@c Int32 xmlUCSIsLetterlikeSymbols ("Int32",) libxml2
@c Int32 xmlUCSIsLimbu ("Int32",) libxml2
@c Int32 xmlUCSIsLinearBIdeograms ("Int32",) libxml2
@c Int32 xmlUCSIsLinearBSyllabary ("Int32",) libxml2
@c Int32 xmlUCSIsLowSurrogates ("Int32",) libxml2
@c Int32 xmlUCSIsMalayalam ("Int32",) libxml2
@c Int32 xmlUCSIsMathematicalAlphanumericSymbols ("Int32",) libxml2
@c Int32 xmlUCSIsMathematicalOperators ("Int32",) libxml2
@c Int32 xmlUCSIsMiscellaneousMathematicalSymbolsA ("Int32",) libxml2
@c Int32 xmlUCSIsMiscellaneousMathematicalSymbolsB ("Int32",) libxml2
@c Int32 xmlUCSIsMiscellaneousSymbols ("Int32",) libxml2
@c Int32 xmlUCSIsMiscellaneousSymbolsandArrows ("Int32",) libxml2
@c Int32 xmlUCSIsMiscellaneousTechnical ("Int32",) libxml2
@c Int32 xmlUCSIsMongolian ("Int32",) libxml2
@c Int32 xmlUCSIsMusicalSymbols ("Int32",) libxml2
@c Int32 xmlUCSIsMyanmar ("Int32",) libxml2
@c Int32 xmlUCSIsNumberForms ("Int32",) libxml2
@c Int32 xmlUCSIsOgham ("Int32",) libxml2
@c Int32 xmlUCSIsOldItalic ("Int32",) libxml2
@c Int32 xmlUCSIsOpticalCharacterRecognition ("Int32",) libxml2
@c Int32 xmlUCSIsOriya ("Int32",) libxml2
@c Int32 xmlUCSIsOsmanya ("Int32",) libxml2
@c Int32 xmlUCSIsPhoneticExtensions ("Int32",) libxml2
@c Int32 xmlUCSIsPrivateUse ("Int32",) libxml2
@c Int32 xmlUCSIsPrivateUseArea ("Int32",) libxml2
@c Int32 xmlUCSIsRunic ("Int32",) libxml2
@c Int32 xmlUCSIsShavian ("Int32",) libxml2
@c Int32 xmlUCSIsSinhala ("Int32",) libxml2
@c Int32 xmlUCSIsSmallFormVariants ("Int32",) libxml2
@c Int32 xmlUCSIsSpacingModifierLetters ("Int32",) libxml2
@c Int32 xmlUCSIsSpecials ("Int32",) libxml2
@c Int32 xmlUCSIsSuperscriptsandSubscripts ("Int32",) libxml2
@c Int32 xmlUCSIsSupplementalArrowsA ("Int32",) libxml2
@c Int32 xmlUCSIsSupplementalArrowsB ("Int32",) libxml2
@c Int32 xmlUCSIsSupplementalMathematicalOperators ("Int32",) libxml2
@c Int32 xmlUCSIsSupplementaryPrivateUseAreaA ("Int32",) libxml2
@c Int32 xmlUCSIsSupplementaryPrivateUseAreaB ("Int32",) libxml2
@c Int32 xmlUCSIsSyriac ("Int32",) libxml2
@c Int32 xmlUCSIsTagalog ("Int32",) libxml2
@c Int32 xmlUCSIsTagbanwa ("Int32",) libxml2
@c Int32 xmlUCSIsTags ("Int32",) libxml2
@c Int32 xmlUCSIsTaiLe ("Int32",) libxml2
@c Int32 xmlUCSIsTaiXuanJingSymbols ("Int32",) libxml2
@c Int32 xmlUCSIsTamil ("Int32",) libxml2
@c Int32 xmlUCSIsTelugu ("Int32",) libxml2
@c Int32 xmlUCSIsThaana ("Int32",) libxml2
@c Int32 xmlUCSIsThai ("Int32",) libxml2
@c Int32 xmlUCSIsTibetan ("Int32",) libxml2
@c Int32 xmlUCSIsUgaritic ("Int32",) libxml2
@c Int32 xmlUCSIsUnifiedCanadianAboriginalSyllabics ("Int32",) libxml2
@c Int32 xmlUCSIsVariationSelectors ("Int32",) libxml2
@c Int32 xmlUCSIsVariationSelectorsSupplement ("Int32",) libxml2
@c Int32 xmlUCSIsYiRadicals ("Int32",) libxml2
@c Int32 xmlUCSIsYiSyllables ("Int32",) libxml2
@c Int32 xmlUCSIsYijingHexagramSymbols ("Int32",) libxml2
@c Int32 xmlUCSIsBlock ("Int32","Ptr{Uint8}") libxml2
@c Int32 xmlUCSIsCatC ("Int32",) libxml2
@c Int32 xmlUCSIsCatCc ("Int32",) libxml2
@c Int32 xmlUCSIsCatCf ("Int32",) libxml2
@c Int32 xmlUCSIsCatCo ("Int32",) libxml2
@c Int32 xmlUCSIsCatCs ("Int32",) libxml2
@c Int32 xmlUCSIsCatL ("Int32",) libxml2
@c Int32 xmlUCSIsCatLl ("Int32",) libxml2
@c Int32 xmlUCSIsCatLm ("Int32",) libxml2
@c Int32 xmlUCSIsCatLo ("Int32",) libxml2
@c Int32 xmlUCSIsCatLt ("Int32",) libxml2
@c Int32 xmlUCSIsCatLu ("Int32",) libxml2
@c Int32 xmlUCSIsCatM ("Int32",) libxml2
@c Int32 xmlUCSIsCatMc ("Int32",) libxml2
@c Int32 xmlUCSIsCatMe ("Int32",) libxml2
@c Int32 xmlUCSIsCatMn ("Int32",) libxml2
@c Int32 xmlUCSIsCatN ("Int32",) libxml2
@c Int32 xmlUCSIsCatNd ("Int32",) libxml2
@c Int32 xmlUCSIsCatNl ("Int32",) libxml2
@c Int32 xmlUCSIsCatNo ("Int32",) libxml2
@c Int32 xmlUCSIsCatP ("Int32",) libxml2
@c Int32 xmlUCSIsCatPc ("Int32",) libxml2
@c Int32 xmlUCSIsCatPd ("Int32",) libxml2
@c Int32 xmlUCSIsCatPe ("Int32",) libxml2
@c Int32 xmlUCSIsCatPf ("Int32",) libxml2
@c Int32 xmlUCSIsCatPi ("Int32",) libxml2
@c Int32 xmlUCSIsCatPo ("Int32",) libxml2
@c Int32 xmlUCSIsCatPs ("Int32",) libxml2
@c Int32 xmlUCSIsCatS ("Int32",) libxml2
@c Int32 xmlUCSIsCatSc ("Int32",) libxml2
@c Int32 xmlUCSIsCatSk ("Int32",) libxml2
@c Int32 xmlUCSIsCatSm ("Int32",) libxml2
@c Int32 xmlUCSIsCatSo ("Int32",) libxml2
@c Int32 xmlUCSIsCatZ ("Int32",) libxml2
@c Int32 xmlUCSIsCatZl ("Int32",) libxml2
@c Int32 xmlUCSIsCatZp ("Int32",) libxml2
@c Int32 xmlUCSIsCatZs ("Int32",) libxml2
@c Int32 xmlUCSIsCat ("Int32","Ptr{Uint8}") libxml2

# Julia wrapper for header: /usr/include/libxml2/libxml/xmlversion.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

@c None xmlCheckVersion ("Int32",) libxml2

# Julia wrapper for header: /usr/include/libxml2/libxml/xmlwriter.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

@c xmlTextWriterPtr xmlNewTextWriter ("xmlOutputBufferPtr",) libxml2
@c xmlTextWriterPtr xmlNewTextWriterFilename ("Ptr{Uint8}","Int32") libxml2
@c xmlTextWriterPtr xmlNewTextWriterMemory ("xmlBufferPtr","Int32") libxml2
@c xmlTextWriterPtr xmlNewTextWriterPushParser ("xmlParserCtxtPtr","Int32") libxml2
@c xmlTextWriterPtr xmlNewTextWriterDoc ("Ptr{xmlDocPtr}","Int32") libxml2
@c xmlTextWriterPtr xmlNewTextWriterTree ("xmlDocPtr","xmlNodePtr","Int32") libxml2
@c None xmlFreeTextWriter ("xmlTextWriterPtr",) libxml2
@c Int32 xmlTextWriterStartDocument ("xmlTextWriterPtr","Ptr{Uint8}","Ptr{Uint8}","Ptr{Uint8}") libxml2
@c Int32 xmlTextWriterEndDocument ("xmlTextWriterPtr",) libxml2
@c Int32 xmlTextWriterStartComment ("xmlTextWriterPtr",) libxml2
@c Int32 xmlTextWriterEndComment ("xmlTextWriterPtr",) libxml2
@c Int32 xmlTextWriterWriteFormatComment ("xmlTextWriterPtr","Ptr{Uint8}") libxml2
@c Int32 xmlTextWriterWriteVFormatComment ("xmlTextWriterPtr","Ptr{Uint8}","Ptr{__va_list_tag}") libxml2
@c Int32 xmlTextWriterWriteComment ("xmlTextWriterPtr","Ptr{xmlChar}") libxml2
@c Int32 xmlTextWriterStartElement ("xmlTextWriterPtr","Ptr{xmlChar}") libxml2
@c Int32 xmlTextWriterStartElementNS ("xmlTextWriterPtr","Ptr{xmlChar}","Ptr{xmlChar}","Ptr{xmlChar}") libxml2
@c Int32 xmlTextWriterEndElement ("xmlTextWriterPtr",) libxml2
@c Int32 xmlTextWriterFullEndElement ("xmlTextWriterPtr",) libxml2
@c Int32 xmlTextWriterWriteFormatElement ("xmlTextWriterPtr","Ptr{xmlChar}","Ptr{Uint8}") libxml2
@c Int32 xmlTextWriterWriteVFormatElement ("xmlTextWriterPtr","Ptr{xmlChar}","Ptr{Uint8}","Ptr{__va_list_tag}") libxml2
@c Int32 xmlTextWriterWriteElement ("xmlTextWriterPtr","Ptr{xmlChar}","Ptr{xmlChar}") libxml2
@c Int32 xmlTextWriterWriteFormatElementNS ("xmlTextWriterPtr","Ptr{xmlChar}","Ptr{xmlChar}","Ptr{xmlChar}","Ptr{Uint8}") libxml2
@c Int32 xmlTextWriterWriteVFormatElementNS ("xmlTextWriterPtr","Ptr{xmlChar}","Ptr{xmlChar}","Ptr{xmlChar}","Ptr{Uint8}","Ptr{__va_list_tag}") libxml2
@c Int32 xmlTextWriterWriteElementNS ("xmlTextWriterPtr","Ptr{xmlChar}","Ptr{xmlChar}","Ptr{xmlChar}","Ptr{xmlChar}") libxml2
@c Int32 xmlTextWriterWriteFormatRaw ("xmlTextWriterPtr","Ptr{Uint8}") libxml2
@c Int32 xmlTextWriterWriteVFormatRaw ("xmlTextWriterPtr","Ptr{Uint8}","Ptr{__va_list_tag}") libxml2
@c Int32 xmlTextWriterWriteRawLen ("xmlTextWriterPtr","Ptr{xmlChar}","Int32") libxml2
@c Int32 xmlTextWriterWriteRaw ("xmlTextWriterPtr","Ptr{xmlChar}") libxml2
@c Int32 xmlTextWriterWriteFormatString ("xmlTextWriterPtr","Ptr{Uint8}") libxml2
@c Int32 xmlTextWriterWriteVFormatString ("xmlTextWriterPtr","Ptr{Uint8}","Ptr{__va_list_tag}") libxml2
@c Int32 xmlTextWriterWriteString ("xmlTextWriterPtr","Ptr{xmlChar}") libxml2
@c Int32 xmlTextWriterWriteBase64 ("xmlTextWriterPtr","Ptr{Uint8}","Int32","Int32") libxml2
@c Int32 xmlTextWriterWriteBinHex ("xmlTextWriterPtr","Ptr{Uint8}","Int32","Int32") libxml2
@c Int32 xmlTextWriterStartAttribute ("xmlTextWriterPtr","Ptr{xmlChar}") libxml2
@c Int32 xmlTextWriterStartAttributeNS ("xmlTextWriterPtr","Ptr{xmlChar}","Ptr{xmlChar}","Ptr{xmlChar}") libxml2
@c Int32 xmlTextWriterEndAttribute ("xmlTextWriterPtr",) libxml2
@c Int32 xmlTextWriterWriteFormatAttribute ("xmlTextWriterPtr","Ptr{xmlChar}","Ptr{Uint8}") libxml2
@c Int32 xmlTextWriterWriteVFormatAttribute ("xmlTextWriterPtr","Ptr{xmlChar}","Ptr{Uint8}","Ptr{__va_list_tag}") libxml2
@c Int32 xmlTextWriterWriteAttribute ("xmlTextWriterPtr","Ptr{xmlChar}","Ptr{xmlChar}") libxml2
@c Int32 xmlTextWriterWriteFormatAttributeNS ("xmlTextWriterPtr","Ptr{xmlChar}","Ptr{xmlChar}","Ptr{xmlChar}","Ptr{Uint8}") libxml2
@c Int32 xmlTextWriterWriteVFormatAttributeNS ("xmlTextWriterPtr","Ptr{xmlChar}","Ptr{xmlChar}","Ptr{xmlChar}","Ptr{Uint8}","Ptr{__va_list_tag}") libxml2
@c Int32 xmlTextWriterWriteAttributeNS ("xmlTextWriterPtr","Ptr{xmlChar}","Ptr{xmlChar}","Ptr{xmlChar}","Ptr{xmlChar}") libxml2
@c Int32 xmlTextWriterStartPI ("xmlTextWriterPtr","Ptr{xmlChar}") libxml2
@c Int32 xmlTextWriterEndPI ("xmlTextWriterPtr",) libxml2
@c Int32 xmlTextWriterWriteFormatPI ("xmlTextWriterPtr","Ptr{xmlChar}","Ptr{Uint8}") libxml2
@c Int32 xmlTextWriterWriteVFormatPI ("xmlTextWriterPtr","Ptr{xmlChar}","Ptr{Uint8}","Ptr{__va_list_tag}") libxml2
@c Int32 xmlTextWriterWritePI ("xmlTextWriterPtr","Ptr{xmlChar}","Ptr{xmlChar}") libxml2
@c Int32 xmlTextWriterStartCDATA ("xmlTextWriterPtr",) libxml2
@c Int32 xmlTextWriterEndCDATA ("xmlTextWriterPtr",) libxml2
@c Int32 xmlTextWriterWriteFormatCDATA ("xmlTextWriterPtr","Ptr{Uint8}") libxml2
@c Int32 xmlTextWriterWriteVFormatCDATA ("xmlTextWriterPtr","Ptr{Uint8}","Ptr{__va_list_tag}") libxml2
@c Int32 xmlTextWriterWriteCDATA ("xmlTextWriterPtr","Ptr{xmlChar}") libxml2
@c Int32 xmlTextWriterStartDTD ("xmlTextWriterPtr","Ptr{xmlChar}","Ptr{xmlChar}","Ptr{xmlChar}") libxml2
@c Int32 xmlTextWriterEndDTD ("xmlTextWriterPtr",) libxml2
@c Int32 xmlTextWriterWriteFormatDTD ("xmlTextWriterPtr","Ptr{xmlChar}","Ptr{xmlChar}","Ptr{xmlChar}","Ptr{Uint8}") libxml2
@c Int32 xmlTextWriterWriteVFormatDTD ("xmlTextWriterPtr","Ptr{xmlChar}","Ptr{xmlChar}","Ptr{xmlChar}","Ptr{Uint8}","Ptr{__va_list_tag}") libxml2
@c Int32 xmlTextWriterWriteDTD ("xmlTextWriterPtr","Ptr{xmlChar}","Ptr{xmlChar}","Ptr{xmlChar}","Ptr{xmlChar}") libxml2
@c Int32 xmlTextWriterStartDTDElement ("xmlTextWriterPtr","Ptr{xmlChar}") libxml2
@c Int32 xmlTextWriterEndDTDElement ("xmlTextWriterPtr",) libxml2
@c Int32 xmlTextWriterWriteFormatDTDElement ("xmlTextWriterPtr","Ptr{xmlChar}","Ptr{Uint8}") libxml2
@c Int32 xmlTextWriterWriteVFormatDTDElement ("xmlTextWriterPtr","Ptr{xmlChar}","Ptr{Uint8}","Ptr{__va_list_tag}") libxml2
@c Int32 xmlTextWriterWriteDTDElement ("xmlTextWriterPtr","Ptr{xmlChar}","Ptr{xmlChar}") libxml2
@c Int32 xmlTextWriterStartDTDAttlist ("xmlTextWriterPtr","Ptr{xmlChar}") libxml2
@c Int32 xmlTextWriterEndDTDAttlist ("xmlTextWriterPtr",) libxml2
@c Int32 xmlTextWriterWriteFormatDTDAttlist ("xmlTextWriterPtr","Ptr{xmlChar}","Ptr{Uint8}") libxml2
@c Int32 xmlTextWriterWriteVFormatDTDAttlist ("xmlTextWriterPtr","Ptr{xmlChar}","Ptr{Uint8}","Ptr{__va_list_tag}") libxml2
@c Int32 xmlTextWriterWriteDTDAttlist ("xmlTextWriterPtr","Ptr{xmlChar}","Ptr{xmlChar}") libxml2
@c Int32 xmlTextWriterStartDTDEntity ("xmlTextWriterPtr","Int32","Ptr{xmlChar}") libxml2
@c Int32 xmlTextWriterEndDTDEntity ("xmlTextWriterPtr",) libxml2
@c Int32 xmlTextWriterWriteFormatDTDInternalEntity ("xmlTextWriterPtr","Int32","Ptr{xmlChar}","Ptr{Uint8}") libxml2
@c Int32 xmlTextWriterWriteVFormatDTDInternalEntity ("xmlTextWriterPtr","Int32","Ptr{xmlChar}","Ptr{Uint8}","Ptr{__va_list_tag}") libxml2
@c Int32 xmlTextWriterWriteDTDInternalEntity ("xmlTextWriterPtr","Int32","Ptr{xmlChar}","Ptr{xmlChar}") libxml2
@c Int32 xmlTextWriterWriteDTDExternalEntity ("xmlTextWriterPtr","Int32","Ptr{xmlChar}","Ptr{xmlChar}","Ptr{xmlChar}","Ptr{xmlChar}") libxml2
@c Int32 xmlTextWriterWriteDTDExternalEntityContents ("xmlTextWriterPtr","Ptr{xmlChar}","Ptr{xmlChar}","Ptr{xmlChar}") libxml2
@c Int32 xmlTextWriterWriteDTDEntity ("xmlTextWriterPtr","Int32","Ptr{xmlChar}","Ptr{xmlChar}","Ptr{xmlChar}","Ptr{xmlChar}","Ptr{xmlChar}") libxml2
@c Int32 xmlTextWriterWriteDTDNotation ("xmlTextWriterPtr","Ptr{xmlChar}","Ptr{xmlChar}","Ptr{xmlChar}") libxml2
@c Int32 xmlTextWriterSetIndent ("xmlTextWriterPtr","Int32") libxml2
@c Int32 xmlTextWriterSetIndentString ("xmlTextWriterPtr","Ptr{xmlChar}") libxml2
@c Int32 xmlTextWriterFlush ("xmlTextWriterPtr",) libxml2

# Julia wrapper for header: /usr/include/libxml2/libxml/xpath.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

@c None xmlXPathFreeObject ("xmlXPathObjectPtr",) libxml2
@c xmlNodeSetPtr xmlXPathNodeSetCreate ("xmlNodePtr",) libxml2
@c None xmlXPathFreeNodeSetList ("xmlXPathObjectPtr",) libxml2
@c None xmlXPathFreeNodeSet ("xmlNodeSetPtr",) libxml2
@c xmlXPathObjectPtr xmlXPathObjectCopy ("xmlXPathObjectPtr",) libxml2
@c Int32 xmlXPathCmpNodes ("xmlNodePtr","xmlNodePtr") libxml2
@c Int32 xmlXPathCastNumberToBoolean ("Float64",) libxml2
@c Int32 xmlXPathCastStringToBoolean ("Ptr{xmlChar}",) libxml2
@c Int32 xmlXPathCastNodeSetToBoolean ("xmlNodeSetPtr",) libxml2
@c Int32 xmlXPathCastToBoolean ("xmlXPathObjectPtr",) libxml2
@c Float64 xmlXPathCastBooleanToNumber ("Int32",) libxml2
@c Float64 xmlXPathCastStringToNumber ("Ptr{xmlChar}",) libxml2
@c Float64 xmlXPathCastNodeToNumber ("xmlNodePtr",) libxml2
@c Float64 xmlXPathCastNodeSetToNumber ("xmlNodeSetPtr",) libxml2
@c Float64 xmlXPathCastToNumber ("xmlXPathObjectPtr",) libxml2
@c Ptr{xmlChar} xmlXPathCastBooleanToString ("Int32",) libxml2
@c Ptr{xmlChar} xmlXPathCastNumberToString ("Float64",) libxml2
@c Ptr{xmlChar} xmlXPathCastNodeToString ("xmlNodePtr",) libxml2
@c Ptr{xmlChar} xmlXPathCastNodeSetToString ("xmlNodeSetPtr",) libxml2
@c Ptr{xmlChar} xmlXPathCastToString ("xmlXPathObjectPtr",) libxml2
@c xmlXPathObjectPtr xmlXPathConvertBoolean ("xmlXPathObjectPtr",) libxml2
@c xmlXPathObjectPtr xmlXPathConvertNumber ("xmlXPathObjectPtr",) libxml2
@c xmlXPathObjectPtr xmlXPathConvertString ("xmlXPathObjectPtr",) libxml2
@c xmlXPathContextPtr xmlXPathNewContext ("xmlDocPtr",) libxml2
@c None xmlXPathFreeContext ("xmlXPathContextPtr",) libxml2
@c Int32 xmlXPathContextSetCache ("xmlXPathContextPtr","Int32","Int32","Int32") libxml2
@c Int64 xmlXPathOrderDocElems ("xmlDocPtr",) libxml2
@c xmlXPathObjectPtr xmlXPathEval ("Ptr{xmlChar}","xmlXPathContextPtr") libxml2
@c xmlXPathObjectPtr xmlXPathEvalExpression ("Ptr{xmlChar}","xmlXPathContextPtr") libxml2
@c Int32 xmlXPathEvalPredicate ("xmlXPathContextPtr","xmlXPathObjectPtr") libxml2
@c xmlXPathCompExprPtr xmlXPathCompile ("Ptr{xmlChar}",) libxml2
@c xmlXPathCompExprPtr xmlXPathCtxtCompile ("xmlXPathContextPtr","Ptr{xmlChar}") libxml2
@c xmlXPathObjectPtr xmlXPathCompiledEval ("xmlXPathCompExprPtr","xmlXPathContextPtr") libxml2
@c Int32 xmlXPathCompiledEvalToBoolean ("xmlXPathCompExprPtr","xmlXPathContextPtr") libxml2
@c None xmlXPathFreeCompExpr ("xmlXPathCompExprPtr",) libxml2
@c None xmlXPathInit () libxml2
@c Int32 xmlXPathIsNaN ("Float64",) libxml2
@c Int32 xmlXPathIsInf ("Float64",) libxml2

# Julia wrapper for header: /usr/include/libxml2/libxml/xpathInternals.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

@c Int32 xmlXPathPopBoolean ("xmlXPathParserContextPtr",) libxml2
@c Float64 xmlXPathPopNumber ("xmlXPathParserContextPtr",) libxml2
@c Ptr{xmlChar} xmlXPathPopString ("xmlXPathParserContextPtr",) libxml2
@c xmlNodeSetPtr xmlXPathPopNodeSet ("xmlXPathParserContextPtr",) libxml2
@c Ptr{None} xmlXPathPopExternal ("xmlXPathParserContextPtr",) libxml2
@c None xmlXPathRegisterVariableLookup ("xmlXPathContextPtr","xmlXPathVariableLookupFunc","Ptr{None}") libxml2
@c None xmlXPathRegisterFuncLookup ("xmlXPathContextPtr","xmlXPathFuncLookupFunc","Ptr{None}") libxml2
@c None xmlXPatherror ("xmlXPathParserContextPtr","Ptr{Uint8}","Int32","Int32") libxml2
@c None xmlXPathErr ("xmlXPathParserContextPtr","Int32") libxml2
@c None xmlXPathDebugDumpObject ("Ptr{FILE}","xmlXPathObjectPtr","Int32") libxml2
@c None xmlXPathDebugDumpCompExpr ("Ptr{FILE}","xmlXPathCompExprPtr","Int32") libxml2
@c Int32 xmlXPathNodeSetContains ("xmlNodeSetPtr","xmlNodePtr") libxml2
@c xmlNodeSetPtr xmlXPathDifference ("xmlNodeSetPtr","xmlNodeSetPtr") libxml2
@c xmlNodeSetPtr xmlXPathIntersection ("xmlNodeSetPtr","xmlNodeSetPtr") libxml2
@c xmlNodeSetPtr xmlXPathDistinctSorted ("xmlNodeSetPtr",) libxml2
@c xmlNodeSetPtr xmlXPathDistinct ("xmlNodeSetPtr",) libxml2
@c Int32 xmlXPathHasSameNodes ("xmlNodeSetPtr","xmlNodeSetPtr") libxml2
@c xmlNodeSetPtr xmlXPathNodeLeadingSorted ("xmlNodeSetPtr","xmlNodePtr") libxml2
@c xmlNodeSetPtr xmlXPathLeadingSorted ("xmlNodeSetPtr","xmlNodeSetPtr") libxml2
@c xmlNodeSetPtr xmlXPathNodeLeading ("xmlNodeSetPtr","xmlNodePtr") libxml2
@c xmlNodeSetPtr xmlXPathLeading ("xmlNodeSetPtr","xmlNodeSetPtr") libxml2
@c xmlNodeSetPtr xmlXPathNodeTrailingSorted ("xmlNodeSetPtr","xmlNodePtr") libxml2
@c xmlNodeSetPtr xmlXPathTrailingSorted ("xmlNodeSetPtr","xmlNodeSetPtr") libxml2
@c xmlNodeSetPtr xmlXPathNodeTrailing ("xmlNodeSetPtr","xmlNodePtr") libxml2
@c xmlNodeSetPtr xmlXPathTrailing ("xmlNodeSetPtr","xmlNodeSetPtr") libxml2
@c Int32 xmlXPathRegisterNs ("xmlXPathContextPtr","Ptr{xmlChar}","Ptr{xmlChar}") libxml2
@c Ptr{xmlChar} xmlXPathNsLookup ("xmlXPathContextPtr","Ptr{xmlChar}") libxml2
@c None xmlXPathRegisteredNsCleanup ("xmlXPathContextPtr",) libxml2
@c Int32 xmlXPathRegisterFunc ("xmlXPathContextPtr","Ptr{xmlChar}","xmlXPathFunction") libxml2
@c Int32 xmlXPathRegisterFuncNS ("xmlXPathContextPtr","Ptr{xmlChar}","Ptr{xmlChar}","xmlXPathFunction") libxml2
@c Int32 xmlXPathRegisterVariable ("xmlXPathContextPtr","Ptr{xmlChar}","xmlXPathObjectPtr") libxml2
@c Int32 xmlXPathRegisterVariableNS ("xmlXPathContextPtr","Ptr{xmlChar}","Ptr{xmlChar}","xmlXPathObjectPtr") libxml2
@c xmlXPathFunction xmlXPathFunctionLookup ("xmlXPathContextPtr","Ptr{xmlChar}") libxml2
@c xmlXPathFunction xmlXPathFunctionLookupNS ("xmlXPathContextPtr","Ptr{xmlChar}","Ptr{xmlChar}") libxml2
@c None xmlXPathRegisteredFuncsCleanup ("xmlXPathContextPtr",) libxml2
@c xmlXPathObjectPtr xmlXPathVariableLookup ("xmlXPathContextPtr","Ptr{xmlChar}") libxml2
@c xmlXPathObjectPtr xmlXPathVariableLookupNS ("xmlXPathContextPtr","Ptr{xmlChar}","Ptr{xmlChar}") libxml2
@c None xmlXPathRegisteredVariablesCleanup ("xmlXPathContextPtr",) libxml2
@c xmlXPathParserContextPtr xmlXPathNewParserContext ("Ptr{xmlChar}","xmlXPathContextPtr") libxml2
@c None xmlXPathFreeParserContext ("xmlXPathParserContextPtr",) libxml2
@c xmlXPathObjectPtr valuePop ("xmlXPathParserContextPtr",) libxml2
@c Int32 valuePush ("xmlXPathParserContextPtr","xmlXPathObjectPtr") libxml2
@c xmlXPathObjectPtr xmlXPathNewString ("Ptr{xmlChar}",) libxml2
@c xmlXPathObjectPtr xmlXPathNewCString ("Ptr{Uint8}",) libxml2
@c xmlXPathObjectPtr xmlXPathWrapString ("Ptr{xmlChar}",) libxml2
@c xmlXPathObjectPtr xmlXPathWrapCString ("Ptr{Uint8}",) libxml2
@c xmlXPathObjectPtr xmlXPathNewFloat ("Float64",) libxml2
@c xmlXPathObjectPtr xmlXPathNewBoolean ("Int32",) libxml2
@c xmlXPathObjectPtr xmlXPathNewNodeSet ("xmlNodePtr",) libxml2
@c xmlXPathObjectPtr xmlXPathNewValueTree ("xmlNodePtr",) libxml2
@c None xmlXPathNodeSetAdd ("xmlNodeSetPtr","xmlNodePtr") libxml2
@c None xmlXPathNodeSetAddUnique ("xmlNodeSetPtr","xmlNodePtr") libxml2
@c None xmlXPathNodeSetAddNs ("xmlNodeSetPtr","xmlNodePtr","xmlNsPtr") libxml2
@c None xmlXPathNodeSetSort ("xmlNodeSetPtr",) libxml2
@c None xmlXPathRoot ("xmlXPathParserContextPtr",) libxml2
@c None xmlXPathEvalExpr ("xmlXPathParserContextPtr",) libxml2
@c Ptr{xmlChar} xmlXPathParseName ("xmlXPathParserContextPtr",) libxml2
@c Ptr{xmlChar} xmlXPathParseNCName ("xmlXPathParserContextPtr",) libxml2
@c Float64 xmlXPathStringEvalNumber ("Ptr{xmlChar}",) libxml2
@c Int32 xmlXPathEvaluatePredicateResult ("xmlXPathParserContextPtr","xmlXPathObjectPtr") libxml2
@c None xmlXPathRegisterAllFunctions ("xmlXPathContextPtr",) libxml2
@c xmlNodeSetPtr xmlXPathNodeSetMerge ("xmlNodeSetPtr","xmlNodeSetPtr") libxml2
@c None xmlXPathNodeSetDel ("xmlNodeSetPtr","xmlNodePtr") libxml2
@c None xmlXPathNodeSetRemove ("xmlNodeSetPtr","Int32") libxml2
@c xmlXPathObjectPtr xmlXPathNewNodeSetList ("xmlNodeSetPtr",) libxml2
@c xmlXPathObjectPtr xmlXPathWrapNodeSet ("xmlNodeSetPtr",) libxml2
@c xmlXPathObjectPtr xmlXPathWrapExternal ("Ptr{None}",) libxml2
@c Int32 xmlXPathEqualValues ("xmlXPathParserContextPtr",) libxml2
@c Int32 xmlXPathNotEqualValues ("xmlXPathParserContextPtr",) libxml2
@c Int32 xmlXPathCompareValues ("xmlXPathParserContextPtr","Int32","Int32") libxml2
@c None xmlXPathValueFlipSign ("xmlXPathParserContextPtr",) libxml2
@c None xmlXPathAddValues ("xmlXPathParserContextPtr",) libxml2
@c None xmlXPathSubValues ("xmlXPathParserContextPtr",) libxml2
@c None xmlXPathMultValues ("xmlXPathParserContextPtr",) libxml2
@c None xmlXPathDivValues ("xmlXPathParserContextPtr",) libxml2
@c None xmlXPathModValues ("xmlXPathParserContextPtr",) libxml2
@c Int32 xmlXPathIsNodeType ("Ptr{xmlChar}",) libxml2
@c xmlNodePtr xmlXPathNextSelf ("xmlXPathParserContextPtr","xmlNodePtr") libxml2
@c xmlNodePtr xmlXPathNextChild ("xmlXPathParserContextPtr","xmlNodePtr") libxml2
@c xmlNodePtr xmlXPathNextDescendant ("xmlXPathParserContextPtr","xmlNodePtr") libxml2
@c xmlNodePtr xmlXPathNextDescendantOrSelf ("xmlXPathParserContextPtr","xmlNodePtr") libxml2
@c xmlNodePtr xmlXPathNextParent ("xmlXPathParserContextPtr","xmlNodePtr") libxml2
@c xmlNodePtr xmlXPathNextAncestorOrSelf ("xmlXPathParserContextPtr","xmlNodePtr") libxml2
@c xmlNodePtr xmlXPathNextFollowingSibling ("xmlXPathParserContextPtr","xmlNodePtr") libxml2
@c xmlNodePtr xmlXPathNextFollowing ("xmlXPathParserContextPtr","xmlNodePtr") libxml2
@c xmlNodePtr xmlXPathNextNamespace ("xmlXPathParserContextPtr","xmlNodePtr") libxml2
@c xmlNodePtr xmlXPathNextAttribute ("xmlXPathParserContextPtr","xmlNodePtr") libxml2
@c xmlNodePtr xmlXPathNextPreceding ("xmlXPathParserContextPtr","xmlNodePtr") libxml2
@c xmlNodePtr xmlXPathNextAncestor ("xmlXPathParserContextPtr","xmlNodePtr") libxml2
@c xmlNodePtr xmlXPathNextPrecedingSibling ("xmlXPathParserContextPtr","xmlNodePtr") libxml2
@c None xmlXPathLastFunction ("xmlXPathParserContextPtr","Int32") libxml2
@c None xmlXPathPositionFunction ("xmlXPathParserContextPtr","Int32") libxml2
@c None xmlXPathCountFunction ("xmlXPathParserContextPtr","Int32") libxml2
@c None xmlXPathIdFunction ("xmlXPathParserContextPtr","Int32") libxml2
@c None xmlXPathLocalNameFunction ("xmlXPathParserContextPtr","Int32") libxml2
@c None xmlXPathNamespaceURIFunction ("xmlXPathParserContextPtr","Int32") libxml2
@c None xmlXPathStringFunction ("xmlXPathParserContextPtr","Int32") libxml2
@c None xmlXPathStringLengthFunction ("xmlXPathParserContextPtr","Int32") libxml2
@c None xmlXPathConcatFunction ("xmlXPathParserContextPtr","Int32") libxml2
@c None xmlXPathContainsFunction ("xmlXPathParserContextPtr","Int32") libxml2
@c None xmlXPathStartsWithFunction ("xmlXPathParserContextPtr","Int32") libxml2
@c None xmlXPathSubstringFunction ("xmlXPathParserContextPtr","Int32") libxml2
@c None xmlXPathSubstringBeforeFunction ("xmlXPathParserContextPtr","Int32") libxml2
@c None xmlXPathSubstringAfterFunction ("xmlXPathParserContextPtr","Int32") libxml2
@c None xmlXPathNormalizeFunction ("xmlXPathParserContextPtr","Int32") libxml2
@c None xmlXPathTranslateFunction ("xmlXPathParserContextPtr","Int32") libxml2
@c None xmlXPathNotFunction ("xmlXPathParserContextPtr","Int32") libxml2
@c None xmlXPathTrueFunction ("xmlXPathParserContextPtr","Int32") libxml2
@c None xmlXPathFalseFunction ("xmlXPathParserContextPtr","Int32") libxml2
@c None xmlXPathLangFunction ("xmlXPathParserContextPtr","Int32") libxml2
@c None xmlXPathNumberFunction ("xmlXPathParserContextPtr","Int32") libxml2
@c None xmlXPathSumFunction ("xmlXPathParserContextPtr","Int32") libxml2
@c None xmlXPathFloorFunction ("xmlXPathParserContextPtr","Int32") libxml2
@c None xmlXPathCeilingFunction ("xmlXPathParserContextPtr","Int32") libxml2
@c None xmlXPathRoundFunction ("xmlXPathParserContextPtr","Int32") libxml2
@c None xmlXPathBooleanFunction ("xmlXPathParserContextPtr","Int32") libxml2
@c None xmlXPathNodeSetFreeNs ("xmlNsPtr",) libxml2

# Julia wrapper for header: /usr/include/libxml2/libxml/xpointer.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

@c xmlLocationSetPtr xmlXPtrLocationSetCreate ("xmlXPathObjectPtr",) libxml2
@c None xmlXPtrFreeLocationSet ("xmlLocationSetPtr",) libxml2
@c xmlLocationSetPtr xmlXPtrLocationSetMerge ("xmlLocationSetPtr","xmlLocationSetPtr") libxml2
@c xmlXPathObjectPtr xmlXPtrNewRange ("xmlNodePtr","Int32","xmlNodePtr","Int32") libxml2
@c xmlXPathObjectPtr xmlXPtrNewRangePoints ("xmlXPathObjectPtr","xmlXPathObjectPtr") libxml2
@c xmlXPathObjectPtr xmlXPtrNewRangeNodePoint ("xmlNodePtr","xmlXPathObjectPtr") libxml2
@c xmlXPathObjectPtr xmlXPtrNewRangePointNode ("xmlXPathObjectPtr","xmlNodePtr") libxml2
@c xmlXPathObjectPtr xmlXPtrNewRangeNodes ("xmlNodePtr","xmlNodePtr") libxml2
@c xmlXPathObjectPtr xmlXPtrNewLocationSetNodes ("xmlNodePtr","xmlNodePtr") libxml2
@c xmlXPathObjectPtr xmlXPtrNewLocationSetNodeSet ("xmlNodeSetPtr",) libxml2
@c xmlXPathObjectPtr xmlXPtrNewRangeNodeObject ("xmlNodePtr","xmlXPathObjectPtr") libxml2
@c xmlXPathObjectPtr xmlXPtrNewCollapsedRange ("xmlNodePtr",) libxml2
@c None xmlXPtrLocationSetAdd ("xmlLocationSetPtr","xmlXPathObjectPtr") libxml2
@c xmlXPathObjectPtr xmlXPtrWrapLocationSet ("xmlLocationSetPtr",) libxml2
@c None xmlXPtrLocationSetDel ("xmlLocationSetPtr","xmlXPathObjectPtr") libxml2
@c None xmlXPtrLocationSetRemove ("xmlLocationSetPtr","Int32") libxml2
@c xmlXPathContextPtr xmlXPtrNewContext ("xmlDocPtr","xmlNodePtr","xmlNodePtr") libxml2
@c xmlXPathObjectPtr xmlXPtrEval ("Ptr{xmlChar}","xmlXPathContextPtr") libxml2
@c None xmlXPtrRangeToFunction ("xmlXPathParserContextPtr","Int32") libxml2
@c xmlNodePtr xmlXPtrBuildNodeList ("xmlXPathObjectPtr",) libxml2
@c None xmlXPtrEvalRangePredicate ("xmlXPathParserContextPtr",) libxml2

