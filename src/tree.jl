# Julia wrapper for header: /usr/include/libxml2/libxml/tree.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

@c Int32 xmlValidateNCName (Ptr{xmlChar}, Int32) libxml2
@c Int32 xmlValidateQName (Ptr{xmlChar}, Int32) libxml2
@c Int32 xmlValidateName (Ptr{xmlChar}, Int32) libxml2
@c Int32 xmlValidateNMToken (Ptr{xmlChar}, Int32) libxml2
@c Ptr{xmlChar} xmlBuildQName (Ptr{xmlChar}, Ptr{xmlChar}, Ptr{xmlChar}, Int32) libxml2
@c Ptr{xmlChar} xmlSplitQName2 (Ptr{xmlChar}, Ptr{Ptr{xmlChar}}) libxml2
@c Ptr{xmlChar} xmlSplitQName3 (Ptr{xmlChar}, Ptr{Int32}) libxml2
@c None xmlSetBufferAllocationScheme (xmlBufferAllocationScheme,) libxml2
@c xmlBufferAllocationScheme xmlGetBufferAllocationScheme () libxml2
@c xmlBufferPtr xmlBufferCreate () libxml2
@c xmlBufferPtr xmlBufferCreateSize (size_t,) libxml2
@c xmlBufferPtr xmlBufferCreateStatic (Ptr{None}, size_t) libxml2
@c Int32 xmlBufferResize (xmlBufferPtr, Uint32) libxml2
@c None xmlBufferFree (xmlBufferPtr,) libxml2
@c Int32 xmlBufferDump (Ptr{FILE}, xmlBufferPtr) libxml2
@c Int32 xmlBufferAdd (xmlBufferPtr, Ptr{xmlChar}, Int32) libxml2
@c Int32 xmlBufferAddHead (xmlBufferPtr, Ptr{xmlChar}, Int32) libxml2
@c Int32 xmlBufferCat (xmlBufferPtr, Ptr{xmlChar}) libxml2
@c Int32 xmlBufferCCat (xmlBufferPtr, Ptr{Uint8}) libxml2
@c Int32 xmlBufferShrink (xmlBufferPtr, Uint32) libxml2
@c Int32 xmlBufferGrow (xmlBufferPtr, Uint32) libxml2
@c None xmlBufferEmpty (xmlBufferPtr,) libxml2
@c Ptr{xmlChar} xmlBufferContent (xmlBufferPtr,) libxml2
@c None xmlBufferSetAllocationScheme (xmlBufferPtr, xmlBufferAllocationScheme) libxml2
@c Int32 xmlBufferLength (xmlBufferPtr,) libxml2
@c xmlDtdPtr xmlCreateIntSubset (xmlDocPtr, Ptr{xmlChar}, Ptr{xmlChar}, Ptr{xmlChar}) libxml2
@c xmlDtdPtr xmlNewDtd (xmlDocPtr, Ptr{xmlChar}, Ptr{xmlChar}, Ptr{xmlChar}) libxml2
@c xmlDtdPtr xmlGetIntSubset (xmlDocPtr,) libxml2
@c None xmlFreeDtd (xmlDtdPtr,) libxml2
@c xmlNsPtr xmlNewGlobalNs (xmlDocPtr, Ptr{xmlChar}, Ptr{xmlChar}) libxml2
@c xmlNsPtr xmlNewNs (xmlNodePtr, Ptr{xmlChar}, Ptr{xmlChar}) libxml2
@c None xmlFreeNs (xmlNsPtr,) libxml2
@c None xmlFreeNsList (xmlNsPtr,) libxml2
@c xmlDocPtr xmlNewDoc (Ptr{xmlChar},) libxml2
@c None xmlFreeDoc (xmlDocPtr,) libxml2
@c xmlAttrPtr xmlNewDocProp (xmlDocPtr, Ptr{xmlChar}, Ptr{xmlChar}) libxml2
@c xmlAttrPtr xmlNewProp (xmlNodePtr, Ptr{xmlChar}, Ptr{xmlChar}) libxml2
@c xmlAttrPtr xmlNewNsProp (xmlNodePtr, xmlNsPtr, Ptr{xmlChar}, Ptr{xmlChar}) libxml2
@c xmlAttrPtr xmlNewNsPropEatName (xmlNodePtr, xmlNsPtr, Ptr{xmlChar}, Ptr{xmlChar}) libxml2
@c None xmlFreePropList (xmlAttrPtr,) libxml2
@c None xmlFreeProp (xmlAttrPtr,) libxml2
@c xmlAttrPtr xmlCopyProp (xmlNodePtr, xmlAttrPtr) libxml2
@c xmlAttrPtr xmlCopyPropList (xmlNodePtr, xmlAttrPtr) libxml2
@c xmlDtdPtr xmlCopyDtd (xmlDtdPtr,) libxml2
@c xmlDocPtr xmlCopyDoc (xmlDocPtr, Int32) libxml2
@c xmlNodePtr xmlNewDocNode (xmlDocPtr, xmlNsPtr, Ptr{xmlChar}, Ptr{xmlChar}) libxml2
@c xmlNodePtr xmlNewDocNodeEatName (xmlDocPtr, xmlNsPtr, Ptr{xmlChar}, Ptr{xmlChar}) libxml2
@c xmlNodePtr xmlNewNode (xmlNsPtr, Ptr{xmlChar}) libxml2
@c xmlNodePtr xmlNewNodeEatName (xmlNsPtr, Ptr{xmlChar}) libxml2
@c xmlNodePtr xmlNewChild (xmlNodePtr, xmlNsPtr, Ptr{xmlChar}, Ptr{xmlChar}) libxml2
@c xmlNodePtr xmlNewDocText (xmlDocPtr, Ptr{xmlChar}) libxml2
@c xmlNodePtr xmlNewText (Ptr{xmlChar},) libxml2
@c xmlNodePtr xmlNewDocPI (xmlDocPtr, Ptr{xmlChar}, Ptr{xmlChar}) libxml2
@c xmlNodePtr xmlNewPI (Ptr{xmlChar}, Ptr{xmlChar}) libxml2
@c xmlNodePtr xmlNewDocTextLen (xmlDocPtr, Ptr{xmlChar}, Int32) libxml2
@c xmlNodePtr xmlNewTextLen (Ptr{xmlChar}, Int32) libxml2
@c xmlNodePtr xmlNewDocComment (xmlDocPtr, Ptr{xmlChar}) libxml2
@c xmlNodePtr xmlNewComment (Ptr{xmlChar},) libxml2
@c xmlNodePtr xmlNewCDataBlock (xmlDocPtr, Ptr{xmlChar}, Int32) libxml2
@c xmlNodePtr xmlNewCharRef (xmlDocPtr, Ptr{xmlChar}) libxml2
@c xmlNodePtr xmlNewReference (xmlDocPtr, Ptr{xmlChar}) libxml2
@c xmlNodePtr xmlCopyNode (xmlNodePtr, Int32) libxml2
@c xmlNodePtr xmlDocCopyNode (xmlNodePtr, xmlDocPtr, Int32) libxml2
@c xmlNodePtr xmlDocCopyNodeList (xmlDocPtr, xmlNodePtr) libxml2
@c xmlNodePtr xmlCopyNodeList (xmlNodePtr,) libxml2
@c xmlNodePtr xmlNewTextChild (xmlNodePtr, xmlNsPtr, Ptr{xmlChar}, Ptr{xmlChar}) libxml2
@c xmlNodePtr xmlNewDocRawNode (xmlDocPtr, xmlNsPtr, Ptr{xmlChar}, Ptr{xmlChar}) libxml2
@c xmlNodePtr xmlNewDocFragment (xmlDocPtr,) libxml2
@c Int64 xmlGetLineNo (xmlNodePtr,) libxml2
@c Ptr{xmlChar} xmlGetNodePath (xmlNodePtr,) libxml2
@c xmlNodePtr xmlDocGetRootElement (xmlDocPtr,) libxml2
@c xmlNodePtr xmlGetLastChild (xmlNodePtr,) libxml2
@c Int32 xmlNodeIsText (xmlNodePtr,) libxml2
@c Int32 xmlIsBlankNode (xmlNodePtr,) libxml2
@c xmlNodePtr xmlDocSetRootElement (xmlDocPtr, xmlNodePtr) libxml2
@c None xmlNodeSetName (xmlNodePtr, Ptr{xmlChar}) libxml2
@c xmlNodePtr xmlAddChild (xmlNodePtr, xmlNodePtr) libxml2
@c xmlNodePtr xmlAddChildList (xmlNodePtr, xmlNodePtr) libxml2
@c xmlNodePtr xmlReplaceNode (xmlNodePtr, xmlNodePtr) libxml2
@c xmlNodePtr xmlAddPrevSibling (xmlNodePtr, xmlNodePtr) libxml2
@c xmlNodePtr xmlAddSibling (xmlNodePtr, xmlNodePtr) libxml2
@c xmlNodePtr xmlAddNextSibling (xmlNodePtr, xmlNodePtr) libxml2
@c None xmlUnlinkNode (xmlNodePtr,) libxml2
@c xmlNodePtr xmlTextMerge (xmlNodePtr, xmlNodePtr) libxml2
@c Int32 xmlTextConcat (xmlNodePtr, Ptr{xmlChar}, Int32) libxml2
@c None xmlFreeNodeList (xmlNodePtr,) libxml2
@c None xmlFreeNode (xmlNodePtr,) libxml2
@c None xmlSetTreeDoc (xmlNodePtr, xmlDocPtr) libxml2
@c None xmlSetListDoc (xmlNodePtr, xmlDocPtr) libxml2
@c xmlNsPtr xmlSearchNs (xmlDocPtr, xmlNodePtr, Ptr{xmlChar}) libxml2
@c xmlNsPtr xmlSearchNsByHref (xmlDocPtr, xmlNodePtr, Ptr{xmlChar}) libxml2
@c Ptr{xmlNsPtr} xmlGetNsList (xmlDocPtr, xmlNodePtr) libxml2
@c None xmlSetNs (xmlNodePtr, xmlNsPtr) libxml2
@c xmlNsPtr xmlCopyNamespace (xmlNsPtr,) libxml2
@c xmlNsPtr xmlCopyNamespaceList (xmlNsPtr,) libxml2
@c xmlAttrPtr xmlSetProp (xmlNodePtr, Ptr{xmlChar}, Ptr{xmlChar}) libxml2
@c xmlAttrPtr xmlSetNsProp (xmlNodePtr, xmlNsPtr, Ptr{xmlChar}, Ptr{xmlChar}) libxml2
@c Ptr{xmlChar} xmlGetNoNsProp (xmlNodePtr, Ptr{xmlChar}) libxml2
@c Ptr{xmlChar} xmlGetProp (xmlNodePtr, Ptr{xmlChar}) libxml2
@c xmlAttrPtr xmlHasProp (xmlNodePtr, Ptr{xmlChar}) libxml2
@c xmlAttrPtr xmlHasNsProp (xmlNodePtr, Ptr{xmlChar}, Ptr{xmlChar}) libxml2
@c Ptr{xmlChar} xmlGetNsProp (xmlNodePtr, Ptr{xmlChar}, Ptr{xmlChar}) libxml2
@c xmlNodePtr xmlStringGetNodeList (xmlDocPtr, Ptr{xmlChar}) libxml2
@c xmlNodePtr xmlStringLenGetNodeList (xmlDocPtr, Ptr{xmlChar}, Int32) libxml2
@c Ptr{xmlChar} xmlNodeListGetString (xmlDocPtr, xmlNodePtr, Int32) libxml2
@c Ptr{xmlChar} xmlNodeListGetRawString (xmlDocPtr, xmlNodePtr, Int32) libxml2
@c None xmlNodeSetContent (xmlNodePtr, Ptr{xmlChar}) libxml2
@c None xmlNodeSetContentLen (xmlNodePtr, Ptr{xmlChar}, Int32) libxml2
@c None xmlNodeAddContent (xmlNodePtr, Ptr{xmlChar}) libxml2
@c None xmlNodeAddContentLen (xmlNodePtr, Ptr{xmlChar}, Int32) libxml2
@c Ptr{xmlChar} xmlNodeGetContent (xmlNodePtr,) libxml2
@c Int32 xmlNodeBufGetContent (xmlBufferPtr, xmlNodePtr) libxml2
@c Ptr{xmlChar} xmlNodeGetLang (xmlNodePtr,) libxml2
@c Int32 xmlNodeGetSpacePreserve (xmlNodePtr,) libxml2
@c None xmlNodeSetLang (xmlNodePtr, Ptr{xmlChar}) libxml2
@c None xmlNodeSetSpacePreserve (xmlNodePtr, Int32) libxml2
@c Ptr{xmlChar} xmlNodeGetBase (xmlDocPtr, xmlNodePtr) libxml2
@c None xmlNodeSetBase (xmlNodePtr, Ptr{xmlChar}) libxml2
@c Int32 xmlRemoveProp (xmlAttrPtr,) libxml2
@c Int32 xmlUnsetNsProp (xmlNodePtr, xmlNsPtr, Ptr{xmlChar}) libxml2
@c Int32 xmlUnsetProp (xmlNodePtr, Ptr{xmlChar}) libxml2
@c None xmlBufferWriteCHAR (xmlBufferPtr, Ptr{xmlChar}) libxml2
@c None xmlBufferWriteChar (xmlBufferPtr, Ptr{Uint8}) libxml2
@c None xmlBufferWriteQuotedString (xmlBufferPtr, Ptr{xmlChar}) libxml2
@c None xmlAttrSerializeTxtContent (xmlBufferPtr, xmlDocPtr, xmlAttrPtr, Ptr{xmlChar}) libxml2
@c Int32 xmlReconciliateNs (xmlDocPtr, xmlNodePtr) libxml2
@c None xmlDocDumpFormatMemory (xmlDocPtr, Ptr{Ptr{xmlChar}}, Ptr{Int32}, Int32) libxml2
@c None xmlDocDumpMemory (xmlDocPtr, Ptr{Ptr{xmlChar}}, Ptr{Int32}) libxml2
@c None xmlDocDumpMemoryEnc (xmlDocPtr, Ptr{Ptr{xmlChar}}, Ptr{Int32}, Ptr{Uint8}) libxml2
@c None xmlDocDumpFormatMemoryEnc (xmlDocPtr, Ptr{Ptr{xmlChar}}, Ptr{Int32}, Ptr{Uint8}, Int32) libxml2
@c Int32 xmlDocFormatDump (Ptr{FILE}, xmlDocPtr, Int32) libxml2
@c Int32 xmlDocDump (Ptr{FILE}, xmlDocPtr) libxml2
@c None xmlElemDump (Ptr{FILE}, xmlDocPtr, xmlNodePtr) libxml2
@c Int32 xmlSaveFile (Ptr{Uint8}, xmlDocPtr) libxml2
@c Int32 xmlSaveFormatFile (Ptr{Uint8}, xmlDocPtr, Int32) libxml2
@c Int32 xmlNodeDump (xmlBufferPtr, xmlDocPtr, xmlNodePtr, Int32, Int32) libxml2
@c Int32 xmlSaveFileTo (xmlOutputBufferPtr, xmlDocPtr, Ptr{Uint8}) libxml2
@c Int32 xmlSaveFormatFileTo (xmlOutputBufferPtr, xmlDocPtr, Ptr{Uint8}, Int32) libxml2
@c None xmlNodeDumpOutput (xmlOutputBufferPtr, xmlDocPtr, xmlNodePtr, Int32, Int32, Ptr{Uint8}) libxml2
@c Int32 xmlSaveFormatFileEnc (Ptr{Uint8}, xmlDocPtr, Ptr{Uint8}, Int32) libxml2
@c Int32 xmlSaveFileEnc (Ptr{Uint8}, xmlDocPtr, Ptr{Uint8}) libxml2
@c Int32 xmlIsXHTML (Ptr{xmlChar}, Ptr{xmlChar}) libxml2
@c Int32 xmlGetDocCompressMode (xmlDocPtr,) libxml2
@c None xmlSetDocCompressMode (xmlDocPtr, Int32) libxml2
@c Int32 xmlGetCompressMode () libxml2
@c None xmlSetCompressMode (Int32,) libxml2
@c xmlDOMWrapCtxtPtr xmlDOMWrapNewCtxt () libxml2
@c None xmlDOMWrapFreeCtxt (xmlDOMWrapCtxtPtr,) libxml2
@c Int32 xmlDOMWrapReconcileNamespaces (xmlDOMWrapCtxtPtr, xmlNodePtr, Int32) libxml2
@c Int32 xmlDOMWrapAdoptNode (xmlDOMWrapCtxtPtr, xmlDocPtr, xmlNodePtr, xmlDocPtr, xmlNodePtr, Int32) libxml2
@c Int32 xmlDOMWrapRemoveNode (xmlDOMWrapCtxtPtr, xmlDocPtr, xmlNodePtr, Int32) libxml2
@c Int32 xmlDOMWrapCloneNode (xmlDOMWrapCtxtPtr, xmlDocPtr, xmlNodePtr, Ptr{xmlNodePtr}, xmlDocPtr, xmlNodePtr, Int32, Int32) libxml2
@c Uint64 xmlChildElementCount (xmlNodePtr,) libxml2
@c xmlNodePtr xmlNextElementSibling (xmlNodePtr,) libxml2
@c xmlNodePtr xmlFirstElementChild (xmlNodePtr,) libxml2
@c xmlNodePtr xmlLastElementChild (xmlNodePtr,) libxml2
@c xmlNodePtr xmlPreviousElementSibling (xmlNodePtr,) libxml2

