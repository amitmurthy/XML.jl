macro c(ret_type, func, arg_types, lib)
  local _ret_type = eval(ret_type)
  local _args_in = Any[ symbol(string('a',x)) for x in 1:length(arg_types.args) ]
  local _lib = @eval $lib
  quote
    $(esc(func))($(_args_in...)) = ccall( ($(string(func)), $(Expr(:quote, _lib)) ), $(_ret_type), $(arg_types), $(_args_in...) )
  end
end

shlib = :libxml2

typealias ptrdiff_t Void
typealias size_t Void
typealias wchar_t Int32
typealias __u_char Uint8
typealias __u_short Uint16
typealias __u_int Uint32
typealias __u_long Uint64
typealias __int8_t Uint8
typealias __uint8_t Uint8
typealias __int16_t Int16
typealias __uint16_t Uint16
typealias __int32_t Int32
typealias __uint32_t Uint32
typealias __int64_t Int64
typealias __uint64_t Uint64
typealias __quad_t Int64
typealias __u_quad_t Uint64
typealias __dev_t Uint64
typealias __uid_t Uint32
typealias __gid_t Uint32
typealias __ino_t Uint64
typealias __ino64_t Uint64
typealias __mode_t Uint32
typealias __nlink_t Uint64
typealias __off_t Int64
typealias __off64_t Int64
typealias __pid_t Int32
typealias __fsid_t Void
typealias __clock_t Int64
typealias __rlim_t Uint64
typealias __rlim64_t Uint64
typealias __id_t Uint32
typealias __time_t Int64
typealias __useconds_t Uint32
typealias __suseconds_t Int64
typealias __daddr_t Int32
typealias __swblk_t Int64
typealias __key_t Int32
typealias __clockid_t Int32
typealias __timer_t Ptr{None}
typealias __blksize_t Int64
typealias __blkcnt_t Int64
typealias __blkcnt64_t Int64
typealias __fsblkcnt_t Uint64
typealias __fsblkcnt64_t Uint64
typealias __fsfilcnt_t Uint64
typealias __fsfilcnt64_t Uint64
typealias __ssize_t Int64
typealias __loff_t __off64_t
typealias __qaddr_t Ptr{__quad_t}
typealias __caddr_t Ptr{Uint8}
typealias __intptr_t Int64
typealias __socklen_t Uint32
@c None xmlCheckVersion (Int32,) shlib
typealias xmlChar Uint8
@c Ptr{xmlChar} xmlStrdup (Ptr{xmlChar},) shlib
@c Ptr{xmlChar} xmlStrndup (Ptr{xmlChar},Int32) shlib
@c Ptr{xmlChar} xmlCharStrndup (Ptr{Uint8},Int32) shlib
@c Ptr{xmlChar} xmlCharStrdup (Ptr{Uint8},) shlib
@c Ptr{xmlChar} xmlStrsub (Ptr{xmlChar},Int32,Int32) shlib
@c Ptr{xmlChar} xmlStrchr (Ptr{xmlChar},xmlChar) shlib
@c Ptr{xmlChar} xmlStrstr (Ptr{xmlChar},Ptr{xmlChar}) shlib
@c Ptr{xmlChar} xmlStrcasestr (Ptr{xmlChar},Ptr{xmlChar}) shlib
@c Int32 xmlStrcmp (Ptr{xmlChar},Ptr{xmlChar}) shlib
@c Int32 xmlStrncmp (Ptr{xmlChar},Ptr{xmlChar},Int32) shlib
@c Int32 xmlStrcasecmp (Ptr{xmlChar},Ptr{xmlChar}) shlib
@c Int32 xmlStrncasecmp (Ptr{xmlChar},Ptr{xmlChar},Int32) shlib
@c Int32 xmlStrEqual (Ptr{xmlChar},Ptr{xmlChar}) shlib
@c Int32 xmlStrQEqual (Ptr{xmlChar},Ptr{xmlChar},Ptr{xmlChar}) shlib
@c Int32 xmlStrlen (Ptr{xmlChar},) shlib
@c Ptr{xmlChar} xmlStrcat (Ptr{xmlChar},Ptr{xmlChar}) shlib
@c Ptr{xmlChar} xmlStrncat (Ptr{xmlChar},Ptr{xmlChar},Int32) shlib
@c Ptr{xmlChar} xmlStrncatNew (Ptr{xmlChar},Ptr{xmlChar},Int32) shlib
@c Int32 xmlStrPrintf (Ptr{xmlChar},Int32,Ptr{xmlChar}) shlib
@c Int32 xmlStrVPrintf (Ptr{xmlChar},Int32,Ptr{xmlChar},Ptr{__va_list_tag}) shlib
@c Int32 xmlGetUTF8Char (Ptr{Uint8},Ptr{Int32}) shlib
@c Int32 xmlCheckUTF8 (Ptr{Uint8},) shlib
@c Int32 xmlUTF8Strsize (Ptr{xmlChar},Int32) shlib
@c Ptr{xmlChar} xmlUTF8Strndup (Ptr{xmlChar},Int32) shlib
@c Ptr{xmlChar} xmlUTF8Strpos (Ptr{xmlChar},Int32) shlib
@c Int32 xmlUTF8Strloc (Ptr{xmlChar},Ptr{xmlChar}) shlib
@c Ptr{xmlChar} xmlUTF8Strsub (Ptr{xmlChar},Int32,Int32) shlib
@c Int32 xmlUTF8Strlen (Ptr{xmlChar},) shlib
@c Int32 xmlUTF8Size (Ptr{xmlChar},) shlib
@c Int32 xmlUTF8Charcmp (Ptr{xmlChar},Ptr{xmlChar}) shlib
typealias xmlParserInputBuffer Void
typealias xmlParserInputBufferPtr Ptr{xmlParserInputBuffer}
typealias xmlOutputBuffer Void
typealias xmlOutputBufferPtr Ptr{xmlOutputBuffer}
typealias xmlParserInput Void
typealias xmlParserInputPtr Ptr{xmlParserInput}
typealias xmlParserCtxt Void
typealias xmlParserCtxtPtr Ptr{xmlParserCtxt}
typealias xmlSAXLocator Void
typealias xmlSAXLocatorPtr Ptr{xmlSAXLocator}
typealias xmlSAXHandler Void
typealias xmlSAXHandlerPtr Ptr{xmlSAXHandler}
typealias xmlEntity Void
typealias xmlEntityPtr Ptr{xmlEntity}
typealias xmlBufferAllocationScheme Int32
typealias xmlBuffer Void
typealias xmlBufferPtr Ptr{xmlBuffer}
typealias xmlElementType Int32
typealias xmlNotation Void
typealias xmlNotationPtr Ptr{xmlNotation}
typealias xmlAttributeType Int32
typealias xmlAttributeDefault Int32
typealias xmlEnumeration Void
typealias xmlEnumerationPtr Ptr{xmlEnumeration}
typealias xmlAttribute Void
typealias xmlAttributePtr Ptr{xmlAttribute}
typealias xmlElementContentType Int32
typealias xmlElementContentOccur Int32
typealias xmlElementContent Void
typealias xmlElementContentPtr Ptr{xmlElementContent}
typealias xmlElementTypeVal Int32
typealias xmlRegexp Void
typealias xmlRegexpPtr Ptr{xmlRegexp}
typealias xmlRegExecCtxt Void
typealias xmlRegExecCtxtPtr Ptr{xmlRegExecCtxt}
typealias xmlDict Void
typealias xmlDictPtr Ptr{xmlDict}
@c xmlDictPtr xmlDictCreate () shlib
@c xmlDictPtr xmlDictCreateSub (xmlDictPtr,) shlib
@c Int32 xmlDictReference (xmlDictPtr,) shlib
@c None xmlDictFree (xmlDictPtr,) shlib
@c Ptr{xmlChar} xmlDictLookup (xmlDictPtr,Ptr{xmlChar},Int32) shlib
@c Ptr{xmlChar} xmlDictExists (xmlDictPtr,Ptr{xmlChar},Int32) shlib
@c Ptr{xmlChar} xmlDictQLookup (xmlDictPtr,Ptr{xmlChar},Ptr{xmlChar}) shlib
@c Int32 xmlDictOwns (xmlDictPtr,Ptr{xmlChar}) shlib
@c Int32 xmlDictSize (xmlDictPtr,) shlib
@c None xmlDictCleanup () shlib
@c xmlRegexpPtr xmlRegexpCompile (Ptr{xmlChar},) shlib
@c None xmlRegFreeRegexp (xmlRegexpPtr,) shlib
@c Int32 xmlRegexpExec (xmlRegexpPtr,Ptr{xmlChar}) shlib
@c None xmlRegexpPrint (Ptr{FILE},xmlRegexpPtr) shlib
@c Int32 xmlRegexpIsDeterminist (xmlRegexpPtr,) shlib
typealias xmlRegExecCallbacks Ptr{Void}
@c xmlRegExecCtxtPtr xmlRegNewExecCtxt (xmlRegexpPtr,xmlRegExecCallbacks,Ptr{None}) shlib
@c None xmlRegFreeExecCtxt (xmlRegExecCtxtPtr,) shlib
@c Int32 xmlRegExecPushString (xmlRegExecCtxtPtr,Ptr{xmlChar},Ptr{None}) shlib
@c Int32 xmlRegExecPushString2 (xmlRegExecCtxtPtr,Ptr{xmlChar},Ptr{xmlChar},Ptr{None}) shlib
@c Int32 xmlRegExecNextValues (xmlRegExecCtxtPtr,Ptr{Int32},Ptr{Int32},Ptr{Ptr{xmlChar}},Ptr{Int32}) shlib
@c Int32 xmlRegExecErrInfo (xmlRegExecCtxtPtr,Ptr{Ptr{xmlChar}},Ptr{Int32},Ptr{Int32},Ptr{Ptr{xmlChar}},Ptr{Int32}) shlib
typealias xmlExpCtxt Void
typealias xmlExpCtxtPtr Ptr{xmlExpCtxt}
@c None xmlExpFreeCtxt (xmlExpCtxtPtr,) shlib
@c xmlExpCtxtPtr xmlExpNewCtxt (Int32,xmlDictPtr) shlib
@c Int32 xmlExpCtxtNbNodes (xmlExpCtxtPtr,) shlib
@c Int32 xmlExpCtxtNbCons (xmlExpCtxtPtr,) shlib
typealias xmlExpNode Void
typealias xmlExpNodePtr Ptr{xmlExpNode}
typealias xmlExpNodeType Int32
@c None xmlExpFree (xmlExpCtxtPtr,xmlExpNodePtr) shlib
@c None xmlExpRef (xmlExpNodePtr,) shlib
@c xmlExpNodePtr xmlExpParse (xmlExpCtxtPtr,Ptr{Uint8}) shlib
@c xmlExpNodePtr xmlExpNewAtom (xmlExpCtxtPtr,Ptr{xmlChar},Int32) shlib
@c xmlExpNodePtr xmlExpNewOr (xmlExpCtxtPtr,xmlExpNodePtr,xmlExpNodePtr) shlib
@c xmlExpNodePtr xmlExpNewSeq (xmlExpCtxtPtr,xmlExpNodePtr,xmlExpNodePtr) shlib
@c xmlExpNodePtr xmlExpNewRange (xmlExpCtxtPtr,xmlExpNodePtr,Int32,Int32) shlib
@c Int32 xmlExpIsNillable (xmlExpNodePtr,) shlib
@c Int32 xmlExpMaxToken (xmlExpNodePtr,) shlib
@c Int32 xmlExpGetLanguage (xmlExpCtxtPtr,xmlExpNodePtr,Ptr{Ptr{xmlChar}},Int32) shlib
@c Int32 xmlExpGetStart (xmlExpCtxtPtr,xmlExpNodePtr,Ptr{Ptr{xmlChar}},Int32) shlib
@c xmlExpNodePtr xmlExpStringDerive (xmlExpCtxtPtr,xmlExpNodePtr,Ptr{xmlChar},Int32) shlib
@c xmlExpNodePtr xmlExpExpDerive (xmlExpCtxtPtr,xmlExpNodePtr,xmlExpNodePtr) shlib
@c Int32 xmlExpSubsume (xmlExpCtxtPtr,xmlExpNodePtr,xmlExpNodePtr) shlib
@c None xmlExpDump (xmlBufferPtr,xmlExpNodePtr) shlib
typealias xmlElement Void
typealias xmlElementPtr Ptr{xmlElement}
typealias xmlNsType xmlElementType
typealias xmlNs Void
typealias xmlNsPtr Ptr{xmlNs}
typealias xmlDtd Void
typealias xmlDtdPtr Ptr{xmlDtd}
typealias xmlAttr Void
typealias xmlAttrPtr Ptr{xmlAttr}
typealias xmlID Void
typealias xmlIDPtr Ptr{xmlID}
typealias xmlRef Void
typealias xmlRefPtr Ptr{xmlRef}
typealias xmlNode Void
typealias xmlNodePtr Ptr{xmlNode}
typealias xmlDocProperties Int32
typealias xmlDoc Void
typealias xmlDocPtr Ptr{xmlDoc}
typealias xmlDOMWrapCtxt Void
typealias xmlDOMWrapCtxtPtr Ptr{xmlDOMWrapCtxt}
typealias xmlDOMWrapAcquireNsFunction Ptr{Void}
@c Int32 xmlValidateNCName (Ptr{xmlChar},Int32) shlib
@c Int32 xmlValidateQName (Ptr{xmlChar},Int32) shlib
@c Int32 xmlValidateName (Ptr{xmlChar},Int32) shlib
@c Int32 xmlValidateNMToken (Ptr{xmlChar},Int32) shlib
@c Ptr{xmlChar} xmlBuildQName (Ptr{xmlChar},Ptr{xmlChar},Ptr{xmlChar},Int32) shlib
@c Ptr{xmlChar} xmlSplitQName2 (Ptr{xmlChar},Ptr{Ptr{xmlChar}}) shlib
@c Ptr{xmlChar} xmlSplitQName3 (Ptr{xmlChar},Ptr{Int32}) shlib
@c None xmlSetBufferAllocationScheme (xmlBufferAllocationScheme,) shlib
@c xmlBufferAllocationScheme xmlGetBufferAllocationScheme () shlib
@c xmlBufferPtr xmlBufferCreate () shlib
@c xmlBufferPtr xmlBufferCreateSize (size_t,) shlib
@c xmlBufferPtr xmlBufferCreateStatic (Ptr{None},size_t) shlib
@c Int32 xmlBufferResize (xmlBufferPtr,Uint32) shlib
@c None xmlBufferFree (xmlBufferPtr,) shlib
@c Int32 xmlBufferDump (Ptr{FILE},xmlBufferPtr) shlib
@c Int32 xmlBufferAdd (xmlBufferPtr,Ptr{xmlChar},Int32) shlib
@c Int32 xmlBufferAddHead (xmlBufferPtr,Ptr{xmlChar},Int32) shlib
@c Int32 xmlBufferCat (xmlBufferPtr,Ptr{xmlChar}) shlib
@c Int32 xmlBufferCCat (xmlBufferPtr,Ptr{Uint8}) shlib
@c Int32 xmlBufferShrink (xmlBufferPtr,Uint32) shlib
@c Int32 xmlBufferGrow (xmlBufferPtr,Uint32) shlib
@c None xmlBufferEmpty (xmlBufferPtr,) shlib
@c Ptr{xmlChar} xmlBufferContent (xmlBufferPtr,) shlib
@c None xmlBufferSetAllocationScheme (xmlBufferPtr,xmlBufferAllocationScheme) shlib
@c Int32 xmlBufferLength (xmlBufferPtr,) shlib
@c xmlDtdPtr xmlCreateIntSubset (xmlDocPtr,Ptr{xmlChar},Ptr{xmlChar},Ptr{xmlChar}) shlib
@c xmlDtdPtr xmlNewDtd (xmlDocPtr,Ptr{xmlChar},Ptr{xmlChar},Ptr{xmlChar}) shlib
@c xmlDtdPtr xmlGetIntSubset (xmlDocPtr,) shlib
@c None xmlFreeDtd (xmlDtdPtr,) shlib
@c xmlNsPtr xmlNewGlobalNs (xmlDocPtr,Ptr{xmlChar},Ptr{xmlChar}) shlib
@c xmlNsPtr xmlNewNs (xmlNodePtr,Ptr{xmlChar},Ptr{xmlChar}) shlib
@c None xmlFreeNs (xmlNsPtr,) shlib
@c None xmlFreeNsList (xmlNsPtr,) shlib
@c xmlDocPtr xmlNewDoc (Ptr{xmlChar},) shlib
@c None xmlFreeDoc (xmlDocPtr,) shlib
@c xmlAttrPtr xmlNewDocProp (xmlDocPtr,Ptr{xmlChar},Ptr{xmlChar}) shlib
@c xmlAttrPtr xmlNewProp (xmlNodePtr,Ptr{xmlChar},Ptr{xmlChar}) shlib
@c xmlAttrPtr xmlNewNsProp (xmlNodePtr,xmlNsPtr,Ptr{xmlChar},Ptr{xmlChar}) shlib
@c xmlAttrPtr xmlNewNsPropEatName (xmlNodePtr,xmlNsPtr,Ptr{xmlChar},Ptr{xmlChar}) shlib
@c None xmlFreePropList (xmlAttrPtr,) shlib
@c None xmlFreeProp (xmlAttrPtr,) shlib
@c xmlAttrPtr xmlCopyProp (xmlNodePtr,xmlAttrPtr) shlib
@c xmlAttrPtr xmlCopyPropList (xmlNodePtr,xmlAttrPtr) shlib
@c xmlDtdPtr xmlCopyDtd (xmlDtdPtr,) shlib
@c xmlDocPtr xmlCopyDoc (xmlDocPtr,Int32) shlib
@c xmlNodePtr xmlNewDocNode (xmlDocPtr,xmlNsPtr,Ptr{xmlChar},Ptr{xmlChar}) shlib
@c xmlNodePtr xmlNewDocNodeEatName (xmlDocPtr,xmlNsPtr,Ptr{xmlChar},Ptr{xmlChar}) shlib
@c xmlNodePtr xmlNewNode (xmlNsPtr,Ptr{xmlChar}) shlib
@c xmlNodePtr xmlNewNodeEatName (xmlNsPtr,Ptr{xmlChar}) shlib
@c xmlNodePtr xmlNewChild (xmlNodePtr,xmlNsPtr,Ptr{xmlChar},Ptr{xmlChar}) shlib
@c xmlNodePtr xmlNewDocText (xmlDocPtr,Ptr{xmlChar}) shlib
@c xmlNodePtr xmlNewText (Ptr{xmlChar},) shlib
@c xmlNodePtr xmlNewDocPI (xmlDocPtr,Ptr{xmlChar},Ptr{xmlChar}) shlib
@c xmlNodePtr xmlNewPI (Ptr{xmlChar},Ptr{xmlChar}) shlib
@c xmlNodePtr xmlNewDocTextLen (xmlDocPtr,Ptr{xmlChar},Int32) shlib
@c xmlNodePtr xmlNewTextLen (Ptr{xmlChar},Int32) shlib
@c xmlNodePtr xmlNewDocComment (xmlDocPtr,Ptr{xmlChar}) shlib
@c xmlNodePtr xmlNewComment (Ptr{xmlChar},) shlib
@c xmlNodePtr xmlNewCDataBlock (xmlDocPtr,Ptr{xmlChar},Int32) shlib
@c xmlNodePtr xmlNewCharRef (xmlDocPtr,Ptr{xmlChar}) shlib
@c xmlNodePtr xmlNewReference (xmlDocPtr,Ptr{xmlChar}) shlib
@c xmlNodePtr xmlCopyNode (xmlNodePtr,Int32) shlib
@c xmlNodePtr xmlDocCopyNode (xmlNodePtr,xmlDocPtr,Int32) shlib
@c xmlNodePtr xmlDocCopyNodeList (xmlDocPtr,xmlNodePtr) shlib
@c xmlNodePtr xmlCopyNodeList (xmlNodePtr,) shlib
@c xmlNodePtr xmlNewTextChild (xmlNodePtr,xmlNsPtr,Ptr{xmlChar},Ptr{xmlChar}) shlib
@c xmlNodePtr xmlNewDocRawNode (xmlDocPtr,xmlNsPtr,Ptr{xmlChar},Ptr{xmlChar}) shlib
@c xmlNodePtr xmlNewDocFragment (xmlDocPtr,) shlib
@c Int64 xmlGetLineNo (xmlNodePtr,) shlib
@c Ptr{xmlChar} xmlGetNodePath (xmlNodePtr,) shlib
@c xmlNodePtr xmlDocGetRootElement (xmlDocPtr,) shlib
@c xmlNodePtr xmlGetLastChild (xmlNodePtr,) shlib
@c Int32 xmlNodeIsText (xmlNodePtr,) shlib
@c Int32 xmlIsBlankNode (xmlNodePtr,) shlib
@c xmlNodePtr xmlDocSetRootElement (xmlDocPtr,xmlNodePtr) shlib
@c None xmlNodeSetName (xmlNodePtr,Ptr{xmlChar}) shlib
@c xmlNodePtr xmlAddChild (xmlNodePtr,xmlNodePtr) shlib
@c xmlNodePtr xmlAddChildList (xmlNodePtr,xmlNodePtr) shlib
@c xmlNodePtr xmlReplaceNode (xmlNodePtr,xmlNodePtr) shlib
@c xmlNodePtr xmlAddPrevSibling (xmlNodePtr,xmlNodePtr) shlib
@c xmlNodePtr xmlAddSibling (xmlNodePtr,xmlNodePtr) shlib
@c xmlNodePtr xmlAddNextSibling (xmlNodePtr,xmlNodePtr) shlib
@c None xmlUnlinkNode (xmlNodePtr,) shlib
@c xmlNodePtr xmlTextMerge (xmlNodePtr,xmlNodePtr) shlib
@c Int32 xmlTextConcat (xmlNodePtr,Ptr{xmlChar},Int32) shlib
@c None xmlFreeNodeList (xmlNodePtr,) shlib
@c None xmlFreeNode (xmlNodePtr,) shlib
@c None xmlSetTreeDoc (xmlNodePtr,xmlDocPtr) shlib
@c None xmlSetListDoc (xmlNodePtr,xmlDocPtr) shlib
@c xmlNsPtr xmlSearchNs (xmlDocPtr,xmlNodePtr,Ptr{xmlChar}) shlib
@c xmlNsPtr xmlSearchNsByHref (xmlDocPtr,xmlNodePtr,Ptr{xmlChar}) shlib
@c Ptr{xmlNsPtr} xmlGetNsList (xmlDocPtr,xmlNodePtr) shlib
@c None xmlSetNs (xmlNodePtr,xmlNsPtr) shlib
@c xmlNsPtr xmlCopyNamespace (xmlNsPtr,) shlib
@c xmlNsPtr xmlCopyNamespaceList (xmlNsPtr,) shlib
@c xmlAttrPtr xmlSetProp (xmlNodePtr,Ptr{xmlChar},Ptr{xmlChar}) shlib
@c xmlAttrPtr xmlSetNsProp (xmlNodePtr,xmlNsPtr,Ptr{xmlChar},Ptr{xmlChar}) shlib
@c Ptr{xmlChar} xmlGetNoNsProp (xmlNodePtr,Ptr{xmlChar}) shlib
@c Ptr{xmlChar} xmlGetProp (xmlNodePtr,Ptr{xmlChar}) shlib
@c xmlAttrPtr xmlHasProp (xmlNodePtr,Ptr{xmlChar}) shlib
@c xmlAttrPtr xmlHasNsProp (xmlNodePtr,Ptr{xmlChar},Ptr{xmlChar}) shlib
@c Ptr{xmlChar} xmlGetNsProp (xmlNodePtr,Ptr{xmlChar},Ptr{xmlChar}) shlib
@c xmlNodePtr xmlStringGetNodeList (xmlDocPtr,Ptr{xmlChar}) shlib
@c xmlNodePtr xmlStringLenGetNodeList (xmlDocPtr,Ptr{xmlChar},Int32) shlib
@c Ptr{xmlChar} xmlNodeListGetString (xmlDocPtr,xmlNodePtr,Int32) shlib
@c Ptr{xmlChar} xmlNodeListGetRawString (xmlDocPtr,xmlNodePtr,Int32) shlib
@c None xmlNodeSetContent (xmlNodePtr,Ptr{xmlChar}) shlib
@c None xmlNodeSetContentLen (xmlNodePtr,Ptr{xmlChar},Int32) shlib
@c None xmlNodeAddContent (xmlNodePtr,Ptr{xmlChar}) shlib
@c None xmlNodeAddContentLen (xmlNodePtr,Ptr{xmlChar},Int32) shlib
@c Ptr{xmlChar} xmlNodeGetContent (xmlNodePtr,) shlib
@c Int32 xmlNodeBufGetContent (xmlBufferPtr,xmlNodePtr) shlib
@c Ptr{xmlChar} xmlNodeGetLang (xmlNodePtr,) shlib
@c Int32 xmlNodeGetSpacePreserve (xmlNodePtr,) shlib
@c None xmlNodeSetLang (xmlNodePtr,Ptr{xmlChar}) shlib
@c None xmlNodeSetSpacePreserve (xmlNodePtr,Int32) shlib
@c Ptr{xmlChar} xmlNodeGetBase (xmlDocPtr,xmlNodePtr) shlib
@c None xmlNodeSetBase (xmlNodePtr,Ptr{xmlChar}) shlib
@c Int32 xmlRemoveProp (xmlAttrPtr,) shlib
@c Int32 xmlUnsetNsProp (xmlNodePtr,xmlNsPtr,Ptr{xmlChar}) shlib
@c Int32 xmlUnsetProp (xmlNodePtr,Ptr{xmlChar}) shlib
@c None xmlBufferWriteCHAR (xmlBufferPtr,Ptr{xmlChar}) shlib
@c None xmlBufferWriteChar (xmlBufferPtr,Ptr{Uint8}) shlib
@c None xmlBufferWriteQuotedString (xmlBufferPtr,Ptr{xmlChar}) shlib
@c None xmlAttrSerializeTxtContent (xmlBufferPtr,xmlDocPtr,xmlAttrPtr,Ptr{xmlChar}) shlib
@c Int32 xmlReconciliateNs (xmlDocPtr,xmlNodePtr) shlib
@c None xmlDocDumpFormatMemory (xmlDocPtr,Ptr{Ptr{xmlChar}},Ptr{Int32},Int32) shlib
@c None xmlDocDumpMemory (xmlDocPtr,Ptr{Ptr{xmlChar}},Ptr{Int32}) shlib
@c None xmlDocDumpMemoryEnc (xmlDocPtr,Ptr{Ptr{xmlChar}},Ptr{Int32},Ptr{Uint8}) shlib
@c None xmlDocDumpFormatMemoryEnc (xmlDocPtr,Ptr{Ptr{xmlChar}},Ptr{Int32},Ptr{Uint8},Int32) shlib
@c Int32 xmlDocFormatDump (Ptr{FILE},xmlDocPtr,Int32) shlib
@c Int32 xmlDocDump (Ptr{FILE},xmlDocPtr) shlib
@c None xmlElemDump (Ptr{FILE},xmlDocPtr,xmlNodePtr) shlib
@c Int32 xmlSaveFile (Ptr{Uint8},xmlDocPtr) shlib
@c Int32 xmlSaveFormatFile (Ptr{Uint8},xmlDocPtr,Int32) shlib
@c Int32 xmlNodeDump (xmlBufferPtr,xmlDocPtr,xmlNodePtr,Int32,Int32) shlib
@c Int32 xmlSaveFileTo (xmlOutputBufferPtr,xmlDocPtr,Ptr{Uint8}) shlib
@c Int32 xmlSaveFormatFileTo (xmlOutputBufferPtr,xmlDocPtr,Ptr{Uint8},Int32) shlib
@c None xmlNodeDumpOutput (xmlOutputBufferPtr,xmlDocPtr,xmlNodePtr,Int32,Int32,Ptr{Uint8}) shlib
@c Int32 xmlSaveFormatFileEnc (Ptr{Uint8},xmlDocPtr,Ptr{Uint8},Int32) shlib
@c Int32 xmlSaveFileEnc (Ptr{Uint8},xmlDocPtr,Ptr{Uint8}) shlib
@c Int32 xmlIsXHTML (Ptr{xmlChar},Ptr{xmlChar}) shlib
@c Int32 xmlGetDocCompressMode (xmlDocPtr,) shlib
@c None xmlSetDocCompressMode (xmlDocPtr,Int32) shlib
@c Int32 xmlGetCompressMode () shlib
@c None xmlSetCompressMode (Int32,) shlib
@c xmlDOMWrapCtxtPtr xmlDOMWrapNewCtxt () shlib
@c None xmlDOMWrapFreeCtxt (xmlDOMWrapCtxtPtr,) shlib
@c Int32 xmlDOMWrapReconcileNamespaces (xmlDOMWrapCtxtPtr,xmlNodePtr,Int32) shlib
@c Int32 xmlDOMWrapAdoptNode (xmlDOMWrapCtxtPtr,xmlDocPtr,xmlNodePtr,xmlDocPtr,xmlNodePtr,Int32) shlib
@c Int32 xmlDOMWrapRemoveNode (xmlDOMWrapCtxtPtr,xmlDocPtr,xmlNodePtr,Int32) shlib
@c Int32 xmlDOMWrapCloneNode (xmlDOMWrapCtxtPtr,xmlDocPtr,xmlNodePtr,Ptr{xmlNodePtr},xmlDocPtr,xmlNodePtr,Int32,Int32) shlib
@c Uint64 xmlChildElementCount (xmlNodePtr,) shlib
@c xmlNodePtr xmlNextElementSibling (xmlNodePtr,) shlib
@c xmlNodePtr xmlFirstElementChild (xmlNodePtr,) shlib
@c xmlNodePtr xmlLastElementChild (xmlNodePtr,) shlib
@c xmlNodePtr xmlPreviousElementSibling (xmlNodePtr,) shlib
typealias xmlFreeFunc Ptr{Void}
typealias xmlMallocFunc Ptr{Void}
typealias xmlReallocFunc Ptr{Void}
typealias xmlStrdupFunc Ptr{Void}
@c Int32 xmlMemSetup (xmlFreeFunc,xmlMallocFunc,xmlReallocFunc,xmlStrdupFunc) shlib
@c Int32 xmlMemGet (Ptr{xmlFreeFunc},Ptr{xmlMallocFunc},Ptr{xmlReallocFunc},Ptr{xmlStrdupFunc}) shlib
@c Int32 xmlGcMemSetup (xmlFreeFunc,xmlMallocFunc,xmlMallocFunc,xmlReallocFunc,xmlStrdupFunc) shlib
@c Int32 xmlGcMemGet (Ptr{xmlFreeFunc},Ptr{xmlMallocFunc},Ptr{xmlMallocFunc},Ptr{xmlReallocFunc},Ptr{xmlStrdupFunc}) shlib
@c Int32 xmlInitMemory () shlib
@c None xmlCleanupMemory () shlib
@c Int32 xmlMemUsed () shlib
@c Int32 xmlMemBlocks () shlib
@c None xmlMemDisplay (Ptr{FILE},) shlib
@c None xmlMemDisplayLast (Ptr{FILE},Int64) shlib
@c None xmlMemShow (Ptr{FILE},Int32) shlib
@c None xmlMemoryDump () shlib
@c Ptr{None} xmlMemMalloc (size_t,) shlib
@c Ptr{None} xmlMemRealloc (Ptr{None},size_t) shlib
@c None xmlMemFree (Ptr{None},) shlib
@c Ptr{Uint8} xmlMemoryStrdup (Ptr{Uint8},) shlib
@c Ptr{None} xmlMallocLoc (size_t,Ptr{Uint8},Int32) shlib
@c Ptr{None} xmlReallocLoc (Ptr{None},size_t,Ptr{Uint8},Int32) shlib
@c Ptr{None} xmlMallocAtomicLoc (size_t,Ptr{Uint8},Int32) shlib
@c Ptr{Uint8} xmlMemStrdupLoc (Ptr{Uint8},Ptr{Uint8},Int32) shlib
typealias xmlMutex Void
typealias xmlMutexPtr Ptr{xmlMutex}
typealias xmlRMutex Void
typealias xmlRMutexPtr Ptr{xmlRMutex}
typealias xmlHashTable Void
typealias xmlHashTablePtr Ptr{xmlHashTable}
typealias xmlHashDeallocator Ptr{Void}
typealias xmlHashCopier Ptr{Void}
typealias xmlHashScanner Ptr{Void}
typealias xmlHashScannerFull Ptr{Void}
@c xmlHashTablePtr xmlHashCreate (Int32,) shlib
@c xmlHashTablePtr xmlHashCreateDict (Int32,xmlDictPtr) shlib
@c None xmlHashFree (xmlHashTablePtr,xmlHashDeallocator) shlib
@c Int32 xmlHashAddEntry (xmlHashTablePtr,Ptr{xmlChar},Ptr{None}) shlib
@c Int32 xmlHashUpdateEntry (xmlHashTablePtr,Ptr{xmlChar},Ptr{None},xmlHashDeallocator) shlib
@c Int32 xmlHashAddEntry2 (xmlHashTablePtr,Ptr{xmlChar},Ptr{xmlChar},Ptr{None}) shlib
@c Int32 xmlHashUpdateEntry2 (xmlHashTablePtr,Ptr{xmlChar},Ptr{xmlChar},Ptr{None},xmlHashDeallocator) shlib
@c Int32 xmlHashAddEntry3 (xmlHashTablePtr,Ptr{xmlChar},Ptr{xmlChar},Ptr{xmlChar},Ptr{None}) shlib
@c Int32 xmlHashUpdateEntry3 (xmlHashTablePtr,Ptr{xmlChar},Ptr{xmlChar},Ptr{xmlChar},Ptr{None},xmlHashDeallocator) shlib
@c Int32 xmlHashRemoveEntry (xmlHashTablePtr,Ptr{xmlChar},xmlHashDeallocator) shlib
@c Int32 xmlHashRemoveEntry2 (xmlHashTablePtr,Ptr{xmlChar},Ptr{xmlChar},xmlHashDeallocator) shlib
@c Int32 xmlHashRemoveEntry3 (xmlHashTablePtr,Ptr{xmlChar},Ptr{xmlChar},Ptr{xmlChar},xmlHashDeallocator) shlib
@c Ptr{None} xmlHashLookup (xmlHashTablePtr,Ptr{xmlChar}) shlib
@c Ptr{None} xmlHashLookup2 (xmlHashTablePtr,Ptr{xmlChar},Ptr{xmlChar}) shlib
@c Ptr{None} xmlHashLookup3 (xmlHashTablePtr,Ptr{xmlChar},Ptr{xmlChar},Ptr{xmlChar}) shlib
@c Ptr{None} xmlHashQLookup (xmlHashTablePtr,Ptr{xmlChar},Ptr{xmlChar}) shlib
@c Ptr{None} xmlHashQLookup2 (xmlHashTablePtr,Ptr{xmlChar},Ptr{xmlChar},Ptr{xmlChar},Ptr{xmlChar}) shlib
@c Ptr{None} xmlHashQLookup3 (xmlHashTablePtr,Ptr{xmlChar},Ptr{xmlChar},Ptr{xmlChar},Ptr{xmlChar},Ptr{xmlChar},Ptr{xmlChar}) shlib
@c xmlHashTablePtr xmlHashCopy (xmlHashTablePtr,xmlHashCopier) shlib
@c Int32 xmlHashSize (xmlHashTablePtr,) shlib
@c None xmlHashScan (xmlHashTablePtr,xmlHashScanner,Ptr{None}) shlib
@c None xmlHashScan3 (xmlHashTablePtr,Ptr{xmlChar},Ptr{xmlChar},Ptr{xmlChar},xmlHashScanner,Ptr{None}) shlib
@c None xmlHashScanFull (xmlHashTablePtr,xmlHashScannerFull,Ptr{None}) shlib
@c None xmlHashScanFull3 (xmlHashTablePtr,Ptr{xmlChar},Ptr{xmlChar},Ptr{xmlChar},xmlHashScannerFull,Ptr{None}) shlib
typealias xmlErrorLevel Int32
typealias xmlErrorDomain Int32
typealias xmlError Void
typealias xmlErrorPtr Ptr{xmlError}
typealias xmlParserErrors Int32
typealias xmlGenericErrorFunc Ptr{Void}
typealias xmlStructuredErrorFunc Ptr{Void}
@c None xmlSetGenericErrorFunc (Ptr{None},xmlGenericErrorFunc) shlib
@c None initGenericErrorDefaultFunc (Ptr{xmlGenericErrorFunc},) shlib
@c None xmlSetStructuredErrorFunc (Ptr{None},xmlStructuredErrorFunc) shlib
@c None xmlParserError (Ptr{None},Ptr{Uint8}) shlib
@c None xmlParserWarning (Ptr{None},Ptr{Uint8}) shlib
@c None xmlParserValidityError (Ptr{None},Ptr{Uint8}) shlib
@c None xmlParserValidityWarning (Ptr{None},Ptr{Uint8}) shlib
@c None xmlParserPrintFileInfo (xmlParserInputPtr,) shlib
@c None xmlParserPrintFileContext (xmlParserInputPtr,) shlib
@c xmlErrorPtr xmlGetLastError () shlib
@c None xmlResetLastError () shlib
@c xmlErrorPtr xmlCtxtGetLastError (Ptr{None},) shlib
@c None xmlCtxtResetLastError (Ptr{None},) shlib
@c None xmlResetError (xmlErrorPtr,) shlib
@c Int32 xmlCopyError (xmlErrorPtr,xmlErrorPtr) shlib
typealias xmlLink Void
typealias xmlLinkPtr Ptr{xmlLink}
typealias xmlList Void
typealias xmlListPtr Ptr{xmlList}
typealias xmlListDeallocator Ptr{Void}
typealias xmlListDataCompare Ptr{Void}
typealias xmlListWalker Ptr{Void}
@c xmlListPtr xmlListCreate (xmlListDeallocator,xmlListDataCompare) shlib
@c None xmlListDelete (xmlListPtr,) shlib
@c Ptr{None} xmlListSearch (xmlListPtr,Ptr{None}) shlib
@c Ptr{None} xmlListReverseSearch (xmlListPtr,Ptr{None}) shlib
@c Int32 xmlListInsert (xmlListPtr,Ptr{None}) shlib
@c Int32 xmlListAppend (xmlListPtr,Ptr{None}) shlib
@c Int32 xmlListRemoveFirst (xmlListPtr,Ptr{None}) shlib
@c Int32 xmlListRemoveLast (xmlListPtr,Ptr{None}) shlib
@c Int32 xmlListRemoveAll (xmlListPtr,Ptr{None}) shlib
@c None xmlListClear (xmlListPtr,) shlib
@c Int32 xmlListEmpty (xmlListPtr,) shlib
@c xmlLinkPtr xmlListFront (xmlListPtr,) shlib
@c xmlLinkPtr xmlListEnd (xmlListPtr,) shlib
@c Int32 xmlListSize (xmlListPtr,) shlib
@c None xmlListPopFront (xmlListPtr,) shlib
@c None xmlListPopBack (xmlListPtr,) shlib
@c Int32 xmlListPushFront (xmlListPtr,Ptr{None}) shlib
@c Int32 xmlListPushBack (xmlListPtr,Ptr{None}) shlib
@c None xmlListReverse (xmlListPtr,) shlib
@c None xmlListSort (xmlListPtr,) shlib
@c None xmlListWalk (xmlListPtr,xmlListWalker,Ptr{None}) shlib
@c None xmlListReverseWalk (xmlListPtr,xmlListWalker,Ptr{None}) shlib
@c None xmlListMerge (xmlListPtr,xmlListPtr) shlib
@c xmlListPtr xmlListDup (xmlListPtr,) shlib
@c Int32 xmlListCopy (xmlListPtr,xmlListPtr) shlib
@c Ptr{None} xmlLinkGetData (xmlLinkPtr,) shlib
typealias xmlAutomata Void
typealias xmlAutomataPtr Ptr{xmlAutomata}
typealias xmlAutomataState Void
typealias xmlAutomataStatePtr Ptr{xmlAutomataState}
@c xmlAutomataPtr xmlNewAutomata () shlib
@c None xmlFreeAutomata (xmlAutomataPtr,) shlib
@c xmlAutomataStatePtr xmlAutomataGetInitState (xmlAutomataPtr,) shlib
@c Int32 xmlAutomataSetFinalState (xmlAutomataPtr,xmlAutomataStatePtr) shlib
@c xmlAutomataStatePtr xmlAutomataNewState (xmlAutomataPtr,) shlib
@c xmlAutomataStatePtr xmlAutomataNewTransition (xmlAutomataPtr,xmlAutomataStatePtr,xmlAutomataStatePtr,Ptr{xmlChar},Ptr{None}) shlib
@c xmlAutomataStatePtr xmlAutomataNewTransition2 (xmlAutomataPtr,xmlAutomataStatePtr,xmlAutomataStatePtr,Ptr{xmlChar},Ptr{xmlChar},Ptr{None}) shlib
@c xmlAutomataStatePtr xmlAutomataNewNegTrans (xmlAutomataPtr,xmlAutomataStatePtr,xmlAutomataStatePtr,Ptr{xmlChar},Ptr{xmlChar},Ptr{None}) shlib
@c xmlAutomataStatePtr xmlAutomataNewCountTrans (xmlAutomataPtr,xmlAutomataStatePtr,xmlAutomataStatePtr,Ptr{xmlChar},Int32,Int32,Ptr{None}) shlib
@c xmlAutomataStatePtr xmlAutomataNewCountTrans2 (xmlAutomataPtr,xmlAutomataStatePtr,xmlAutomataStatePtr,Ptr{xmlChar},Ptr{xmlChar},Int32,Int32,Ptr{None}) shlib
@c xmlAutomataStatePtr xmlAutomataNewOnceTrans (xmlAutomataPtr,xmlAutomataStatePtr,xmlAutomataStatePtr,Ptr{xmlChar},Int32,Int32,Ptr{None}) shlib
@c xmlAutomataStatePtr xmlAutomataNewOnceTrans2 (xmlAutomataPtr,xmlAutomataStatePtr,xmlAutomataStatePtr,Ptr{xmlChar},Ptr{xmlChar},Int32,Int32,Ptr{None}) shlib
@c xmlAutomataStatePtr xmlAutomataNewAllTrans (xmlAutomataPtr,xmlAutomataStatePtr,xmlAutomataStatePtr,Int32) shlib
@c xmlAutomataStatePtr xmlAutomataNewEpsilon (xmlAutomataPtr,xmlAutomataStatePtr,xmlAutomataStatePtr) shlib
@c xmlAutomataStatePtr xmlAutomataNewCountedTrans (xmlAutomataPtr,xmlAutomataStatePtr,xmlAutomataStatePtr,Int32) shlib
@c xmlAutomataStatePtr xmlAutomataNewCounterTrans (xmlAutomataPtr,xmlAutomataStatePtr,xmlAutomataStatePtr,Int32) shlib
@c Int32 xmlAutomataNewCounter (xmlAutomataPtr,Int32,Int32) shlib
@c xmlRegexpPtr xmlAutomataCompile (xmlAutomataPtr,) shlib
@c Int32 xmlAutomataIsDeterminist (xmlAutomataPtr,) shlib
typealias xmlValidState Void
typealias xmlValidStatePtr Ptr{xmlValidState}
typealias xmlValidityErrorFunc Ptr{Void}
typealias xmlValidityWarningFunc Ptr{Void}
typealias xmlValidCtxt Void
typealias xmlValidCtxtPtr Ptr{xmlValidCtxt}
typealias xmlNotationTable Void
typealias xmlNotationTablePtr Ptr{xmlNotationTable}
typealias xmlElementTable Void
typealias xmlElementTablePtr Ptr{xmlElementTable}
typealias xmlAttributeTable Void
typealias xmlAttributeTablePtr Ptr{xmlAttributeTable}
typealias xmlIDTable Void
typealias xmlIDTablePtr Ptr{xmlIDTable}
typealias xmlRefTable Void
typealias xmlRefTablePtr Ptr{xmlRefTable}
@c xmlNotationPtr xmlAddNotationDecl (xmlValidCtxtPtr,xmlDtdPtr,Ptr{xmlChar},Ptr{xmlChar},Ptr{xmlChar}) shlib
@c xmlNotationTablePtr xmlCopyNotationTable (xmlNotationTablePtr,) shlib
@c None xmlFreeNotationTable (xmlNotationTablePtr,) shlib
@c None xmlDumpNotationDecl (xmlBufferPtr,xmlNotationPtr) shlib
@c None xmlDumpNotationTable (xmlBufferPtr,xmlNotationTablePtr) shlib
@c xmlElementContentPtr xmlNewElementContent (Ptr{xmlChar},xmlElementContentType) shlib
@c xmlElementContentPtr xmlCopyElementContent (xmlElementContentPtr,) shlib
@c None xmlFreeElementContent (xmlElementContentPtr,) shlib
@c xmlElementContentPtr xmlNewDocElementContent (xmlDocPtr,Ptr{xmlChar},xmlElementContentType) shlib
@c xmlElementContentPtr xmlCopyDocElementContent (xmlDocPtr,xmlElementContentPtr) shlib
@c None xmlFreeDocElementContent (xmlDocPtr,xmlElementContentPtr) shlib
@c None xmlSnprintfElementContent (Ptr{Uint8},Int32,xmlElementContentPtr,Int32) shlib
@c None xmlSprintfElementContent (Ptr{Uint8},xmlElementContentPtr,Int32) shlib
@c xmlElementPtr xmlAddElementDecl (xmlValidCtxtPtr,xmlDtdPtr,Ptr{xmlChar},xmlElementTypeVal,xmlElementContentPtr) shlib
@c xmlElementTablePtr xmlCopyElementTable (xmlElementTablePtr,) shlib
@c None xmlFreeElementTable (xmlElementTablePtr,) shlib
@c None xmlDumpElementTable (xmlBufferPtr,xmlElementTablePtr) shlib
@c None xmlDumpElementDecl (xmlBufferPtr,xmlElementPtr) shlib
@c xmlEnumerationPtr xmlCreateEnumeration (Ptr{xmlChar},) shlib
@c None xmlFreeEnumeration (xmlEnumerationPtr,) shlib
@c xmlEnumerationPtr xmlCopyEnumeration (xmlEnumerationPtr,) shlib
@c xmlAttributePtr xmlAddAttributeDecl (xmlValidCtxtPtr,xmlDtdPtr,Ptr{xmlChar},Ptr{xmlChar},Ptr{xmlChar},xmlAttributeType,xmlAttributeDefault,Ptr{xmlChar},xmlEnumerationPtr) shlib
@c xmlAttributeTablePtr xmlCopyAttributeTable (xmlAttributeTablePtr,) shlib
@c None xmlFreeAttributeTable (xmlAttributeTablePtr,) shlib
@c None xmlDumpAttributeTable (xmlBufferPtr,xmlAttributeTablePtr) shlib
@c None xmlDumpAttributeDecl (xmlBufferPtr,xmlAttributePtr) shlib
@c xmlIDPtr xmlAddID (xmlValidCtxtPtr,xmlDocPtr,Ptr{xmlChar},xmlAttrPtr) shlib
@c None xmlFreeIDTable (xmlIDTablePtr,) shlib
@c xmlAttrPtr xmlGetID (xmlDocPtr,Ptr{xmlChar}) shlib
@c Int32 xmlIsID (xmlDocPtr,xmlNodePtr,xmlAttrPtr) shlib
@c Int32 xmlRemoveID (xmlDocPtr,xmlAttrPtr) shlib
@c xmlRefPtr xmlAddRef (xmlValidCtxtPtr,xmlDocPtr,Ptr{xmlChar},xmlAttrPtr) shlib
@c None xmlFreeRefTable (xmlRefTablePtr,) shlib
@c Int32 xmlIsRef (xmlDocPtr,xmlNodePtr,xmlAttrPtr) shlib
@c Int32 xmlRemoveRef (xmlDocPtr,xmlAttrPtr) shlib
@c xmlListPtr xmlGetRefs (xmlDocPtr,Ptr{xmlChar}) shlib
@c xmlValidCtxtPtr xmlNewValidCtxt () shlib
@c None xmlFreeValidCtxt (xmlValidCtxtPtr,) shlib
@c Int32 xmlValidateRoot (xmlValidCtxtPtr,xmlDocPtr) shlib
@c Int32 xmlValidateElementDecl (xmlValidCtxtPtr,xmlDocPtr,xmlElementPtr) shlib
@c Ptr{xmlChar} xmlValidNormalizeAttributeValue (xmlDocPtr,xmlNodePtr,Ptr{xmlChar},Ptr{xmlChar}) shlib
@c Ptr{xmlChar} xmlValidCtxtNormalizeAttributeValue (xmlValidCtxtPtr,xmlDocPtr,xmlNodePtr,Ptr{xmlChar},Ptr{xmlChar}) shlib
@c Int32 xmlValidateAttributeDecl (xmlValidCtxtPtr,xmlDocPtr,xmlAttributePtr) shlib
@c Int32 xmlValidateAttributeValue (xmlAttributeType,Ptr{xmlChar}) shlib
@c Int32 xmlValidateNotationDecl (xmlValidCtxtPtr,xmlDocPtr,xmlNotationPtr) shlib
@c Int32 xmlValidateDtd (xmlValidCtxtPtr,xmlDocPtr,xmlDtdPtr) shlib
@c Int32 xmlValidateDtdFinal (xmlValidCtxtPtr,xmlDocPtr) shlib
@c Int32 xmlValidateDocument (xmlValidCtxtPtr,xmlDocPtr) shlib
@c Int32 xmlValidateElement (xmlValidCtxtPtr,xmlDocPtr,xmlNodePtr) shlib
@c Int32 xmlValidateOneElement (xmlValidCtxtPtr,xmlDocPtr,xmlNodePtr) shlib
@c Int32 xmlValidateOneAttribute (xmlValidCtxtPtr,xmlDocPtr,xmlNodePtr,xmlAttrPtr,Ptr{xmlChar}) shlib
@c Int32 xmlValidateOneNamespace (xmlValidCtxtPtr,xmlDocPtr,xmlNodePtr,Ptr{xmlChar},xmlNsPtr,Ptr{xmlChar}) shlib
@c Int32 xmlValidateDocumentFinal (xmlValidCtxtPtr,xmlDocPtr) shlib
@c Int32 xmlValidateNotationUse (xmlValidCtxtPtr,xmlDocPtr,Ptr{xmlChar}) shlib
@c Int32 xmlIsMixedElement (xmlDocPtr,Ptr{xmlChar}) shlib
@c xmlAttributePtr xmlGetDtdAttrDesc (xmlDtdPtr,Ptr{xmlChar},Ptr{xmlChar}) shlib
@c xmlAttributePtr xmlGetDtdQAttrDesc (xmlDtdPtr,Ptr{xmlChar},Ptr{xmlChar},Ptr{xmlChar}) shlib
@c xmlNotationPtr xmlGetDtdNotationDesc (xmlDtdPtr,Ptr{xmlChar}) shlib
@c xmlElementPtr xmlGetDtdQElementDesc (xmlDtdPtr,Ptr{xmlChar},Ptr{xmlChar}) shlib
@c xmlElementPtr xmlGetDtdElementDesc (xmlDtdPtr,Ptr{xmlChar}) shlib
@c Int32 xmlValidGetPotentialChildren (Ptr{xmlElementContent},Ptr{Ptr{xmlChar}},Ptr{Int32},Int32) shlib
@c Int32 xmlValidGetValidElements (Ptr{xmlNode},Ptr{xmlNode},Ptr{Ptr{xmlChar}},Int32) shlib
@c Int32 xmlValidateNameValue (Ptr{xmlChar},) shlib
@c Int32 xmlValidateNamesValue (Ptr{xmlChar},) shlib
@c Int32 xmlValidateNmtokenValue (Ptr{xmlChar},) shlib
@c Int32 xmlValidateNmtokensValue (Ptr{xmlChar},) shlib
@c Int32 xmlValidBuildContentModel (xmlValidCtxtPtr,xmlElementPtr) shlib
@c Int32 xmlValidatePushElement (xmlValidCtxtPtr,xmlDocPtr,xmlNodePtr,Ptr{xmlChar}) shlib
@c Int32 xmlValidatePushCData (xmlValidCtxtPtr,Ptr{xmlChar},Int32) shlib
@c Int32 xmlValidatePopElement (xmlValidCtxtPtr,xmlDocPtr,xmlNodePtr,Ptr{xmlChar}) shlib
typealias xmlEntityType Int32
typealias xmlEntitiesTable Void
typealias xmlEntitiesTablePtr Ptr{xmlEntitiesTable}
@c None xmlInitializePredefinedEntities () shlib
@c xmlEntityPtr xmlNewEntity (xmlDocPtr,Ptr{xmlChar},Int32,Ptr{xmlChar},Ptr{xmlChar},Ptr{xmlChar}) shlib
@c xmlEntityPtr xmlAddDocEntity (xmlDocPtr,Ptr{xmlChar},Int32,Ptr{xmlChar},Ptr{xmlChar},Ptr{xmlChar}) shlib
@c xmlEntityPtr xmlAddDtdEntity (xmlDocPtr,Ptr{xmlChar},Int32,Ptr{xmlChar},Ptr{xmlChar},Ptr{xmlChar}) shlib
@c xmlEntityPtr xmlGetPredefinedEntity (Ptr{xmlChar},) shlib
@c xmlEntityPtr xmlGetDocEntity (xmlDocPtr,Ptr{xmlChar}) shlib
@c xmlEntityPtr xmlGetDtdEntity (xmlDocPtr,Ptr{xmlChar}) shlib
@c xmlEntityPtr xmlGetParameterEntity (xmlDocPtr,Ptr{xmlChar}) shlib
@c Ptr{xmlChar} xmlEncodeEntities (xmlDocPtr,Ptr{xmlChar}) shlib
@c Ptr{xmlChar} xmlEncodeEntitiesReentrant (xmlDocPtr,Ptr{xmlChar}) shlib
@c Ptr{xmlChar} xmlEncodeSpecialChars (xmlDocPtr,Ptr{xmlChar}) shlib
@c xmlEntitiesTablePtr xmlCreateEntitiesTable () shlib
@c xmlEntitiesTablePtr xmlCopyEntitiesTable (xmlEntitiesTablePtr,) shlib
@c None xmlFreeEntitiesTable (xmlEntitiesTablePtr,) shlib
@c None xmlDumpEntitiesTable (xmlBufferPtr,xmlEntitiesTablePtr) shlib
@c None xmlDumpEntityDecl (xmlBufferPtr,xmlEntityPtr) shlib
@c None xmlCleanupPredefinedEntities () shlib
typealias xmlParserInputDeallocate Ptr{Void}
typealias xmlParserNodeInfo Void
typealias xmlParserNodeInfoPtr Ptr{xmlParserNodeInfo}
typealias xmlParserNodeInfoSeq Void
typealias xmlParserNodeInfoSeqPtr Ptr{xmlParserNodeInfoSeq}
typealias xmlParserInputState Int32
typealias xmlParserMode Int32
typealias resolveEntitySAXFunc Ptr{Void}
typealias internalSubsetSAXFunc Ptr{Void}
typealias externalSubsetSAXFunc Ptr{Void}
typealias getEntitySAXFunc Ptr{Void}
typealias getParameterEntitySAXFunc Ptr{Void}
typealias entityDeclSAXFunc Ptr{Void}
typealias notationDeclSAXFunc Ptr{Void}
typealias attributeDeclSAXFunc Ptr{Void}
typealias elementDeclSAXFunc Ptr{Void}
typealias unparsedEntityDeclSAXFunc Ptr{Void}
typealias setDocumentLocatorSAXFunc Ptr{Void}
typealias startDocumentSAXFunc Ptr{Void}
typealias endDocumentSAXFunc Ptr{Void}
typealias startElementSAXFunc Ptr{Void}
typealias endElementSAXFunc Ptr{Void}
typealias attributeSAXFunc Ptr{Void}
typealias referenceSAXFunc Ptr{Void}
typealias charactersSAXFunc Ptr{Void}
typealias ignorableWhitespaceSAXFunc Ptr{Void}
typealias processingInstructionSAXFunc Ptr{Void}
typealias commentSAXFunc Ptr{Void}
typealias cdataBlockSAXFunc Ptr{Void}
typealias warningSAXFunc Ptr{Void}
typealias errorSAXFunc Ptr{Void}
typealias fatalErrorSAXFunc Ptr{Void}
typealias isStandaloneSAXFunc Ptr{Void}
typealias hasInternalSubsetSAXFunc Ptr{Void}
typealias hasExternalSubsetSAXFunc Ptr{Void}
typealias startElementNsSAX2Func Ptr{Void}
typealias endElementNsSAX2Func Ptr{Void}
typealias xmlSAXHandlerV1 Void
typealias xmlSAXHandlerV1Ptr Ptr{xmlSAXHandlerV1}
typealias xmlExternalEntityLoader Ptr{Void}
typealias xmlCharEncoding Int32
typealias xmlCharEncodingInputFunc Ptr{Void}
typealias xmlCharEncodingOutputFunc Ptr{Void}
typealias xmlCharEncodingHandler Void
typealias xmlCharEncodingHandlerPtr Ptr{xmlCharEncodingHandler}
@c None xmlInitCharEncodingHandlers () shlib
@c None xmlCleanupCharEncodingHandlers () shlib
@c None xmlRegisterCharEncodingHandler (xmlCharEncodingHandlerPtr,) shlib
@c xmlCharEncodingHandlerPtr xmlGetCharEncodingHandler (xmlCharEncoding,) shlib
@c xmlCharEncodingHandlerPtr xmlFindCharEncodingHandler (Ptr{Uint8},) shlib
@c xmlCharEncodingHandlerPtr xmlNewCharEncodingHandler (Ptr{Uint8},xmlCharEncodingInputFunc,xmlCharEncodingOutputFunc) shlib
@c Int32 xmlAddEncodingAlias (Ptr{Uint8},Ptr{Uint8}) shlib
@c Int32 xmlDelEncodingAlias (Ptr{Uint8},) shlib
@c Ptr{Uint8} xmlGetEncodingAlias (Ptr{Uint8},) shlib
@c None xmlCleanupEncodingAliases () shlib
@c xmlCharEncoding xmlParseCharEncoding (Ptr{Uint8},) shlib
@c Ptr{Uint8} xmlGetCharEncodingName (xmlCharEncoding,) shlib
@c xmlCharEncoding xmlDetectCharEncoding (Ptr{Uint8},Int32) shlib
@c Int32 xmlCharEncOutFunc (Ptr{xmlCharEncodingHandler},xmlBufferPtr,xmlBufferPtr) shlib
@c Int32 xmlCharEncInFunc (Ptr{xmlCharEncodingHandler},xmlBufferPtr,xmlBufferPtr) shlib
@c Int32 xmlCharEncFirstLine (Ptr{xmlCharEncodingHandler},xmlBufferPtr,xmlBufferPtr) shlib
@c Int32 xmlCharEncCloseFunc (Ptr{xmlCharEncodingHandler},) shlib
@c Int32 UTF8Toisolat1 (Ptr{Uint8},Ptr{Int32},Ptr{Uint8},Ptr{Int32}) shlib
@c Int32 isolat1ToUTF8 (Ptr{Uint8},Ptr{Int32},Ptr{Uint8},Ptr{Int32}) shlib
typealias xmlInputMatchCallback Ptr{Void}
typealias xmlInputOpenCallback Ptr{Void}
typealias xmlInputReadCallback Ptr{Void}
typealias xmlInputCloseCallback Ptr{Void}
typealias xmlOutputMatchCallback Ptr{Void}
typealias xmlOutputOpenCallback Ptr{Void}
typealias xmlOutputWriteCallback Ptr{Void}
typealias xmlOutputCloseCallback Ptr{Void}
@c None xmlCleanupInputCallbacks () shlib
@c Int32 xmlPopInputCallbacks () shlib
@c None xmlRegisterDefaultInputCallbacks () shlib
@c xmlParserInputBufferPtr xmlAllocParserInputBuffer (xmlCharEncoding,) shlib
@c xmlParserInputBufferPtr xmlParserInputBufferCreateFilename (Ptr{Uint8},xmlCharEncoding) shlib
@c xmlParserInputBufferPtr xmlParserInputBufferCreateFile (Ptr{FILE},xmlCharEncoding) shlib
@c xmlParserInputBufferPtr xmlParserInputBufferCreateFd (Int32,xmlCharEncoding) shlib
@c xmlParserInputBufferPtr xmlParserInputBufferCreateMem (Ptr{Uint8},Int32,xmlCharEncoding) shlib
@c xmlParserInputBufferPtr xmlParserInputBufferCreateStatic (Ptr{Uint8},Int32,xmlCharEncoding) shlib
@c xmlParserInputBufferPtr xmlParserInputBufferCreateIO (xmlInputReadCallback,xmlInputCloseCallback,Ptr{None},xmlCharEncoding) shlib
@c Int32 xmlParserInputBufferRead (xmlParserInputBufferPtr,Int32) shlib
@c Int32 xmlParserInputBufferGrow (xmlParserInputBufferPtr,Int32) shlib
@c Int32 xmlParserInputBufferPush (xmlParserInputBufferPtr,Int32,Ptr{Uint8}) shlib
@c None xmlFreeParserInputBuffer (xmlParserInputBufferPtr,) shlib
@c Ptr{Uint8} xmlParserGetDirectory (Ptr{Uint8},) shlib
@c Int32 xmlRegisterInputCallbacks (xmlInputMatchCallback,xmlInputOpenCallback,xmlInputReadCallback,xmlInputCloseCallback) shlib
@c xmlParserInputBufferPtr __xmlParserInputBufferCreateFilename (Ptr{Uint8},xmlCharEncoding) shlib
@c None xmlCleanupOutputCallbacks () shlib
@c None xmlRegisterDefaultOutputCallbacks () shlib
@c xmlOutputBufferPtr xmlAllocOutputBuffer (xmlCharEncodingHandlerPtr,) shlib
@c xmlOutputBufferPtr xmlOutputBufferCreateFilename (Ptr{Uint8},xmlCharEncodingHandlerPtr,Int32) shlib
@c xmlOutputBufferPtr xmlOutputBufferCreateFile (Ptr{FILE},xmlCharEncodingHandlerPtr) shlib
@c xmlOutputBufferPtr xmlOutputBufferCreateBuffer (xmlBufferPtr,xmlCharEncodingHandlerPtr) shlib
@c xmlOutputBufferPtr xmlOutputBufferCreateFd (Int32,xmlCharEncodingHandlerPtr) shlib
@c xmlOutputBufferPtr xmlOutputBufferCreateIO (xmlOutputWriteCallback,xmlOutputCloseCallback,Ptr{None},xmlCharEncodingHandlerPtr) shlib
@c Int32 xmlOutputBufferWrite (xmlOutputBufferPtr,Int32,Ptr{Uint8}) shlib
@c Int32 xmlOutputBufferWriteString (xmlOutputBufferPtr,Ptr{Uint8}) shlib
@c Int32 xmlOutputBufferWriteEscape (xmlOutputBufferPtr,Ptr{xmlChar},xmlCharEncodingOutputFunc) shlib
@c Int32 xmlOutputBufferFlush (xmlOutputBufferPtr,) shlib
@c Int32 xmlOutputBufferClose (xmlOutputBufferPtr,) shlib
@c Int32 xmlRegisterOutputCallbacks (xmlOutputMatchCallback,xmlOutputOpenCallback,xmlOutputWriteCallback,xmlOutputCloseCallback) shlib
@c xmlOutputBufferPtr __xmlOutputBufferCreateFilename (Ptr{Uint8},xmlCharEncodingHandlerPtr,Int32) shlib
@c None xmlRegisterHTTPPostCallbacks () shlib
@c xmlParserInputPtr xmlCheckHTTPInput (xmlParserCtxtPtr,xmlParserInputPtr) shlib
@c xmlParserInputPtr xmlNoNetExternalEntityLoader (Ptr{Uint8},Ptr{Uint8},xmlParserCtxtPtr) shlib
@c Ptr{xmlChar} xmlNormalizeWindowsPath (Ptr{xmlChar},) shlib
@c Int32 xmlCheckFilename (Ptr{Uint8},) shlib
@c Int32 xmlFileMatch (Ptr{Uint8},) shlib
@c Ptr{None} xmlFileOpen (Ptr{Uint8},) shlib
@c Int32 xmlFileRead (Ptr{None},Ptr{Uint8},Int32) shlib
@c Int32 xmlFileClose (Ptr{None},) shlib
@c Int32 xmlIOHTTPMatch (Ptr{Uint8},) shlib
@c Ptr{None} xmlIOHTTPOpen (Ptr{Uint8},) shlib
@c Ptr{None} xmlIOHTTPOpenW (Ptr{Uint8},Int32) shlib
@c Int32 xmlIOHTTPRead (Ptr{None},Ptr{Uint8},Int32) shlib
@c Int32 xmlIOHTTPClose (Ptr{None},) shlib
@c Int32 xmlIOFTPMatch (Ptr{Uint8},) shlib
@c Ptr{None} xmlIOFTPOpen (Ptr{Uint8},) shlib
@c Int32 xmlIOFTPRead (Ptr{None},Ptr{Uint8},Int32) shlib
@c Int32 xmlIOFTPClose (Ptr{None},) shlib
@c None xmlInitParser () shlib
@c None xmlCleanupParser () shlib
@c Int32 xmlParserInputRead (xmlParserInputPtr,Int32) shlib
@c Int32 xmlParserInputGrow (xmlParserInputPtr,Int32) shlib
@c xmlDocPtr xmlParseDoc (Ptr{xmlChar},) shlib
@c xmlDocPtr xmlParseFile (Ptr{Uint8},) shlib
@c xmlDocPtr xmlParseMemory (Ptr{Uint8},Int32) shlib
@c Int32 xmlSubstituteEntitiesDefault (Int32,) shlib
@c Int32 xmlKeepBlanksDefault (Int32,) shlib
@c None xmlStopParser (xmlParserCtxtPtr,) shlib
@c Int32 xmlPedanticParserDefault (Int32,) shlib
@c Int32 xmlLineNumbersDefault (Int32,) shlib
@c xmlDocPtr xmlRecoverDoc (Ptr{xmlChar},) shlib
@c xmlDocPtr xmlRecoverMemory (Ptr{Uint8},Int32) shlib
@c xmlDocPtr xmlRecoverFile (Ptr{Uint8},) shlib
@c Int32 xmlParseDocument (xmlParserCtxtPtr,) shlib
@c Int32 xmlParseExtParsedEnt (xmlParserCtxtPtr,) shlib
@c Int32 xmlSAXUserParseFile (xmlSAXHandlerPtr,Ptr{None},Ptr{Uint8}) shlib
@c Int32 xmlSAXUserParseMemory (xmlSAXHandlerPtr,Ptr{None},Ptr{Uint8},Int32) shlib
@c xmlDocPtr xmlSAXParseDoc (xmlSAXHandlerPtr,Ptr{xmlChar},Int32) shlib
@c xmlDocPtr xmlSAXParseMemory (xmlSAXHandlerPtr,Ptr{Uint8},Int32,Int32) shlib
@c xmlDocPtr xmlSAXParseMemoryWithData (xmlSAXHandlerPtr,Ptr{Uint8},Int32,Int32,Ptr{None}) shlib
@c xmlDocPtr xmlSAXParseFile (xmlSAXHandlerPtr,Ptr{Uint8},Int32) shlib
@c xmlDocPtr xmlSAXParseFileWithData (xmlSAXHandlerPtr,Ptr{Uint8},Int32,Ptr{None}) shlib
@c xmlDocPtr xmlSAXParseEntity (xmlSAXHandlerPtr,Ptr{Uint8}) shlib
@c xmlDocPtr xmlParseEntity (Ptr{Uint8},) shlib
@c xmlDtdPtr xmlSAXParseDTD (xmlSAXHandlerPtr,Ptr{xmlChar},Ptr{xmlChar}) shlib
@c xmlDtdPtr xmlParseDTD (Ptr{xmlChar},Ptr{xmlChar}) shlib
@c xmlDtdPtr xmlIOParseDTD (xmlSAXHandlerPtr,xmlParserInputBufferPtr,xmlCharEncoding) shlib
@c Int32 xmlParseBalancedChunkMemory (xmlDocPtr,xmlSAXHandlerPtr,Ptr{None},Int32,Ptr{xmlChar},Ptr{xmlNodePtr}) shlib
@c xmlParserErrors xmlParseInNodeContext (xmlNodePtr,Ptr{Uint8},Int32,Int32,Ptr{xmlNodePtr}) shlib
@c Int32 xmlParseBalancedChunkMemoryRecover (xmlDocPtr,xmlSAXHandlerPtr,Ptr{None},Int32,Ptr{xmlChar},Ptr{xmlNodePtr},Int32) shlib
@c Int32 xmlParseExternalEntity (xmlDocPtr,xmlSAXHandlerPtr,Ptr{None},Int32,Ptr{xmlChar},Ptr{xmlChar},Ptr{xmlNodePtr}) shlib
@c Int32 xmlParseCtxtExternalEntity (xmlParserCtxtPtr,Ptr{xmlChar},Ptr{xmlChar},Ptr{xmlNodePtr}) shlib
@c xmlParserCtxtPtr xmlNewParserCtxt () shlib
@c Int32 xmlInitParserCtxt (xmlParserCtxtPtr,) shlib
@c None xmlClearParserCtxt (xmlParserCtxtPtr,) shlib
@c None xmlFreeParserCtxt (xmlParserCtxtPtr,) shlib
@c None xmlSetupParserForBuffer (xmlParserCtxtPtr,Ptr{xmlChar},Ptr{Uint8}) shlib
@c xmlParserCtxtPtr xmlCreateDocParserCtxt (Ptr{xmlChar},) shlib
@c Int32 xmlGetFeaturesList (Ptr{Int32},Ptr{Ptr{Uint8}}) shlib
@c Int32 xmlGetFeature (xmlParserCtxtPtr,Ptr{Uint8},Ptr{None}) shlib
@c Int32 xmlSetFeature (xmlParserCtxtPtr,Ptr{Uint8},Ptr{None}) shlib
@c xmlParserCtxtPtr xmlCreatePushParserCtxt (xmlSAXHandlerPtr,Ptr{None},Ptr{Uint8},Int32,Ptr{Uint8}) shlib
@c Int32 xmlParseChunk (xmlParserCtxtPtr,Ptr{Uint8},Int32,Int32) shlib
@c xmlParserCtxtPtr xmlCreateIOParserCtxt (xmlSAXHandlerPtr,Ptr{None},xmlInputReadCallback,xmlInputCloseCallback,Ptr{None},xmlCharEncoding) shlib
@c xmlParserInputPtr xmlNewIOInputStream (xmlParserCtxtPtr,xmlParserInputBufferPtr,xmlCharEncoding) shlib
@c Ptr{xmlParserNodeInfo} xmlParserFindNodeInfo (xmlParserCtxtPtr,xmlNodePtr) shlib
@c None xmlInitNodeInfoSeq (xmlParserNodeInfoSeqPtr,) shlib
@c None xmlClearNodeInfoSeq (xmlParserNodeInfoSeqPtr,) shlib
@c Uint64 xmlParserFindNodeInfoIndex (xmlParserNodeInfoSeqPtr,xmlNodePtr) shlib
@c None xmlParserAddNodeInfo (xmlParserCtxtPtr,xmlParserNodeInfoPtr) shlib
@c None xmlSetExternalEntityLoader (xmlExternalEntityLoader,) shlib
@c xmlExternalEntityLoader xmlGetExternalEntityLoader () shlib
@c xmlParserInputPtr xmlLoadExternalEntity (Ptr{Uint8},Ptr{Uint8},xmlParserCtxtPtr) shlib
@c Int64 xmlByteConsumed (xmlParserCtxtPtr,) shlib
typealias xmlParserOption Int32
@c None xmlCtxtReset (xmlParserCtxtPtr,) shlib
@c Int32 xmlCtxtResetPush (xmlParserCtxtPtr,Ptr{Uint8},Int32,Ptr{Uint8},Ptr{Uint8}) shlib
@c Int32 xmlCtxtUseOptions (xmlParserCtxtPtr,Int32) shlib
@c xmlDocPtr xmlReadDoc (Ptr{xmlChar},Ptr{Uint8},Ptr{Uint8},Int32) shlib
@c xmlDocPtr xmlReadFile (Ptr{Uint8},Ptr{Uint8},Int32) shlib
@c xmlDocPtr xmlReadMemory (Ptr{Uint8},Int32,Ptr{Uint8},Ptr{Uint8},Int32) shlib
@c xmlDocPtr xmlReadFd (Int32,Ptr{Uint8},Ptr{Uint8},Int32) shlib
@c xmlDocPtr xmlReadIO (xmlInputReadCallback,xmlInputCloseCallback,Ptr{None},Ptr{Uint8},Ptr{Uint8},Int32) shlib
@c xmlDocPtr xmlCtxtReadDoc (xmlParserCtxtPtr,Ptr{xmlChar},Ptr{Uint8},Ptr{Uint8},Int32) shlib
@c xmlDocPtr xmlCtxtReadFile (xmlParserCtxtPtr,Ptr{Uint8},Ptr{Uint8},Int32) shlib
@c xmlDocPtr xmlCtxtReadMemory (xmlParserCtxtPtr,Ptr{Uint8},Int32,Ptr{Uint8},Ptr{Uint8},Int32) shlib
@c xmlDocPtr xmlCtxtReadFd (xmlParserCtxtPtr,Int32,Ptr{Uint8},Ptr{Uint8},Int32) shlib
@c xmlDocPtr xmlCtxtReadIO (xmlParserCtxtPtr,xmlInputReadCallback,xmlInputCloseCallback,Ptr{None},Ptr{Uint8},Ptr{Uint8},Int32) shlib
typealias xmlFeature Int32
@c Int32 xmlHasFeature (xmlFeature,) shlib
typealias u_char __u_char
typealias u_short __u_short
typealias u_int __u_int
typealias u_long __u_long
typealias quad_t __quad_t
typealias u_quad_t __u_quad_t
typealias fsid_t __fsid_t
typealias loff_t __loff_t
typealias ino_t __ino_t
typealias dev_t __dev_t
typealias gid_t __gid_t
typealias mode_t __mode_t
typealias nlink_t __nlink_t
typealias uid_t __uid_t
typealias pid_t __pid_t
typealias id_t __id_t
typealias daddr_t __daddr_t
typealias caddr_t __caddr_t
typealias key_t __key_t
typealias clock_t __clock_t
typealias time_t __time_t
typealias clockid_t __clockid_t
typealias timer_t __timer_t
typealias ulong Uint64
typealias ushort Uint16
typealias uint Uint32
typealias int8_t Uint8
typealias int16_t Int16
typealias int32_t Int32
typealias int64_t Int64
typealias u_int8_t Uint8
typealias u_int16_t Uint16
typealias u_int32_t Uint32
typealias u_int64_t Uint64
typealias register_t Int64
typealias __sig_atomic_t Int32
typealias __sigset_t Void
typealias sigset_t __sigset_t
typealias suseconds_t __suseconds_t
typealias __fd_mask Int64
typealias fd_set Void
typealias fd_mask __fd_mask
@c Int32 select (Int32,Ptr{fd_set},Ptr{fd_set},Ptr{fd_set},Ptr{Void}) shlib
@c Int32 pselect (Int32,Ptr{fd_set},Ptr{fd_set},Ptr{fd_set},Ptr{Void},Ptr{__sigset_t}) shlib
@c Uint32 gnu_dev_major (Uint64,) shlib
@c Uint32 gnu_dev_minor (Uint64,) shlib
@c Uint64 gnu_dev_makedev (Uint32,Uint32) shlib
typealias blksize_t __blksize_t
typealias blkcnt_t __blkcnt_t
typealias fsblkcnt_t __fsblkcnt_t
typealias fsfilcnt_t __fsfilcnt_t
typealias pthread_t Uint64
typealias pthread_attr_t Void
typealias __pthread_list_t Void
typealias pthread_mutex_t Void
typealias pthread_mutexattr_t Void
typealias pthread_cond_t Void
typealias pthread_condattr_t Void
typealias pthread_key_t Uint32
typealias pthread_once_t Int32
typealias pthread_rwlock_t Void
typealias pthread_rwlockattr_t Void
typealias pthread_spinlock_t Int32
typealias pthread_barrier_t Void
typealias pthread_barrierattr_t Void
typealias xlinkHRef Ptr{xmlChar}
typealias xlinkRole Ptr{xmlChar}
typealias xlinkTitle Ptr{xmlChar}
typealias xlinkType Int32
typealias xlinkShow Int32
typealias xlinkActuate Int32
typealias xlinkNodeDetectFunc Ptr{Void}
typealias xlinkSimpleLinkFunk Ptr{Void}
typealias xlinkExtendedLinkFunk Ptr{Void}
typealias xlinkExtendedLinkSetFunk Ptr{Void}
typealias xlinkHandler Void
typealias xlinkHandlerPtr Ptr{xlinkHandler}
@c xlinkNodeDetectFunc xlinkGetDefaultDetect () shlib
@c None xlinkSetDefaultDetect (xlinkNodeDetectFunc,) shlib
@c xlinkHandlerPtr xlinkGetDefaultHandler () shlib
@c None xlinkSetDefaultHandler (xlinkHandlerPtr,) shlib
@c xlinkType xlinkIsLink (xmlDocPtr,xmlNodePtr) shlib
@c Ptr{xmlChar} getPublicId (Ptr{None},) shlib
@c Ptr{xmlChar} getSystemId (Ptr{None},) shlib
@c None setDocumentLocator (Ptr{None},xmlSAXLocatorPtr) shlib
@c Int32 getLineNumber (Ptr{None},) shlib
@c Int32 getColumnNumber (Ptr{None},) shlib
@c Int32 isStandalone (Ptr{None},) shlib
@c Int32 hasInternalSubset (Ptr{None},) shlib
@c Int32 hasExternalSubset (Ptr{None},) shlib
@c None internalSubset (Ptr{None},Ptr{xmlChar},Ptr{xmlChar},Ptr{xmlChar}) shlib
@c None externalSubset (Ptr{None},Ptr{xmlChar},Ptr{xmlChar},Ptr{xmlChar}) shlib
@c xmlEntityPtr getEntity (Ptr{None},Ptr{xmlChar}) shlib
@c xmlEntityPtr getParameterEntity (Ptr{None},Ptr{xmlChar}) shlib
@c xmlParserInputPtr resolveEntity (Ptr{None},Ptr{xmlChar},Ptr{xmlChar}) shlib
@c None entityDecl (Ptr{None},Ptr{xmlChar},Int32,Ptr{xmlChar},Ptr{xmlChar},Ptr{xmlChar}) shlib
@c None attributeDecl (Ptr{None},Ptr{xmlChar},Ptr{xmlChar},Int32,Int32,Ptr{xmlChar},xmlEnumerationPtr) shlib
@c None elementDecl (Ptr{None},Ptr{xmlChar},Int32,xmlElementContentPtr) shlib
@c None notationDecl (Ptr{None},Ptr{xmlChar},Ptr{xmlChar},Ptr{xmlChar}) shlib
@c None unparsedEntityDecl (Ptr{None},Ptr{xmlChar},Ptr{xmlChar},Ptr{xmlChar},Ptr{xmlChar}) shlib
@c None startDocument (Ptr{None},) shlib
@c None endDocument (Ptr{None},) shlib
@c None attribute (Ptr{None},Ptr{xmlChar},Ptr{xmlChar}) shlib
@c None startElement (Ptr{None},Ptr{xmlChar},Ptr{Ptr{xmlChar}}) shlib
@c None endElement (Ptr{None},Ptr{xmlChar}) shlib
@c None reference (Ptr{None},Ptr{xmlChar}) shlib
@c None characters (Ptr{None},Ptr{xmlChar},Int32) shlib
@c None ignorableWhitespace (Ptr{None},Ptr{xmlChar},Int32) shlib
@c None processingInstruction (Ptr{None},Ptr{xmlChar},Ptr{xmlChar}) shlib
@c None globalNamespace (Ptr{None},Ptr{xmlChar},Ptr{xmlChar}) shlib
@c None setNamespace (Ptr{None},Ptr{xmlChar}) shlib
@c xmlNsPtr getNamespace (Ptr{None},) shlib
@c Int32 checkNamespace (Ptr{None},Ptr{xmlChar}) shlib
@c None namespaceDecl (Ptr{None},Ptr{xmlChar},Ptr{xmlChar}) shlib
@c None comment (Ptr{None},Ptr{xmlChar}) shlib
@c None cdataBlock (Ptr{None},Ptr{xmlChar},Int32) shlib
@c None initxmlDefaultSAXHandler (Ptr{xmlSAXHandlerV1},Int32) shlib
@c None inithtmlDefaultSAXHandler (Ptr{xmlSAXHandlerV1},) shlib
@c None initdocbDefaultSAXHandler (Ptr{xmlSAXHandlerV1},) shlib
@c Ptr{xmlChar} xmlSAX2GetPublicId (Ptr{None},) shlib
@c Ptr{xmlChar} xmlSAX2GetSystemId (Ptr{None},) shlib
@c None xmlSAX2SetDocumentLocator (Ptr{None},xmlSAXLocatorPtr) shlib
@c Int32 xmlSAX2GetLineNumber (Ptr{None},) shlib
@c Int32 xmlSAX2GetColumnNumber (Ptr{None},) shlib
@c Int32 xmlSAX2IsStandalone (Ptr{None},) shlib
@c Int32 xmlSAX2HasInternalSubset (Ptr{None},) shlib
@c Int32 xmlSAX2HasExternalSubset (Ptr{None},) shlib
@c None xmlSAX2InternalSubset (Ptr{None},Ptr{xmlChar},Ptr{xmlChar},Ptr{xmlChar}) shlib
@c None xmlSAX2ExternalSubset (Ptr{None},Ptr{xmlChar},Ptr{xmlChar},Ptr{xmlChar}) shlib
@c xmlEntityPtr xmlSAX2GetEntity (Ptr{None},Ptr{xmlChar}) shlib
@c xmlEntityPtr xmlSAX2GetParameterEntity (Ptr{None},Ptr{xmlChar}) shlib
@c xmlParserInputPtr xmlSAX2ResolveEntity (Ptr{None},Ptr{xmlChar},Ptr{xmlChar}) shlib
@c None xmlSAX2EntityDecl (Ptr{None},Ptr{xmlChar},Int32,Ptr{xmlChar},Ptr{xmlChar},Ptr{xmlChar}) shlib
@c None xmlSAX2AttributeDecl (Ptr{None},Ptr{xmlChar},Ptr{xmlChar},Int32,Int32,Ptr{xmlChar},xmlEnumerationPtr) shlib
@c None xmlSAX2ElementDecl (Ptr{None},Ptr{xmlChar},Int32,xmlElementContentPtr) shlib
@c None xmlSAX2NotationDecl (Ptr{None},Ptr{xmlChar},Ptr{xmlChar},Ptr{xmlChar}) shlib
@c None xmlSAX2UnparsedEntityDecl (Ptr{None},Ptr{xmlChar},Ptr{xmlChar},Ptr{xmlChar},Ptr{xmlChar}) shlib
@c None xmlSAX2StartDocument (Ptr{None},) shlib
@c None xmlSAX2EndDocument (Ptr{None},) shlib
@c None xmlSAX2StartElement (Ptr{None},Ptr{xmlChar},Ptr{Ptr{xmlChar}}) shlib
@c None xmlSAX2EndElement (Ptr{None},Ptr{xmlChar}) shlib
@c None xmlSAX2StartElementNs (Ptr{None},Ptr{xmlChar},Ptr{xmlChar},Ptr{xmlChar},Int32,Ptr{Ptr{xmlChar}},Int32,Int32,Ptr{Ptr{xmlChar}}) shlib
@c None xmlSAX2EndElementNs (Ptr{None},Ptr{xmlChar},Ptr{xmlChar},Ptr{xmlChar}) shlib
@c None xmlSAX2Reference (Ptr{None},Ptr{xmlChar}) shlib
@c None xmlSAX2Characters (Ptr{None},Ptr{xmlChar},Int32) shlib
@c None xmlSAX2IgnorableWhitespace (Ptr{None},Ptr{xmlChar},Int32) shlib
@c None xmlSAX2ProcessingInstruction (Ptr{None},Ptr{xmlChar},Ptr{xmlChar}) shlib
@c None xmlSAX2Comment (Ptr{None},Ptr{xmlChar}) shlib
@c None xmlSAX2CDataBlock (Ptr{None},Ptr{xmlChar},Int32) shlib
@c Int32 xmlSAXDefaultVersion (Int32,) shlib
@c Int32 xmlSAXVersion (Ptr{xmlSAXHandler},Int32) shlib
@c None xmlSAX2InitDefaultSAXHandler (Ptr{xmlSAXHandler},Int32) shlib
@c None xmlSAX2InitHtmlDefaultSAXHandler (Ptr{xmlSAXHandler},) shlib
@c None htmlDefaultSAXHandlerInit () shlib
@c None xmlSAX2InitDocbDefaultSAXHandler (Ptr{xmlSAXHandler},) shlib
@c None docbDefaultSAXHandlerInit () shlib
@c None xmlDefaultSAXHandlerInit () shlib
@c None xmlInitGlobals () shlib
@c None xmlCleanupGlobals () shlib
typealias xmlParserInputBufferCreateFilenameFunc Ptr{Void}
typealias xmlOutputBufferCreateFilenameFunc Ptr{Void}
@c xmlParserInputBufferCreateFilenameFunc xmlParserInputBufferCreateFilenameDefault (xmlParserInputBufferCreateFilenameFunc,) shlib
@c xmlOutputBufferCreateFilenameFunc xmlOutputBufferCreateFilenameDefault (xmlOutputBufferCreateFilenameFunc,) shlib
typealias xmlRegisterNodeFunc Ptr{Void}
typealias xmlDeregisterNodeFunc Ptr{Void}
typealias xmlGlobalState Void
typealias xmlGlobalStatePtr Ptr{xmlGlobalState}
@c None xmlInitializeGlobalState (xmlGlobalStatePtr,) shlib
@c None xmlThrDefSetGenericErrorFunc (Ptr{None},xmlGenericErrorFunc) shlib
@c None xmlThrDefSetStructuredErrorFunc (Ptr{None},xmlStructuredErrorFunc) shlib
@c xmlRegisterNodeFunc xmlRegisterNodeDefault (xmlRegisterNodeFunc,) shlib
@c xmlRegisterNodeFunc xmlThrDefRegisterNodeDefault (xmlRegisterNodeFunc,) shlib
@c xmlDeregisterNodeFunc xmlDeregisterNodeDefault (xmlDeregisterNodeFunc,) shlib
@c xmlDeregisterNodeFunc xmlThrDefDeregisterNodeDefault (xmlDeregisterNodeFunc,) shlib
@c xmlOutputBufferCreateFilenameFunc xmlThrDefOutputBufferCreateFilenameDefault (xmlOutputBufferCreateFilenameFunc,) shlib
@c xmlParserInputBufferCreateFilenameFunc xmlThrDefParserInputBufferCreateFilenameDefault (xmlParserInputBufferCreateFilenameFunc,) shlib
@c Ptr{xmlSAXHandlerV1} __docbDefaultSAXHandler () shlib
@c Ptr{xmlSAXHandlerV1} __htmlDefaultSAXHandler () shlib
@c Ptr{xmlError} __xmlLastError () shlib
@c Ptr{Int32} __oldXMLWDcompatibility () shlib
@c Ptr{xmlBufferAllocationScheme} __xmlBufferAllocScheme () shlib
@c xmlBufferAllocationScheme xmlThrDefBufferAllocScheme (xmlBufferAllocationScheme,) shlib
@c Ptr{Int32} __xmlDefaultBufferSize () shlib
@c Int32 xmlThrDefDefaultBufferSize (Int32,) shlib
@c Ptr{xmlSAXHandlerV1} __xmlDefaultSAXHandler () shlib
@c Ptr{xmlSAXLocator} __xmlDefaultSAXLocator () shlib
@c Ptr{Int32} __xmlDoValidityCheckingDefaultValue () shlib
@c Int32 xmlThrDefDoValidityCheckingDefaultValue (Int32,) shlib
@c Ptr{xmlGenericErrorFunc} __xmlGenericError () shlib
@c Ptr{xmlStructuredErrorFunc} __xmlStructuredError () shlib
@c Ptr{Ptr{None}} __xmlGenericErrorContext () shlib
@c Ptr{Ptr{None}} __xmlStructuredErrorContext () shlib
@c Ptr{Int32} __xmlGetWarningsDefaultValue () shlib
@c Int32 xmlThrDefGetWarningsDefaultValue (Int32,) shlib
@c Ptr{Int32} __xmlIndentTreeOutput () shlib
@c Int32 xmlThrDefIndentTreeOutput (Int32,) shlib
@c Ptr{Ptr{Uint8}} __xmlTreeIndentString () shlib
@c Ptr{Uint8} xmlThrDefTreeIndentString (Ptr{Uint8},) shlib
@c Ptr{Int32} __xmlKeepBlanksDefaultValue () shlib
@c Int32 xmlThrDefKeepBlanksDefaultValue (Int32,) shlib
@c Ptr{Int32} __xmlLineNumbersDefaultValue () shlib
@c Int32 xmlThrDefLineNumbersDefaultValue (Int32,) shlib
@c Ptr{Int32} __xmlLoadExtDtdDefaultValue () shlib
@c Int32 xmlThrDefLoadExtDtdDefaultValue (Int32,) shlib
@c Ptr{Int32} __xmlParserDebugEntities () shlib
@c Int32 xmlThrDefParserDebugEntities (Int32,) shlib
@c Ptr{Ptr{Uint8}} __xmlParserVersion () shlib
@c Ptr{Int32} __xmlPedanticParserDefaultValue () shlib
@c Int32 xmlThrDefPedanticParserDefaultValue (Int32,) shlib
@c Ptr{Int32} __xmlSaveNoEmptyTags () shlib
@c Int32 xmlThrDefSaveNoEmptyTags (Int32,) shlib
@c Ptr{Int32} __xmlSubstituteEntitiesDefaultValue () shlib
@c Int32 xmlThrDefSubstituteEntitiesDefaultValue (Int32,) shlib
@c Ptr{xmlRegisterNodeFunc} __xmlRegisterNodeDefaultValue () shlib
@c Ptr{xmlDeregisterNodeFunc} __xmlDeregisterNodeDefaultValue () shlib
@c Ptr{xmlParserInputBufferCreateFilenameFunc} __xmlParserInputBufferCreateFilenameValue () shlib
@c Ptr{xmlOutputBufferCreateFilenameFunc} __xmlOutputBufferCreateFilenameValue () shlib
@c xmlMutexPtr xmlNewMutex () shlib
@c None xmlMutexLock (xmlMutexPtr,) shlib
@c None xmlMutexUnlock (xmlMutexPtr,) shlib
@c None xmlFreeMutex (xmlMutexPtr,) shlib
@c xmlRMutexPtr xmlNewRMutex () shlib
@c None xmlRMutexLock (xmlRMutexPtr,) shlib
@c None xmlRMutexUnlock (xmlRMutexPtr,) shlib
@c None xmlFreeRMutex (xmlRMutexPtr,) shlib
@c None xmlInitThreads () shlib
@c None xmlLockLibrary () shlib
@c None xmlUnlockLibrary () shlib
@c Int32 xmlGetThreadId () shlib
@c Int32 xmlIsMainThread () shlib
@c None xmlCleanupThreads () shlib
@c xmlGlobalStatePtr xmlGetGlobalState () shlib
typealias xmlCatalogPrefer Int32
typealias xmlCatalogAllow Int32
typealias xmlCatalog Void
typealias xmlCatalogPtr Ptr{xmlCatalog}
@c xmlCatalogPtr xmlNewCatalog (Int32,) shlib
@c xmlCatalogPtr xmlLoadACatalog (Ptr{Uint8},) shlib
@c xmlCatalogPtr xmlLoadSGMLSuperCatalog (Ptr{Uint8},) shlib
@c Int32 xmlConvertSGMLCatalog (xmlCatalogPtr,) shlib
@c Int32 xmlACatalogAdd (xmlCatalogPtr,Ptr{xmlChar},Ptr{xmlChar},Ptr{xmlChar}) shlib
@c Int32 xmlACatalogRemove (xmlCatalogPtr,Ptr{xmlChar}) shlib
@c Ptr{xmlChar} xmlACatalogResolve (xmlCatalogPtr,Ptr{xmlChar},Ptr{xmlChar}) shlib
@c Ptr{xmlChar} xmlACatalogResolveSystem (xmlCatalogPtr,Ptr{xmlChar}) shlib
@c Ptr{xmlChar} xmlACatalogResolvePublic (xmlCatalogPtr,Ptr{xmlChar}) shlib
@c Ptr{xmlChar} xmlACatalogResolveURI (xmlCatalogPtr,Ptr{xmlChar}) shlib
@c None xmlACatalogDump (xmlCatalogPtr,Ptr{FILE}) shlib
@c None xmlFreeCatalog (xmlCatalogPtr,) shlib
@c Int32 xmlCatalogIsEmpty (xmlCatalogPtr,) shlib
@c None xmlInitializeCatalog () shlib
@c Int32 xmlLoadCatalog (Ptr{Uint8},) shlib
@c None xmlLoadCatalogs (Ptr{Uint8},) shlib
@c None xmlCatalogCleanup () shlib
@c None xmlCatalogDump (Ptr{FILE},) shlib
@c Ptr{xmlChar} xmlCatalogResolve (Ptr{xmlChar},Ptr{xmlChar}) shlib
@c Ptr{xmlChar} xmlCatalogResolveSystem (Ptr{xmlChar},) shlib
@c Ptr{xmlChar} xmlCatalogResolvePublic (Ptr{xmlChar},) shlib
@c Ptr{xmlChar} xmlCatalogResolveURI (Ptr{xmlChar},) shlib
@c Int32 xmlCatalogAdd (Ptr{xmlChar},Ptr{xmlChar},Ptr{xmlChar}) shlib
@c Int32 xmlCatalogRemove (Ptr{xmlChar},) shlib
@c xmlDocPtr xmlParseCatalogFile (Ptr{Uint8},) shlib
@c Int32 xmlCatalogConvert () shlib
@c None xmlCatalogFreeLocal (Ptr{None},) shlib
@c Ptr{None} xmlCatalogAddLocal (Ptr{None},Ptr{xmlChar}) shlib
@c Ptr{xmlChar} xmlCatalogLocalResolve (Ptr{None},Ptr{xmlChar},Ptr{xmlChar}) shlib
@c Ptr{xmlChar} xmlCatalogLocalResolveURI (Ptr{None},Ptr{xmlChar}) shlib
@c Int32 xmlCatalogSetDebug (Int32,) shlib
@c xmlCatalogPrefer xmlCatalogSetDefaultPrefer (xmlCatalogPrefer,) shlib
@c None xmlCatalogSetDefaults (xmlCatalogAllow,) shlib
@c xmlCatalogAllow xmlCatalogGetDefaults () shlib
@c Ptr{xmlChar} xmlCatalogGetSystem (Ptr{xmlChar},) shlib
@c Ptr{xmlChar} xmlCatalogGetPublic (Ptr{xmlChar},) shlib
typealias xmlChSRange Void
typealias xmlChSRangePtr Ptr{xmlChSRange}
typealias xmlChLRange Void
typealias xmlChLRangePtr Ptr{xmlChLRange}
typealias xmlChRangeGroup Void
typealias xmlChRangeGroupPtr Ptr{xmlChRangeGroup}
@c Int32 xmlCharInRange (Uint32,Ptr{xmlChRangeGroup}) shlib
@c Int32 xmlIsBaseChar (Uint32,) shlib
@c Int32 xmlIsBlank (Uint32,) shlib
@c Int32 xmlIsChar (Uint32,) shlib
@c Int32 xmlIsCombining (Uint32,) shlib
@c Int32 xmlIsDigit (Uint32,) shlib
@c Int32 xmlIsExtender (Uint32,) shlib
@c Int32 xmlIsIdeographic (Uint32,) shlib
@c Int32 xmlIsPubidChar (Uint32,) shlib
typealias xmlXPathContext Void
typealias xmlXPathContextPtr Ptr{xmlXPathContext}
typealias xmlXPathParserContext Void
typealias xmlXPathParserContextPtr Ptr{xmlXPathParserContext}
typealias xmlXPathError Int32
typealias xmlNodeSet Void
typealias xmlNodeSetPtr Ptr{xmlNodeSet}
typealias xmlXPathObjectType Int32
typealias xmlXPathObject Void
typealias xmlXPathObjectPtr Ptr{xmlXPathObject}
typealias xmlXPathConvertFunc Ptr{Void}
typealias xmlXPathType Void
typealias xmlXPathTypePtr Ptr{xmlXPathType}
typealias xmlXPathVariable Void
typealias xmlXPathVariablePtr Ptr{xmlXPathVariable}
typealias xmlXPathEvalFunc Ptr{Void}
typealias xmlXPathFunct Void
typealias xmlXPathFuncPtr Ptr{xmlXPathFunct}
typealias xmlXPathAxisFunc Ptr{Void}
typealias xmlXPathAxis Void
typealias xmlXPathAxisPtr Ptr{xmlXPathAxis}
typealias xmlXPathFunction Ptr{Void}
typealias xmlXPathVariableLookupFunc Ptr{Void}
typealias xmlXPathFuncLookupFunc Ptr{Void}
typealias xmlXPathCompExpr Void
typealias xmlXPathCompExprPtr Ptr{xmlXPathCompExpr}
@c None xmlXPathFreeObject (xmlXPathObjectPtr,) shlib
@c xmlNodeSetPtr xmlXPathNodeSetCreate (xmlNodePtr,) shlib
@c None xmlXPathFreeNodeSetList (xmlXPathObjectPtr,) shlib
@c None xmlXPathFreeNodeSet (xmlNodeSetPtr,) shlib
@c xmlXPathObjectPtr xmlXPathObjectCopy (xmlXPathObjectPtr,) shlib
@c Int32 xmlXPathCmpNodes (xmlNodePtr,xmlNodePtr) shlib
@c Int32 xmlXPathCastNumberToBoolean (Float64,) shlib
@c Int32 xmlXPathCastStringToBoolean (Ptr{xmlChar},) shlib
@c Int32 xmlXPathCastNodeSetToBoolean (xmlNodeSetPtr,) shlib
@c Int32 xmlXPathCastToBoolean (xmlXPathObjectPtr,) shlib
@c Float64 xmlXPathCastBooleanToNumber (Int32,) shlib
@c Float64 xmlXPathCastStringToNumber (Ptr{xmlChar},) shlib
@c Float64 xmlXPathCastNodeToNumber (xmlNodePtr,) shlib
@c Float64 xmlXPathCastNodeSetToNumber (xmlNodeSetPtr,) shlib
@c Float64 xmlXPathCastToNumber (xmlXPathObjectPtr,) shlib
@c Ptr{xmlChar} xmlXPathCastBooleanToString (Int32,) shlib
@c Ptr{xmlChar} xmlXPathCastNumberToString (Float64,) shlib
@c Ptr{xmlChar} xmlXPathCastNodeToString (xmlNodePtr,) shlib
@c Ptr{xmlChar} xmlXPathCastNodeSetToString (xmlNodeSetPtr,) shlib
@c Ptr{xmlChar} xmlXPathCastToString (xmlXPathObjectPtr,) shlib
@c xmlXPathObjectPtr xmlXPathConvertBoolean (xmlXPathObjectPtr,) shlib
@c xmlXPathObjectPtr xmlXPathConvertNumber (xmlXPathObjectPtr,) shlib
@c xmlXPathObjectPtr xmlXPathConvertString (xmlXPathObjectPtr,) shlib
@c xmlXPathContextPtr xmlXPathNewContext (xmlDocPtr,) shlib
@c None xmlXPathFreeContext (xmlXPathContextPtr,) shlib
@c Int32 xmlXPathContextSetCache (xmlXPathContextPtr,Int32,Int32,Int32) shlib
@c Int64 xmlXPathOrderDocElems (xmlDocPtr,) shlib
@c xmlXPathObjectPtr xmlXPathEval (Ptr{xmlChar},xmlXPathContextPtr) shlib
@c xmlXPathObjectPtr xmlXPathEvalExpression (Ptr{xmlChar},xmlXPathContextPtr) shlib
@c Int32 xmlXPathEvalPredicate (xmlXPathContextPtr,xmlXPathObjectPtr) shlib
@c xmlXPathCompExprPtr xmlXPathCompile (Ptr{xmlChar},) shlib
@c xmlXPathCompExprPtr xmlXPathCtxtCompile (xmlXPathContextPtr,Ptr{xmlChar}) shlib
@c xmlXPathObjectPtr xmlXPathCompiledEval (xmlXPathCompExprPtr,xmlXPathContextPtr) shlib
@c Int32 xmlXPathCompiledEvalToBoolean (xmlXPathCompExprPtr,xmlXPathContextPtr) shlib
@c None xmlXPathFreeCompExpr (xmlXPathCompExprPtr,) shlib
@c None xmlXPathInit () shlib
@c Int32 xmlXPathIsNaN (Float64,) shlib
@c Int32 xmlXPathIsInf (Float64,) shlib
@c None xmlDebugDumpString (Ptr{FILE},Ptr{xmlChar}) shlib
@c None xmlDebugDumpAttr (Ptr{FILE},xmlAttrPtr,Int32) shlib
@c None xmlDebugDumpAttrList (Ptr{FILE},xmlAttrPtr,Int32) shlib
@c None xmlDebugDumpOneNode (Ptr{FILE},xmlNodePtr,Int32) shlib
@c None xmlDebugDumpNode (Ptr{FILE},xmlNodePtr,Int32) shlib
@c None xmlDebugDumpNodeList (Ptr{FILE},xmlNodePtr,Int32) shlib
@c None xmlDebugDumpDocumentHead (Ptr{FILE},xmlDocPtr) shlib
@c None xmlDebugDumpDocument (Ptr{FILE},xmlDocPtr) shlib
@c None xmlDebugDumpDTD (Ptr{FILE},xmlDtdPtr) shlib
@c None xmlDebugDumpEntities (Ptr{FILE},xmlDocPtr) shlib
@c Int32 xmlDebugCheckDocument (Ptr{FILE},xmlDocPtr) shlib
@c None xmlLsOneNode (Ptr{FILE},xmlNodePtr) shlib
@c Int32 xmlLsCountNode (xmlNodePtr,) shlib
@c Ptr{Uint8} xmlBoolToText (Int32,) shlib
typealias xmlShellReadlineFunc Ptr{Void}
typealias xmlShellCtxt Void
typealias xmlShellCtxtPtr Ptr{xmlShellCtxt}
typealias xmlShellCmd Ptr{Void}
@c None xmlShellPrintXPathError (Int32,Ptr{Uint8}) shlib
@c None xmlShellPrintXPathResult (xmlXPathObjectPtr,) shlib
@c Int32 xmlShellList (xmlShellCtxtPtr,Ptr{Uint8},xmlNodePtr,xmlNodePtr) shlib
@c Int32 xmlShellBase (xmlShellCtxtPtr,Ptr{Uint8},xmlNodePtr,xmlNodePtr) shlib
@c Int32 xmlShellDir (xmlShellCtxtPtr,Ptr{Uint8},xmlNodePtr,xmlNodePtr) shlib
@c Int32 xmlShellLoad (xmlShellCtxtPtr,Ptr{Uint8},xmlNodePtr,xmlNodePtr) shlib
@c None xmlShellPrintNode (xmlNodePtr,) shlib
@c Int32 xmlShellCat (xmlShellCtxtPtr,Ptr{Uint8},xmlNodePtr,xmlNodePtr) shlib
@c Int32 xmlShellWrite (xmlShellCtxtPtr,Ptr{Uint8},xmlNodePtr,xmlNodePtr) shlib
@c Int32 xmlShellSave (xmlShellCtxtPtr,Ptr{Uint8},xmlNodePtr,xmlNodePtr) shlib
@c Int32 xmlShellValidate (xmlShellCtxtPtr,Ptr{Uint8},xmlNodePtr,xmlNodePtr) shlib
@c Int32 xmlShellDu (xmlShellCtxtPtr,Ptr{Uint8},xmlNodePtr,xmlNodePtr) shlib
@c Int32 xmlShellPwd (xmlShellCtxtPtr,Ptr{Uint8},xmlNodePtr,xmlNodePtr) shlib
@c None xmlShell (xmlDocPtr,Ptr{Uint8},xmlShellReadlineFunc,Ptr{FILE}) shlib
typealias htmlParserCtxt xmlParserCtxt
typealias htmlParserCtxtPtr xmlParserCtxtPtr
typealias htmlParserNodeInfo xmlParserNodeInfo
typealias htmlSAXHandler xmlSAXHandler
typealias htmlSAXHandlerPtr xmlSAXHandlerPtr
typealias htmlParserInput xmlParserInput
typealias htmlParserInputPtr xmlParserInputPtr
typealias htmlDocPtr xmlDocPtr
typealias htmlNodePtr xmlNodePtr
typealias htmlElemDesc Void
typealias htmlElemDescPtr Ptr{htmlElemDesc}
typealias htmlEntityDesc Void
typealias htmlEntityDescPtr Ptr{htmlEntityDesc}
@c Ptr{htmlElemDesc} htmlTagLookup (Ptr{xmlChar},) shlib
@c Ptr{htmlEntityDesc} htmlEntityLookup (Ptr{xmlChar},) shlib
@c Ptr{htmlEntityDesc} htmlEntityValueLookup (Uint32,) shlib
@c Int32 htmlIsAutoClosed (htmlDocPtr,htmlNodePtr) shlib
@c Int32 htmlAutoCloseTag (htmlDocPtr,Ptr{xmlChar},htmlNodePtr) shlib
@c Ptr{htmlEntityDesc} htmlParseEntityRef (htmlParserCtxtPtr,Ptr{Ptr{xmlChar}}) shlib
@c Int32 htmlParseCharRef (htmlParserCtxtPtr,) shlib
@c None htmlParseElement (htmlParserCtxtPtr,) shlib
@c htmlParserCtxtPtr htmlNewParserCtxt () shlib
@c htmlParserCtxtPtr htmlCreateMemoryParserCtxt (Ptr{Uint8},Int32) shlib
@c Int32 htmlParseDocument (htmlParserCtxtPtr,) shlib
@c htmlDocPtr htmlSAXParseDoc (Ptr{xmlChar},Ptr{Uint8},htmlSAXHandlerPtr,Ptr{None}) shlib
@c htmlDocPtr htmlParseDoc (Ptr{xmlChar},Ptr{Uint8}) shlib
@c htmlDocPtr htmlSAXParseFile (Ptr{Uint8},Ptr{Uint8},htmlSAXHandlerPtr,Ptr{None}) shlib
@c htmlDocPtr htmlParseFile (Ptr{Uint8},Ptr{Uint8}) shlib
@c Int32 UTF8ToHtml (Ptr{Uint8},Ptr{Int32},Ptr{Uint8},Ptr{Int32}) shlib
@c Int32 htmlEncodeEntities (Ptr{Uint8},Ptr{Int32},Ptr{Uint8},Ptr{Int32},Int32) shlib
@c Int32 htmlIsScriptAttribute (Ptr{xmlChar},) shlib
@c Int32 htmlHandleOmittedElem (Int32,) shlib
@c htmlParserCtxtPtr htmlCreatePushParserCtxt (htmlSAXHandlerPtr,Ptr{None},Ptr{Uint8},Int32,Ptr{Uint8},xmlCharEncoding) shlib
@c Int32 htmlParseChunk (htmlParserCtxtPtr,Ptr{Uint8},Int32,Int32) shlib
@c None htmlFreeParserCtxt (htmlParserCtxtPtr,) shlib
typealias htmlParserOption Int32
@c None htmlCtxtReset (htmlParserCtxtPtr,) shlib
@c Int32 htmlCtxtUseOptions (htmlParserCtxtPtr,Int32) shlib
@c htmlDocPtr htmlReadDoc (Ptr{xmlChar},Ptr{Uint8},Ptr{Uint8},Int32) shlib
@c htmlDocPtr htmlReadFile (Ptr{Uint8},Ptr{Uint8},Int32) shlib
@c htmlDocPtr htmlReadMemory (Ptr{Uint8},Int32,Ptr{Uint8},Ptr{Uint8},Int32) shlib
@c htmlDocPtr htmlReadFd (Int32,Ptr{Uint8},Ptr{Uint8},Int32) shlib
@c htmlDocPtr htmlReadIO (xmlInputReadCallback,xmlInputCloseCallback,Ptr{None},Ptr{Uint8},Ptr{Uint8},Int32) shlib
@c htmlDocPtr htmlCtxtReadDoc (xmlParserCtxtPtr,Ptr{xmlChar},Ptr{Uint8},Ptr{Uint8},Int32) shlib
@c htmlDocPtr htmlCtxtReadFile (xmlParserCtxtPtr,Ptr{Uint8},Ptr{Uint8},Int32) shlib
@c htmlDocPtr htmlCtxtReadMemory (xmlParserCtxtPtr,Ptr{Uint8},Int32,Ptr{Uint8},Ptr{Uint8},Int32) shlib
@c htmlDocPtr htmlCtxtReadFd (xmlParserCtxtPtr,Int32,Ptr{Uint8},Ptr{Uint8},Int32) shlib
@c htmlDocPtr htmlCtxtReadIO (xmlParserCtxtPtr,xmlInputReadCallback,xmlInputCloseCallback,Ptr{None},Ptr{Uint8},Ptr{Uint8},Int32) shlib
typealias htmlStatus Int32
@c htmlStatus htmlAttrAllowed (Ptr{htmlElemDesc},Ptr{xmlChar},Int32) shlib
@c Int32 htmlElementAllowedHere (Ptr{htmlElemDesc},Ptr{xmlChar}) shlib
@c htmlStatus htmlElementStatusHere (Ptr{htmlElemDesc},Ptr{htmlElemDesc}) shlib
@c htmlStatus htmlNodeStatus (htmlNodePtr,Int32) shlib
@c Int32 xmlIsLetter (Int32,) shlib
@c xmlParserCtxtPtr xmlCreateFileParserCtxt (Ptr{Uint8},) shlib
@c xmlParserCtxtPtr xmlCreateURLParserCtxt (Ptr{Uint8},Int32) shlib
@c xmlParserCtxtPtr xmlCreateMemoryParserCtxt (Ptr{Uint8},Int32) shlib
@c xmlParserCtxtPtr xmlCreateEntityParserCtxt (Ptr{xmlChar},Ptr{xmlChar},Ptr{xmlChar}) shlib
@c Int32 xmlSwitchEncoding (xmlParserCtxtPtr,xmlCharEncoding) shlib
@c Int32 xmlSwitchToEncoding (xmlParserCtxtPtr,xmlCharEncodingHandlerPtr) shlib
@c Int32 xmlSwitchInputEncoding (xmlParserCtxtPtr,xmlParserInputPtr,xmlCharEncodingHandlerPtr) shlib
@c xmlParserInputPtr xmlNewStringInputStream (xmlParserCtxtPtr,Ptr{xmlChar}) shlib
@c xmlParserInputPtr xmlNewEntityInputStream (xmlParserCtxtPtr,xmlEntityPtr) shlib
@c Int32 xmlPushInput (xmlParserCtxtPtr,xmlParserInputPtr) shlib
@c xmlChar xmlPopInput (xmlParserCtxtPtr,) shlib
@c None xmlFreeInputStream (xmlParserInputPtr,) shlib
@c xmlParserInputPtr xmlNewInputFromFile (xmlParserCtxtPtr,Ptr{Uint8}) shlib
@c xmlParserInputPtr xmlNewInputStream (xmlParserCtxtPtr,) shlib
@c Ptr{xmlChar} xmlSplitQName (xmlParserCtxtPtr,Ptr{xmlChar},Ptr{Ptr{xmlChar}}) shlib
@c Ptr{xmlChar} xmlParseName (xmlParserCtxtPtr,) shlib
@c Ptr{xmlChar} xmlParseNmtoken (xmlParserCtxtPtr,) shlib
@c Ptr{xmlChar} xmlParseEntityValue (xmlParserCtxtPtr,Ptr{Ptr{xmlChar}}) shlib
@c Ptr{xmlChar} xmlParseAttValue (xmlParserCtxtPtr,) shlib
@c Ptr{xmlChar} xmlParseSystemLiteral (xmlParserCtxtPtr,) shlib
@c Ptr{xmlChar} xmlParsePubidLiteral (xmlParserCtxtPtr,) shlib
@c None xmlParseCharData (xmlParserCtxtPtr,Int32) shlib
@c Ptr{xmlChar} xmlParseExternalID (xmlParserCtxtPtr,Ptr{Ptr{xmlChar}},Int32) shlib
@c None xmlParseComment (xmlParserCtxtPtr,) shlib
@c Ptr{xmlChar} xmlParsePITarget (xmlParserCtxtPtr,) shlib
@c None xmlParsePI (xmlParserCtxtPtr,) shlib
@c None xmlParseNotationDecl (xmlParserCtxtPtr,) shlib
@c None xmlParseEntityDecl (xmlParserCtxtPtr,) shlib
@c Int32 xmlParseDefaultDecl (xmlParserCtxtPtr,Ptr{Ptr{xmlChar}}) shlib
@c xmlEnumerationPtr xmlParseNotationType (xmlParserCtxtPtr,) shlib
@c xmlEnumerationPtr xmlParseEnumerationType (xmlParserCtxtPtr,) shlib
@c Int32 xmlParseEnumeratedType (xmlParserCtxtPtr,Ptr{xmlEnumerationPtr}) shlib
@c Int32 xmlParseAttributeType (xmlParserCtxtPtr,Ptr{xmlEnumerationPtr}) shlib
@c None xmlParseAttributeListDecl (xmlParserCtxtPtr,) shlib
@c xmlElementContentPtr xmlParseElementMixedContentDecl (xmlParserCtxtPtr,Int32) shlib
@c xmlElementContentPtr xmlParseElementChildrenContentDecl (xmlParserCtxtPtr,Int32) shlib
@c Int32 xmlParseElementContentDecl (xmlParserCtxtPtr,Ptr{xmlChar},Ptr{xmlElementContentPtr}) shlib
@c Int32 xmlParseElementDecl (xmlParserCtxtPtr,) shlib
@c None xmlParseMarkupDecl (xmlParserCtxtPtr,) shlib
@c Int32 xmlParseCharRef (xmlParserCtxtPtr,) shlib
@c xmlEntityPtr xmlParseEntityRef (xmlParserCtxtPtr,) shlib
@c None xmlParseReference (xmlParserCtxtPtr,) shlib
@c None xmlParsePEReference (xmlParserCtxtPtr,) shlib
@c None xmlParseDocTypeDecl (xmlParserCtxtPtr,) shlib
@c Ptr{xmlChar} xmlParseAttribute (xmlParserCtxtPtr,Ptr{Ptr{xmlChar}}) shlib
@c Ptr{xmlChar} xmlParseStartTag (xmlParserCtxtPtr,) shlib
@c None xmlParseEndTag (xmlParserCtxtPtr,) shlib
@c None xmlParseCDSect (xmlParserCtxtPtr,) shlib
@c None xmlParseContent (xmlParserCtxtPtr,) shlib
@c None xmlParseElement (xmlParserCtxtPtr,) shlib
@c Ptr{xmlChar} xmlParseVersionNum (xmlParserCtxtPtr,) shlib
@c Ptr{xmlChar} xmlParseVersionInfo (xmlParserCtxtPtr,) shlib
@c Ptr{xmlChar} xmlParseEncName (xmlParserCtxtPtr,) shlib
@c Ptr{xmlChar} xmlParseEncodingDecl (xmlParserCtxtPtr,) shlib
@c Int32 xmlParseSDDecl (xmlParserCtxtPtr,) shlib
@c None xmlParseXMLDecl (xmlParserCtxtPtr,) shlib
@c None xmlParseTextDecl (xmlParserCtxtPtr,) shlib
@c None xmlParseMisc (xmlParserCtxtPtr,) shlib
@c None xmlParseExternalSubset (xmlParserCtxtPtr,Ptr{xmlChar},Ptr{xmlChar}) shlib
@c Ptr{xmlChar} xmlStringDecodeEntities (xmlParserCtxtPtr,Ptr{xmlChar},Int32,xmlChar,xmlChar,xmlChar) shlib
@c Ptr{xmlChar} xmlStringLenDecodeEntities (xmlParserCtxtPtr,Ptr{xmlChar},Int32,Int32,xmlChar,xmlChar,xmlChar) shlib
@c Int32 nodePush (xmlParserCtxtPtr,xmlNodePtr) shlib
@c xmlNodePtr nodePop (xmlParserCtxtPtr,) shlib
@c Int32 inputPush (xmlParserCtxtPtr,xmlParserInputPtr) shlib
@c xmlParserInputPtr inputPop (xmlParserCtxtPtr,) shlib
@c Ptr{xmlChar} namePop (xmlParserCtxtPtr,) shlib
@c Int32 namePush (xmlParserCtxtPtr,Ptr{xmlChar}) shlib
@c Int32 xmlSkipBlankChars (xmlParserCtxtPtr,) shlib
@c Int32 xmlStringCurrentChar (xmlParserCtxtPtr,Ptr{xmlChar},Ptr{Int32}) shlib
@c None xmlParserHandlePEReference (xmlParserCtxtPtr,) shlib
@c Int32 xmlCheckLanguageID (Ptr{xmlChar},) shlib
@c Int32 xmlCurrentChar (xmlParserCtxtPtr,Ptr{Int32}) shlib
@c Int32 xmlCopyCharMultiByte (Ptr{xmlChar},Int32) shlib
@c Int32 xmlCopyChar (Int32,Ptr{xmlChar},Int32) shlib
@c None xmlNextChar (xmlParserCtxtPtr,) shlib
@c None xmlParserInputShrink (xmlParserInputPtr,) shlib
@c None htmlInitAutoClose () shlib
@c htmlParserCtxtPtr htmlCreateFileParserCtxt (Ptr{Uint8},Ptr{Uint8}) shlib
typealias xmlEntityReferenceFunc Ptr{Void}
@c None xmlSetEntityReferenceFunc (xmlEntityReferenceFunc,) shlib
@c Ptr{xmlChar} xmlParseQuotedString (xmlParserCtxtPtr,) shlib
@c None xmlParseNamespace (xmlParserCtxtPtr,) shlib
@c Ptr{xmlChar} xmlNamespaceParseNSDef (xmlParserCtxtPtr,) shlib
@c Ptr{xmlChar} xmlScanName (xmlParserCtxtPtr,) shlib
@c Ptr{xmlChar} xmlNamespaceParseNCName (xmlParserCtxtPtr,) shlib
@c None xmlParserHandleReference (xmlParserCtxtPtr,) shlib
@c Ptr{xmlChar} xmlNamespaceParseQName (xmlParserCtxtPtr,Ptr{Ptr{xmlChar}}) shlib
@c Ptr{xmlChar} xmlDecodeEntities (xmlParserCtxtPtr,Int32,Int32,xmlChar,xmlChar,xmlChar) shlib
@c None xmlHandleEntity (xmlParserCtxtPtr,xmlEntityPtr) shlib
typealias docbParserCtxt xmlParserCtxt
typealias docbParserCtxtPtr xmlParserCtxtPtr
typealias docbSAXHandler xmlSAXHandler
typealias docbSAXHandlerPtr xmlSAXHandlerPtr
typealias docbParserInput xmlParserInput
typealias docbParserInputPtr xmlParserInputPtr
typealias docbDocPtr xmlDocPtr
@c Int32 docbEncodeEntities (Ptr{Uint8},Ptr{Int32},Ptr{Uint8},Ptr{Int32},Int32) shlib
@c docbDocPtr docbSAXParseDoc (Ptr{xmlChar},Ptr{Uint8},docbSAXHandlerPtr,Ptr{None}) shlib
@c docbDocPtr docbParseDoc (Ptr{xmlChar},Ptr{Uint8}) shlib
@c docbDocPtr docbSAXParseFile (Ptr{Uint8},Ptr{Uint8},docbSAXHandlerPtr,Ptr{None}) shlib
@c docbDocPtr docbParseFile (Ptr{Uint8},Ptr{Uint8}) shlib
@c None docbFreeParserCtxt (docbParserCtxtPtr,) shlib
@c docbParserCtxtPtr docbCreatePushParserCtxt (docbSAXHandlerPtr,Ptr{None},Ptr{Uint8},Int32,Ptr{Uint8},xmlCharEncoding) shlib
@c Int32 docbParseChunk (docbParserCtxtPtr,Ptr{Uint8},Int32,Int32) shlib
@c docbParserCtxtPtr docbCreateFileParserCtxt (Ptr{Uint8},Ptr{Uint8}) shlib
@c Int32 docbParseDocument (docbParserCtxtPtr,) shlib
@c htmlDocPtr htmlNewDoc (Ptr{xmlChar},Ptr{xmlChar}) shlib
@c htmlDocPtr htmlNewDocNoDtD (Ptr{xmlChar},Ptr{xmlChar}) shlib
@c Ptr{xmlChar} htmlGetMetaEncoding (htmlDocPtr,) shlib
@c Int32 htmlSetMetaEncoding (htmlDocPtr,Ptr{xmlChar}) shlib
@c None htmlDocDumpMemory (xmlDocPtr,Ptr{Ptr{xmlChar}},Ptr{Int32}) shlib
@c None htmlDocDumpMemoryFormat (xmlDocPtr,Ptr{Ptr{xmlChar}},Ptr{Int32},Int32) shlib
@c Int32 htmlDocDump (Ptr{FILE},xmlDocPtr) shlib
@c Int32 htmlSaveFile (Ptr{Uint8},xmlDocPtr) shlib
@c Int32 htmlNodeDump (xmlBufferPtr,xmlDocPtr,xmlNodePtr) shlib
@c None htmlNodeDumpFile (Ptr{FILE},xmlDocPtr,xmlNodePtr) shlib
@c Int32 htmlNodeDumpFileFormat (Ptr{FILE},xmlDocPtr,xmlNodePtr,Ptr{Uint8},Int32) shlib
@c Int32 htmlSaveFileEnc (Ptr{Uint8},xmlDocPtr,Ptr{Uint8}) shlib
@c Int32 htmlSaveFileFormat (Ptr{Uint8},xmlDocPtr,Ptr{Uint8},Int32) shlib
@c None htmlNodeDumpFormatOutput (xmlOutputBufferPtr,xmlDocPtr,xmlNodePtr,Ptr{Uint8},Int32) shlib
@c None htmlDocContentDumpOutput (xmlOutputBufferPtr,xmlDocPtr,Ptr{Uint8}) shlib
@c None htmlDocContentDumpFormatOutput (xmlOutputBufferPtr,xmlDocPtr,Ptr{Uint8},Int32) shlib
@c None htmlNodeDumpOutput (xmlOutputBufferPtr,xmlDocPtr,xmlNodePtr,Ptr{Uint8}) shlib
@c Int32 htmlIsBooleanAttr (Ptr{xmlChar},) shlib
typealias ftpListCallback Ptr{Void}
typealias ftpDataCallback Ptr{Void}
@c None xmlNanoFTPInit () shlib
@c None xmlNanoFTPCleanup () shlib
@c Ptr{None} xmlNanoFTPNewCtxt (Ptr{Uint8},) shlib
@c None xmlNanoFTPFreeCtxt (Ptr{None},) shlib
@c Ptr{None} xmlNanoFTPConnectTo (Ptr{Uint8},Int32) shlib
@c Ptr{None} xmlNanoFTPOpen (Ptr{Uint8},) shlib
@c Int32 xmlNanoFTPConnect (Ptr{None},) shlib
@c Int32 xmlNanoFTPClose (Ptr{None},) shlib
@c Int32 xmlNanoFTPQuit (Ptr{None},) shlib
@c None xmlNanoFTPScanProxy (Ptr{Uint8},) shlib
@c None xmlNanoFTPProxy (Ptr{Uint8},Int32,Ptr{Uint8},Ptr{Uint8},Int32) shlib
@c Int32 xmlNanoFTPUpdateURL (Ptr{None},Ptr{Uint8}) shlib
@c Int32 xmlNanoFTPGetResponse (Ptr{None},) shlib
@c Int32 xmlNanoFTPCheckResponse (Ptr{None},) shlib
@c Int32 xmlNanoFTPCwd (Ptr{None},Ptr{Uint8}) shlib
@c Int32 xmlNanoFTPDele (Ptr{None},Ptr{Uint8}) shlib
@c Int32 xmlNanoFTPGetConnection (Ptr{None},) shlib
@c Int32 xmlNanoFTPCloseConnection (Ptr{None},) shlib
@c Int32 xmlNanoFTPList (Ptr{None},ftpListCallback,Ptr{None},Ptr{Uint8}) shlib
@c Int32 xmlNanoFTPGetSocket (Ptr{None},Ptr{Uint8}) shlib
@c Int32 xmlNanoFTPGet (Ptr{None},ftpDataCallback,Ptr{None},Ptr{Uint8}) shlib
@c Int32 xmlNanoFTPRead (Ptr{None},Ptr{None},Int32) shlib
@c None xmlNanoHTTPInit () shlib
@c None xmlNanoHTTPCleanup () shlib
@c None xmlNanoHTTPScanProxy (Ptr{Uint8},) shlib
@c Int32 xmlNanoHTTPFetch (Ptr{Uint8},Ptr{Uint8},Ptr{Ptr{Uint8}}) shlib
@c Ptr{None} xmlNanoHTTPMethod (Ptr{Uint8},Ptr{Uint8},Ptr{Uint8},Ptr{Ptr{Uint8}},Ptr{Uint8},Int32) shlib
@c Ptr{None} xmlNanoHTTPMethodRedir (Ptr{Uint8},Ptr{Uint8},Ptr{Uint8},Ptr{Ptr{Uint8}},Ptr{Ptr{Uint8}},Ptr{Uint8},Int32) shlib
@c Ptr{None} xmlNanoHTTPOpen (Ptr{Uint8},Ptr{Ptr{Uint8}}) shlib
@c Ptr{None} xmlNanoHTTPOpenRedir (Ptr{Uint8},Ptr{Ptr{Uint8}},Ptr{Ptr{Uint8}}) shlib
@c Int32 xmlNanoHTTPReturnCode (Ptr{None},) shlib
@c Ptr{Uint8} xmlNanoHTTPAuthHeader (Ptr{None},) shlib
@c Ptr{Uint8} xmlNanoHTTPRedir (Ptr{None},) shlib
@c Int32 xmlNanoHTTPContentLength (Ptr{None},) shlib
@c Ptr{Uint8} xmlNanoHTTPEncoding (Ptr{None},) shlib
@c Ptr{Uint8} xmlNanoHTTPMimeType (Ptr{None},) shlib
@c Int32 xmlNanoHTTPRead (Ptr{None},Ptr{None},Int32) shlib
@c Int32 xmlNanoHTTPSave (Ptr{None},Ptr{Uint8}) shlib
@c None xmlNanoHTTPClose (Ptr{None},) shlib
typealias xmlPattern Void
typealias xmlPatternPtr Ptr{xmlPattern}
typealias xmlPatternFlags Int32
@c None xmlFreePattern (xmlPatternPtr,) shlib
@c None xmlFreePatternList (xmlPatternPtr,) shlib
@c xmlPatternPtr xmlPatterncompile (Ptr{xmlChar},Ptr{xmlDict},Int32,Ptr{Ptr{xmlChar}}) shlib
@c Int32 xmlPatternMatch (xmlPatternPtr,xmlNodePtr) shlib
typealias xmlStreamCtxt Void
typealias xmlStreamCtxtPtr Ptr{xmlStreamCtxt}
@c Int32 xmlPatternStreamable (xmlPatternPtr,) shlib
@c Int32 xmlPatternMaxDepth (xmlPatternPtr,) shlib
@c Int32 xmlPatternMinDepth (xmlPatternPtr,) shlib
@c Int32 xmlPatternFromRoot (xmlPatternPtr,) shlib
@c xmlStreamCtxtPtr xmlPatternGetStreamCtxt (xmlPatternPtr,) shlib
@c None xmlFreeStreamCtxt (xmlStreamCtxtPtr,) shlib
@c Int32 xmlStreamPushNode (xmlStreamCtxtPtr,Ptr{xmlChar},Ptr{xmlChar},Int32) shlib
@c Int32 xmlStreamPush (xmlStreamCtxtPtr,Ptr{xmlChar},Ptr{xmlChar}) shlib
@c Int32 xmlStreamPushAttr (xmlStreamCtxtPtr,Ptr{xmlChar},Ptr{xmlChar}) shlib
@c Int32 xmlStreamPop (xmlStreamCtxtPtr,) shlib
@c Int32 xmlStreamWantsAnyNode (xmlStreamCtxtPtr,) shlib
typealias xmlRelaxNG Void
typealias xmlRelaxNGPtr Ptr{xmlRelaxNG}
typealias xmlRelaxNGValidityErrorFunc Ptr{Void}
typealias xmlRelaxNGValidityWarningFunc Ptr{Void}
typealias xmlRelaxNGParserCtxt Void
typealias xmlRelaxNGParserCtxtPtr Ptr{xmlRelaxNGParserCtxt}
typealias xmlRelaxNGValidCtxt Void
typealias xmlRelaxNGValidCtxtPtr Ptr{xmlRelaxNGValidCtxt}
typealias xmlRelaxNGValidErr Int32
typealias xmlRelaxNGParserFlag Int32
@c Int32 xmlRelaxNGInitTypes () shlib
@c None xmlRelaxNGCleanupTypes () shlib
@c xmlRelaxNGParserCtxtPtr xmlRelaxNGNewParserCtxt (Ptr{Uint8},) shlib
@c xmlRelaxNGParserCtxtPtr xmlRelaxNGNewMemParserCtxt (Ptr{Uint8},Int32) shlib
@c xmlRelaxNGParserCtxtPtr xmlRelaxNGNewDocParserCtxt (xmlDocPtr,) shlib
@c Int32 xmlRelaxParserSetFlag (xmlRelaxNGParserCtxtPtr,Int32) shlib
@c None xmlRelaxNGFreeParserCtxt (xmlRelaxNGParserCtxtPtr,) shlib
@c None xmlRelaxNGSetParserErrors (xmlRelaxNGParserCtxtPtr,xmlRelaxNGValidityErrorFunc,xmlRelaxNGValidityWarningFunc,Ptr{None}) shlib
@c Int32 xmlRelaxNGGetParserErrors (xmlRelaxNGParserCtxtPtr,Ptr{xmlRelaxNGValidityErrorFunc},Ptr{xmlRelaxNGValidityWarningFunc},Ptr{Ptr{None}}) shlib
@c None xmlRelaxNGSetParserStructuredErrors (xmlRelaxNGParserCtxtPtr,xmlStructuredErrorFunc,Ptr{None}) shlib
@c xmlRelaxNGPtr xmlRelaxNGParse (xmlRelaxNGParserCtxtPtr,) shlib
@c None xmlRelaxNGFree (xmlRelaxNGPtr,) shlib
@c None xmlRelaxNGDump (Ptr{FILE},xmlRelaxNGPtr) shlib
@c None xmlRelaxNGDumpTree (Ptr{FILE},xmlRelaxNGPtr) shlib
@c None xmlRelaxNGSetValidErrors (xmlRelaxNGValidCtxtPtr,xmlRelaxNGValidityErrorFunc,xmlRelaxNGValidityWarningFunc,Ptr{None}) shlib
@c Int32 xmlRelaxNGGetValidErrors (xmlRelaxNGValidCtxtPtr,Ptr{xmlRelaxNGValidityErrorFunc},Ptr{xmlRelaxNGValidityWarningFunc},Ptr{Ptr{None}}) shlib
@c None xmlRelaxNGSetValidStructuredErrors (xmlRelaxNGValidCtxtPtr,xmlStructuredErrorFunc,Ptr{None}) shlib
@c xmlRelaxNGValidCtxtPtr xmlRelaxNGNewValidCtxt (xmlRelaxNGPtr,) shlib
@c None xmlRelaxNGFreeValidCtxt (xmlRelaxNGValidCtxtPtr,) shlib
@c Int32 xmlRelaxNGValidateDoc (xmlRelaxNGValidCtxtPtr,xmlDocPtr) shlib
@c Int32 xmlRelaxNGValidatePushElement (xmlRelaxNGValidCtxtPtr,xmlDocPtr,xmlNodePtr) shlib
@c Int32 xmlRelaxNGValidatePushCData (xmlRelaxNGValidCtxtPtr,Ptr{xmlChar},Int32) shlib
@c Int32 xmlRelaxNGValidatePopElement (xmlRelaxNGValidCtxtPtr,xmlDocPtr,xmlNodePtr) shlib
@c Int32 xmlRelaxNGValidateFullElement (xmlRelaxNGValidCtxtPtr,xmlDocPtr,xmlNodePtr) shlib
typealias xmlSchemaValType Int32
typealias xmlSchemaTypeType Int32
typealias xmlSchemaContentType Int32
typealias xmlSchemaVal Void
typealias xmlSchemaValPtr Ptr{xmlSchemaVal}
typealias xmlSchemaType Void
typealias xmlSchemaTypePtr Ptr{xmlSchemaType}
typealias xmlSchemaFacet Void
typealias xmlSchemaFacetPtr Ptr{xmlSchemaFacet}
typealias xmlSchemaAnnot Void
typealias xmlSchemaAnnotPtr Ptr{xmlSchemaAnnot}
typealias xmlSchemaAttribute Void
typealias xmlSchemaAttributePtr Ptr{xmlSchemaAttribute}
typealias xmlSchemaAttributeLink Void
typealias xmlSchemaAttributeLinkPtr Ptr{xmlSchemaAttributeLink}
typealias xmlSchemaWildcardNs Void
typealias xmlSchemaWildcardNsPtr Ptr{xmlSchemaWildcardNs}
typealias xmlSchemaWildcard Void
typealias xmlSchemaWildcardPtr Ptr{xmlSchemaWildcard}
typealias xmlSchemaAttributeGroup Void
typealias xmlSchemaAttributeGroupPtr Ptr{xmlSchemaAttributeGroup}
typealias xmlSchemaTypeLink Void
typealias xmlSchemaTypeLinkPtr Ptr{xmlSchemaTypeLink}
typealias xmlSchemaFacetLink Void
typealias xmlSchemaFacetLinkPtr Ptr{xmlSchemaFacetLink}
typealias xmlSchemaElement Void
typealias xmlSchemaElementPtr Ptr{xmlSchemaElement}
typealias xmlSchemaNotation Void
typealias xmlSchemaNotationPtr Ptr{xmlSchemaNotation}
@c None xmlSchemaFreeType (xmlSchemaTypePtr,) shlib
@c None xmlSchemaFreeWildcard (xmlSchemaWildcardPtr,) shlib
typealias xmlSchematronValidOptions Int32
typealias xmlSchematron Void
typealias xmlSchematronPtr Ptr{xmlSchematron}
typealias xmlSchematronValidityErrorFunc Ptr{Void}
typealias xmlSchematronValidityWarningFunc Ptr{Void}
typealias xmlSchematronParserCtxt Void
typealias xmlSchematronParserCtxtPtr Ptr{xmlSchematronParserCtxt}
typealias xmlSchematronValidCtxt Void
typealias xmlSchematronValidCtxtPtr Ptr{xmlSchematronValidCtxt}
@c xmlSchematronParserCtxtPtr xmlSchematronNewParserCtxt (Ptr{Uint8},) shlib
@c xmlSchematronParserCtxtPtr xmlSchematronNewMemParserCtxt (Ptr{Uint8},Int32) shlib
@c xmlSchematronParserCtxtPtr xmlSchematronNewDocParserCtxt (xmlDocPtr,) shlib
@c None xmlSchematronFreeParserCtxt (xmlSchematronParserCtxtPtr,) shlib
@c xmlSchematronPtr xmlSchematronParse (xmlSchematronParserCtxtPtr,) shlib
@c None xmlSchematronFree (xmlSchematronPtr,) shlib
@c None xmlSchematronSetValidStructuredErrors (xmlSchematronValidCtxtPtr,xmlStructuredErrorFunc,Ptr{None}) shlib
@c xmlSchematronValidCtxtPtr xmlSchematronNewValidCtxt (xmlSchematronPtr,Int32) shlib
@c None xmlSchematronFreeValidCtxt (xmlSchematronValidCtxtPtr,) shlib
@c Int32 xmlSchematronValidateDoc (xmlSchematronValidCtxtPtr,xmlDocPtr) shlib
typealias xmlURI Void
typealias xmlURIPtr Ptr{xmlURI}
@c xmlURIPtr xmlCreateURI () shlib
@c Ptr{xmlChar} xmlBuildURI (Ptr{xmlChar},Ptr{xmlChar}) shlib
@c Ptr{xmlChar} xmlBuildRelativeURI (Ptr{xmlChar},Ptr{xmlChar}) shlib
@c xmlURIPtr xmlParseURI (Ptr{Uint8},) shlib
@c xmlURIPtr xmlParseURIRaw (Ptr{Uint8},Int32) shlib
@c Int32 xmlParseURIReference (xmlURIPtr,Ptr{Uint8}) shlib
@c Ptr{xmlChar} xmlSaveUri (xmlURIPtr,) shlib
@c None xmlPrintURI (Ptr{FILE},xmlURIPtr) shlib
@c Ptr{xmlChar} xmlURIEscapeStr (Ptr{xmlChar},Ptr{xmlChar}) shlib
@c Ptr{Uint8} xmlURIUnescapeString (Ptr{Uint8},Int32,Ptr{Uint8}) shlib
@c Int32 xmlNormalizeURIPath (Ptr{Uint8},) shlib
@c Ptr{xmlChar} xmlURIEscape (Ptr{xmlChar},) shlib
@c None xmlFreeURI (xmlURIPtr,) shlib
@c Ptr{xmlChar} xmlCanonicPath (Ptr{xmlChar},) shlib
@c Ptr{xmlChar} xmlPathToURI (Ptr{xmlChar},) shlib
typealias xmlXIncludeCtxt Void
typealias xmlXIncludeCtxtPtr Ptr{xmlXIncludeCtxt}
@c Int32 xmlXIncludeProcess (xmlDocPtr,) shlib
@c Int32 xmlXIncludeProcessFlags (xmlDocPtr,Int32) shlib
@c Int32 xmlXIncludeProcessFlagsData (xmlDocPtr,Int32,Ptr{None}) shlib
@c Int32 xmlXIncludeProcessTreeFlagsData (xmlNodePtr,Int32,Ptr{None}) shlib
@c Int32 xmlXIncludeProcessTree (xmlNodePtr,) shlib
@c Int32 xmlXIncludeProcessTreeFlags (xmlNodePtr,Int32) shlib
@c xmlXIncludeCtxtPtr xmlXIncludeNewContext (xmlDocPtr,) shlib
@c Int32 xmlXIncludeSetFlags (xmlXIncludeCtxtPtr,Int32) shlib
@c None xmlXIncludeFreeContext (xmlXIncludeCtxtPtr,) shlib
@c Int32 xmlXIncludeProcessNode (xmlXIncludeCtxtPtr,xmlNodePtr) shlib
typealias xmlModule Void
typealias xmlModulePtr Ptr{xmlModule}
typealias xmlModuleOption Int32
@c xmlModulePtr xmlModuleOpen (Ptr{Uint8},Int32) shlib
@c Int32 xmlModuleSymbol (xmlModulePtr,Ptr{Uint8},Ptr{Ptr{None}}) shlib
@c Int32 xmlModuleClose (xmlModulePtr,) shlib
@c Int32 xmlModuleFree (xmlModulePtr,) shlib
typealias xmlSchemaValidError Int32
typealias xmlSchemaValidOption Int32
typealias xmlSchema Void
typealias xmlSchemaPtr Ptr{xmlSchema}
typealias xmlSchemaValidityErrorFunc Ptr{Void}
typealias xmlSchemaValidityWarningFunc Ptr{Void}
typealias xmlSchemaParserCtxt Void
typealias xmlSchemaParserCtxtPtr Ptr{xmlSchemaParserCtxt}
typealias xmlSchemaValidCtxt Void
typealias xmlSchemaValidCtxtPtr Ptr{xmlSchemaValidCtxt}
@c xmlSchemaParserCtxtPtr xmlSchemaNewParserCtxt (Ptr{Uint8},) shlib
@c xmlSchemaParserCtxtPtr xmlSchemaNewMemParserCtxt (Ptr{Uint8},Int32) shlib
@c xmlSchemaParserCtxtPtr xmlSchemaNewDocParserCtxt (xmlDocPtr,) shlib
@c None xmlSchemaFreeParserCtxt (xmlSchemaParserCtxtPtr,) shlib
@c None xmlSchemaSetParserErrors (xmlSchemaParserCtxtPtr,xmlSchemaValidityErrorFunc,xmlSchemaValidityWarningFunc,Ptr{None}) shlib
@c None xmlSchemaSetParserStructuredErrors (xmlSchemaParserCtxtPtr,xmlStructuredErrorFunc,Ptr{None}) shlib
@c Int32 xmlSchemaGetParserErrors (xmlSchemaParserCtxtPtr,Ptr{xmlSchemaValidityErrorFunc},Ptr{xmlSchemaValidityWarningFunc},Ptr{Ptr{None}}) shlib
@c Int32 xmlSchemaIsValid (xmlSchemaValidCtxtPtr,) shlib
@c xmlSchemaPtr xmlSchemaParse (xmlSchemaParserCtxtPtr,) shlib
@c None xmlSchemaFree (xmlSchemaPtr,) shlib
@c None xmlSchemaDump (Ptr{FILE},xmlSchemaPtr) shlib
@c None xmlSchemaSetValidErrors (xmlSchemaValidCtxtPtr,xmlSchemaValidityErrorFunc,xmlSchemaValidityWarningFunc,Ptr{None}) shlib
@c None xmlSchemaSetValidStructuredErrors (xmlSchemaValidCtxtPtr,xmlStructuredErrorFunc,Ptr{None}) shlib
@c Int32 xmlSchemaGetValidErrors (xmlSchemaValidCtxtPtr,Ptr{xmlSchemaValidityErrorFunc},Ptr{xmlSchemaValidityWarningFunc},Ptr{Ptr{None}}) shlib
@c Int32 xmlSchemaSetValidOptions (xmlSchemaValidCtxtPtr,Int32) shlib
@c Int32 xmlSchemaValidCtxtGetOptions (xmlSchemaValidCtxtPtr,) shlib
@c xmlSchemaValidCtxtPtr xmlSchemaNewValidCtxt (xmlSchemaPtr,) shlib
@c None xmlSchemaFreeValidCtxt (xmlSchemaValidCtxtPtr,) shlib
@c Int32 xmlSchemaValidateDoc (xmlSchemaValidCtxtPtr,xmlDocPtr) shlib
@c Int32 xmlSchemaValidateOneElement (xmlSchemaValidCtxtPtr,xmlNodePtr) shlib
@c Int32 xmlSchemaValidateStream (xmlSchemaValidCtxtPtr,xmlParserInputBufferPtr,xmlCharEncoding,xmlSAXHandlerPtr,Ptr{None}) shlib
@c Int32 xmlSchemaValidateFile (xmlSchemaValidCtxtPtr,Ptr{Uint8},Int32) shlib
@c xmlParserCtxtPtr xmlSchemaValidCtxtGetParserCtxt (xmlSchemaValidCtxtPtr,) shlib
typealias xmlSchemaSAXPlugStruct Void
typealias xmlSchemaSAXPlugPtr Ptr{xmlSchemaSAXPlugStruct}
@c xmlSchemaSAXPlugPtr xmlSchemaSAXPlug (xmlSchemaValidCtxtPtr,Ptr{xmlSAXHandlerPtr},Ptr{Ptr{None}}) shlib
@c Int32 xmlSchemaSAXUnplug (xmlSchemaSAXPlugPtr,) shlib
typealias xmlParserSeverities Int32
typealias xmlTextReaderMode Int32
typealias xmlParserProperties Int32
typealias xmlReaderTypes Int32
typealias xmlTextReader Void
typealias xmlTextReaderPtr Ptr{xmlTextReader}
@c xmlTextReaderPtr xmlNewTextReader (xmlParserInputBufferPtr,Ptr{Uint8}) shlib
@c xmlTextReaderPtr xmlNewTextReaderFilename (Ptr{Uint8},) shlib
@c None xmlFreeTextReader (xmlTextReaderPtr,) shlib
@c Int32 xmlTextReaderSetup (xmlTextReaderPtr,xmlParserInputBufferPtr,Ptr{Uint8},Ptr{Uint8},Int32) shlib
@c Int32 xmlTextReaderRead (xmlTextReaderPtr,) shlib
@c Ptr{xmlChar} xmlTextReaderReadInnerXml (xmlTextReaderPtr,) shlib
@c Ptr{xmlChar} xmlTextReaderReadOuterXml (xmlTextReaderPtr,) shlib
@c Ptr{xmlChar} xmlTextReaderReadString (xmlTextReaderPtr,) shlib
@c Int32 xmlTextReaderReadAttributeValue (xmlTextReaderPtr,) shlib
@c Int32 xmlTextReaderAttributeCount (xmlTextReaderPtr,) shlib
@c Int32 xmlTextReaderDepth (xmlTextReaderPtr,) shlib
@c Int32 xmlTextReaderHasAttributes (xmlTextReaderPtr,) shlib
@c Int32 xmlTextReaderHasValue (xmlTextReaderPtr,) shlib
@c Int32 xmlTextReaderIsDefault (xmlTextReaderPtr,) shlib
@c Int32 xmlTextReaderIsEmptyElement (xmlTextReaderPtr,) shlib
@c Int32 xmlTextReaderNodeType (xmlTextReaderPtr,) shlib
@c Int32 xmlTextReaderQuoteChar (xmlTextReaderPtr,) shlib
@c Int32 xmlTextReaderReadState (xmlTextReaderPtr,) shlib
@c Int32 xmlTextReaderIsNamespaceDecl (xmlTextReaderPtr,) shlib
@c Ptr{xmlChar} xmlTextReaderConstBaseUri (xmlTextReaderPtr,) shlib
@c Ptr{xmlChar} xmlTextReaderConstLocalName (xmlTextReaderPtr,) shlib
@c Ptr{xmlChar} xmlTextReaderConstName (xmlTextReaderPtr,) shlib
@c Ptr{xmlChar} xmlTextReaderConstNamespaceUri (xmlTextReaderPtr,) shlib
@c Ptr{xmlChar} xmlTextReaderConstPrefix (xmlTextReaderPtr,) shlib
@c Ptr{xmlChar} xmlTextReaderConstXmlLang (xmlTextReaderPtr,) shlib
@c Ptr{xmlChar} xmlTextReaderConstString (xmlTextReaderPtr,Ptr{xmlChar}) shlib
@c Ptr{xmlChar} xmlTextReaderConstValue (xmlTextReaderPtr,) shlib
@c Ptr{xmlChar} xmlTextReaderBaseUri (xmlTextReaderPtr,) shlib
@c Ptr{xmlChar} xmlTextReaderLocalName (xmlTextReaderPtr,) shlib
@c Ptr{xmlChar} xmlTextReaderName (xmlTextReaderPtr,) shlib
@c Ptr{xmlChar} xmlTextReaderNamespaceUri (xmlTextReaderPtr,) shlib
@c Ptr{xmlChar} xmlTextReaderPrefix (xmlTextReaderPtr,) shlib
@c Ptr{xmlChar} xmlTextReaderXmlLang (xmlTextReaderPtr,) shlib
@c Ptr{xmlChar} xmlTextReaderValue (xmlTextReaderPtr,) shlib
@c Int32 xmlTextReaderClose (xmlTextReaderPtr,) shlib
@c Ptr{xmlChar} xmlTextReaderGetAttributeNo (xmlTextReaderPtr,Int32) shlib
@c Ptr{xmlChar} xmlTextReaderGetAttribute (xmlTextReaderPtr,Ptr{xmlChar}) shlib
@c Ptr{xmlChar} xmlTextReaderGetAttributeNs (xmlTextReaderPtr,Ptr{xmlChar},Ptr{xmlChar}) shlib
@c xmlParserInputBufferPtr xmlTextReaderGetRemainder (xmlTextReaderPtr,) shlib
@c Ptr{xmlChar} xmlTextReaderLookupNamespace (xmlTextReaderPtr,Ptr{xmlChar}) shlib
@c Int32 xmlTextReaderMoveToAttributeNo (xmlTextReaderPtr,Int32) shlib
@c Int32 xmlTextReaderMoveToAttribute (xmlTextReaderPtr,Ptr{xmlChar}) shlib
@c Int32 xmlTextReaderMoveToAttributeNs (xmlTextReaderPtr,Ptr{xmlChar},Ptr{xmlChar}) shlib
@c Int32 xmlTextReaderMoveToFirstAttribute (xmlTextReaderPtr,) shlib
@c Int32 xmlTextReaderMoveToNextAttribute (xmlTextReaderPtr,) shlib
@c Int32 xmlTextReaderMoveToElement (xmlTextReaderPtr,) shlib
@c Int32 xmlTextReaderNormalization (xmlTextReaderPtr,) shlib
@c Ptr{xmlChar} xmlTextReaderConstEncoding (xmlTextReaderPtr,) shlib
@c Int32 xmlTextReaderSetParserProp (xmlTextReaderPtr,Int32,Int32) shlib
@c Int32 xmlTextReaderGetParserProp (xmlTextReaderPtr,Int32) shlib
@c xmlNodePtr xmlTextReaderCurrentNode (xmlTextReaderPtr,) shlib
@c Int32 xmlTextReaderGetParserLineNumber (xmlTextReaderPtr,) shlib
@c Int32 xmlTextReaderGetParserColumnNumber (xmlTextReaderPtr,) shlib
@c xmlNodePtr xmlTextReaderPreserve (xmlTextReaderPtr,) shlib
@c Int32 xmlTextReaderPreservePattern (xmlTextReaderPtr,Ptr{xmlChar},Ptr{Ptr{xmlChar}}) shlib
@c xmlDocPtr xmlTextReaderCurrentDoc (xmlTextReaderPtr,) shlib
@c xmlNodePtr xmlTextReaderExpand (xmlTextReaderPtr,) shlib
@c Int32 xmlTextReaderNext (xmlTextReaderPtr,) shlib
@c Int32 xmlTextReaderNextSibling (xmlTextReaderPtr,) shlib
@c Int32 xmlTextReaderIsValid (xmlTextReaderPtr,) shlib
@c Int32 xmlTextReaderRelaxNGValidate (xmlTextReaderPtr,Ptr{Uint8}) shlib
@c Int32 xmlTextReaderRelaxNGSetSchema (xmlTextReaderPtr,xmlRelaxNGPtr) shlib
@c Int32 xmlTextReaderSchemaValidate (xmlTextReaderPtr,Ptr{Uint8}) shlib
@c Int32 xmlTextReaderSchemaValidateCtxt (xmlTextReaderPtr,xmlSchemaValidCtxtPtr,Int32) shlib
@c Int32 xmlTextReaderSetSchema (xmlTextReaderPtr,xmlSchemaPtr) shlib
@c Ptr{xmlChar} xmlTextReaderConstXmlVersion (xmlTextReaderPtr,) shlib
@c Int32 xmlTextReaderStandalone (xmlTextReaderPtr,) shlib
@c Int64 xmlTextReaderByteConsumed (xmlTextReaderPtr,) shlib
@c xmlTextReaderPtr xmlReaderWalker (xmlDocPtr,) shlib
@c xmlTextReaderPtr xmlReaderForDoc (Ptr{xmlChar},Ptr{Uint8},Ptr{Uint8},Int32) shlib
@c xmlTextReaderPtr xmlReaderForFile (Ptr{Uint8},Ptr{Uint8},Int32) shlib
@c xmlTextReaderPtr xmlReaderForMemory (Ptr{Uint8},Int32,Ptr{Uint8},Ptr{Uint8},Int32) shlib
@c xmlTextReaderPtr xmlReaderForFd (Int32,Ptr{Uint8},Ptr{Uint8},Int32) shlib
@c xmlTextReaderPtr xmlReaderForIO (xmlInputReadCallback,xmlInputCloseCallback,Ptr{None},Ptr{Uint8},Ptr{Uint8},Int32) shlib
@c Int32 xmlReaderNewWalker (xmlTextReaderPtr,xmlDocPtr) shlib
@c Int32 xmlReaderNewDoc (xmlTextReaderPtr,Ptr{xmlChar},Ptr{Uint8},Ptr{Uint8},Int32) shlib
@c Int32 xmlReaderNewFile (xmlTextReaderPtr,Ptr{Uint8},Ptr{Uint8},Int32) shlib
@c Int32 xmlReaderNewMemory (xmlTextReaderPtr,Ptr{Uint8},Int32,Ptr{Uint8},Ptr{Uint8},Int32) shlib
@c Int32 xmlReaderNewFd (xmlTextReaderPtr,Int32,Ptr{Uint8},Ptr{Uint8},Int32) shlib
@c Int32 xmlReaderNewIO (xmlTextReaderPtr,xmlInputReadCallback,xmlInputCloseCallback,Ptr{None},Ptr{Uint8},Ptr{Uint8},Int32) shlib
typealias xmlTextReaderLocatorPtr Ptr{None}
typealias xmlTextReaderErrorFunc Ptr{Void}
@c Int32 xmlTextReaderLocatorLineNumber (xmlTextReaderLocatorPtr,) shlib
@c Ptr{xmlChar} xmlTextReaderLocatorBaseURI (xmlTextReaderLocatorPtr,) shlib
@c None xmlTextReaderSetErrorHandler (xmlTextReaderPtr,xmlTextReaderErrorFunc,Ptr{None}) shlib
@c None xmlTextReaderSetStructuredErrorHandler (xmlTextReaderPtr,xmlStructuredErrorFunc,Ptr{None}) shlib
@c None xmlTextReaderGetErrorHandler (xmlTextReaderPtr,Ptr{xmlTextReaderErrorFunc},Ptr{Ptr{None}}) shlib
typealias xmlSaveOption Int32
typealias xmlSaveCtxt Void
typealias xmlSaveCtxtPtr Ptr{xmlSaveCtxt}
@c xmlSaveCtxtPtr xmlSaveToFd (Int32,Ptr{Uint8},Int32) shlib
@c xmlSaveCtxtPtr xmlSaveToFilename (Ptr{Uint8},Ptr{Uint8},Int32) shlib
@c xmlSaveCtxtPtr xmlSaveToBuffer (xmlBufferPtr,Ptr{Uint8},Int32) shlib
@c xmlSaveCtxtPtr xmlSaveToIO (xmlOutputWriteCallback,xmlOutputCloseCallback,Ptr{None},Ptr{Uint8},Int32) shlib
@c Int64 xmlSaveDoc (xmlSaveCtxtPtr,xmlDocPtr) shlib
@c Int64 xmlSaveTree (xmlSaveCtxtPtr,xmlNodePtr) shlib
@c Int32 xmlSaveFlush (xmlSaveCtxtPtr,) shlib
@c Int32 xmlSaveClose (xmlSaveCtxtPtr,) shlib
@c Int32 xmlSaveSetEscape (xmlSaveCtxtPtr,xmlCharEncodingOutputFunc) shlib
@c Int32 xmlSaveSetAttrEscape (xmlSaveCtxtPtr,xmlCharEncodingOutputFunc) shlib
typealias xmlSchemaWhitespaceValueType Int32
@c None xmlSchemaInitTypes () shlib
@c None xmlSchemaCleanupTypes () shlib
@c xmlSchemaTypePtr xmlSchemaGetPredefinedType (Ptr{xmlChar},Ptr{xmlChar}) shlib
@c Int32 xmlSchemaValidatePredefinedType (xmlSchemaTypePtr,Ptr{xmlChar},Ptr{xmlSchemaValPtr}) shlib
@c Int32 xmlSchemaValPredefTypeNode (xmlSchemaTypePtr,Ptr{xmlChar},Ptr{xmlSchemaValPtr},xmlNodePtr) shlib
@c Int32 xmlSchemaValidateFacet (xmlSchemaTypePtr,xmlSchemaFacetPtr,Ptr{xmlChar},xmlSchemaValPtr) shlib
@c Int32 xmlSchemaValidateFacetWhtsp (xmlSchemaFacetPtr,xmlSchemaWhitespaceValueType,xmlSchemaValType,Ptr{xmlChar},xmlSchemaValPtr,xmlSchemaWhitespaceValueType) shlib
@c None xmlSchemaFreeValue (xmlSchemaValPtr,) shlib
@c xmlSchemaFacetPtr xmlSchemaNewFacet () shlib
@c Int32 xmlSchemaCheckFacet (xmlSchemaFacetPtr,xmlSchemaTypePtr,xmlSchemaParserCtxtPtr,Ptr{xmlChar}) shlib
@c None xmlSchemaFreeFacet (xmlSchemaFacetPtr,) shlib
@c Int32 xmlSchemaCompareValues (xmlSchemaValPtr,xmlSchemaValPtr) shlib
@c xmlSchemaTypePtr xmlSchemaGetBuiltInListSimpleTypeItemType (xmlSchemaTypePtr,) shlib
@c Int32 xmlSchemaValidateListSimpleTypeFacet (xmlSchemaFacetPtr,Ptr{xmlChar},Uint64,Ptr{Uint64}) shlib
@c xmlSchemaTypePtr xmlSchemaGetBuiltInType (xmlSchemaValType,) shlib
@c Int32 xmlSchemaIsBuiltInTypeFacet (xmlSchemaTypePtr,Int32) shlib
@c Ptr{xmlChar} xmlSchemaCollapseString (Ptr{xmlChar},) shlib
@c Ptr{xmlChar} xmlSchemaWhiteSpaceReplace (Ptr{xmlChar},) shlib
@c Uint64 xmlSchemaGetFacetValueAsULong (xmlSchemaFacetPtr,) shlib
@c Int32 xmlSchemaValidateLengthFacet (xmlSchemaTypePtr,xmlSchemaFacetPtr,Ptr{xmlChar},xmlSchemaValPtr,Ptr{Uint64}) shlib
@c Int32 xmlSchemaValidateLengthFacetWhtsp (xmlSchemaFacetPtr,xmlSchemaValType,Ptr{xmlChar},xmlSchemaValPtr,Ptr{Uint64},xmlSchemaWhitespaceValueType) shlib
@c Int32 xmlSchemaValPredefTypeNodeNoNorm (xmlSchemaTypePtr,Ptr{xmlChar},Ptr{xmlSchemaValPtr},xmlNodePtr) shlib
@c Int32 xmlSchemaGetCanonValue (xmlSchemaValPtr,Ptr{Ptr{xmlChar}}) shlib
@c Int32 xmlSchemaGetCanonValueWhtsp (xmlSchemaValPtr,Ptr{Ptr{xmlChar}},xmlSchemaWhitespaceValueType) shlib
@c Int32 xmlSchemaValueAppend (xmlSchemaValPtr,xmlSchemaValPtr) shlib
@c xmlSchemaValPtr xmlSchemaValueGetNext (xmlSchemaValPtr,) shlib
@c Ptr{xmlChar} xmlSchemaValueGetAsString (xmlSchemaValPtr,) shlib
@c Int32 xmlSchemaValueGetAsBoolean (xmlSchemaValPtr,) shlib
@c xmlSchemaValPtr xmlSchemaNewStringValue (xmlSchemaValType,Ptr{xmlChar}) shlib
@c xmlSchemaValPtr xmlSchemaNewNOTATIONValue (Ptr{xmlChar},Ptr{xmlChar}) shlib
@c xmlSchemaValPtr xmlSchemaNewQNameValue (Ptr{xmlChar},Ptr{xmlChar}) shlib
@c Int32 xmlSchemaCompareValuesWhtsp (xmlSchemaValPtr,xmlSchemaWhitespaceValueType,xmlSchemaValPtr,xmlSchemaWhitespaceValueType) shlib
@c xmlSchemaValPtr xmlSchemaCopyValue (xmlSchemaValPtr,) shlib
@c xmlSchemaValType xmlSchemaGetValType (xmlSchemaValPtr,) shlib
@c Int32 xmlUCSIsAegeanNumbers (Int32,) shlib
@c Int32 xmlUCSIsAlphabeticPresentationForms (Int32,) shlib
@c Int32 xmlUCSIsArabic (Int32,) shlib
@c Int32 xmlUCSIsArabicPresentationFormsA (Int32,) shlib
@c Int32 xmlUCSIsArabicPresentationFormsB (Int32,) shlib
@c Int32 xmlUCSIsArmenian (Int32,) shlib
@c Int32 xmlUCSIsArrows (Int32,) shlib
@c Int32 xmlUCSIsBasicLatin (Int32,) shlib
@c Int32 xmlUCSIsBengali (Int32,) shlib
@c Int32 xmlUCSIsBlockElements (Int32,) shlib
@c Int32 xmlUCSIsBopomofo (Int32,) shlib
@c Int32 xmlUCSIsBopomofoExtended (Int32,) shlib
@c Int32 xmlUCSIsBoxDrawing (Int32,) shlib
@c Int32 xmlUCSIsBraillePatterns (Int32,) shlib
@c Int32 xmlUCSIsBuhid (Int32,) shlib
@c Int32 xmlUCSIsByzantineMusicalSymbols (Int32,) shlib
@c Int32 xmlUCSIsCJKCompatibility (Int32,) shlib
@c Int32 xmlUCSIsCJKCompatibilityForms (Int32,) shlib
@c Int32 xmlUCSIsCJKCompatibilityIdeographs (Int32,) shlib
@c Int32 xmlUCSIsCJKCompatibilityIdeographsSupplement (Int32,) shlib
@c Int32 xmlUCSIsCJKRadicalsSupplement (Int32,) shlib
@c Int32 xmlUCSIsCJKSymbolsandPunctuation (Int32,) shlib
@c Int32 xmlUCSIsCJKUnifiedIdeographs (Int32,) shlib
@c Int32 xmlUCSIsCJKUnifiedIdeographsExtensionA (Int32,) shlib
@c Int32 xmlUCSIsCJKUnifiedIdeographsExtensionB (Int32,) shlib
@c Int32 xmlUCSIsCherokee (Int32,) shlib
@c Int32 xmlUCSIsCombiningDiacriticalMarks (Int32,) shlib
@c Int32 xmlUCSIsCombiningDiacriticalMarksforSymbols (Int32,) shlib
@c Int32 xmlUCSIsCombiningHalfMarks (Int32,) shlib
@c Int32 xmlUCSIsCombiningMarksforSymbols (Int32,) shlib
@c Int32 xmlUCSIsControlPictures (Int32,) shlib
@c Int32 xmlUCSIsCurrencySymbols (Int32,) shlib
@c Int32 xmlUCSIsCypriotSyllabary (Int32,) shlib
@c Int32 xmlUCSIsCyrillic (Int32,) shlib
@c Int32 xmlUCSIsCyrillicSupplement (Int32,) shlib
@c Int32 xmlUCSIsDeseret (Int32,) shlib
@c Int32 xmlUCSIsDevanagari (Int32,) shlib
@c Int32 xmlUCSIsDingbats (Int32,) shlib
@c Int32 xmlUCSIsEnclosedAlphanumerics (Int32,) shlib
@c Int32 xmlUCSIsEnclosedCJKLettersandMonths (Int32,) shlib
@c Int32 xmlUCSIsEthiopic (Int32,) shlib
@c Int32 xmlUCSIsGeneralPunctuation (Int32,) shlib
@c Int32 xmlUCSIsGeometricShapes (Int32,) shlib
@c Int32 xmlUCSIsGeorgian (Int32,) shlib
@c Int32 xmlUCSIsGothic (Int32,) shlib
@c Int32 xmlUCSIsGreek (Int32,) shlib
@c Int32 xmlUCSIsGreekExtended (Int32,) shlib
@c Int32 xmlUCSIsGreekandCoptic (Int32,) shlib
@c Int32 xmlUCSIsGujarati (Int32,) shlib
@c Int32 xmlUCSIsGurmukhi (Int32,) shlib
@c Int32 xmlUCSIsHalfwidthandFullwidthForms (Int32,) shlib
@c Int32 xmlUCSIsHangulCompatibilityJamo (Int32,) shlib
@c Int32 xmlUCSIsHangulJamo (Int32,) shlib
@c Int32 xmlUCSIsHangulSyllables (Int32,) shlib
@c Int32 xmlUCSIsHanunoo (Int32,) shlib
@c Int32 xmlUCSIsHebrew (Int32,) shlib
@c Int32 xmlUCSIsHighPrivateUseSurrogates (Int32,) shlib
@c Int32 xmlUCSIsHighSurrogates (Int32,) shlib
@c Int32 xmlUCSIsHiragana (Int32,) shlib
@c Int32 xmlUCSIsIPAExtensions (Int32,) shlib
@c Int32 xmlUCSIsIdeographicDescriptionCharacters (Int32,) shlib
@c Int32 xmlUCSIsKanbun (Int32,) shlib
@c Int32 xmlUCSIsKangxiRadicals (Int32,) shlib
@c Int32 xmlUCSIsKannada (Int32,) shlib
@c Int32 xmlUCSIsKatakana (Int32,) shlib
@c Int32 xmlUCSIsKatakanaPhoneticExtensions (Int32,) shlib
@c Int32 xmlUCSIsKhmer (Int32,) shlib
@c Int32 xmlUCSIsKhmerSymbols (Int32,) shlib
@c Int32 xmlUCSIsLao (Int32,) shlib
@c Int32 xmlUCSIsLatin1Supplement (Int32,) shlib
@c Int32 xmlUCSIsLatinExtendedA (Int32,) shlib
@c Int32 xmlUCSIsLatinExtendedB (Int32,) shlib
@c Int32 xmlUCSIsLatinExtendedAdditional (Int32,) shlib
@c Int32 xmlUCSIsLetterlikeSymbols (Int32,) shlib
@c Int32 xmlUCSIsLimbu (Int32,) shlib
@c Int32 xmlUCSIsLinearBIdeograms (Int32,) shlib
@c Int32 xmlUCSIsLinearBSyllabary (Int32,) shlib
@c Int32 xmlUCSIsLowSurrogates (Int32,) shlib
@c Int32 xmlUCSIsMalayalam (Int32,) shlib
@c Int32 xmlUCSIsMathematicalAlphanumericSymbols (Int32,) shlib
@c Int32 xmlUCSIsMathematicalOperators (Int32,) shlib
@c Int32 xmlUCSIsMiscellaneousMathematicalSymbolsA (Int32,) shlib
@c Int32 xmlUCSIsMiscellaneousMathematicalSymbolsB (Int32,) shlib
@c Int32 xmlUCSIsMiscellaneousSymbols (Int32,) shlib
@c Int32 xmlUCSIsMiscellaneousSymbolsandArrows (Int32,) shlib
@c Int32 xmlUCSIsMiscellaneousTechnical (Int32,) shlib
@c Int32 xmlUCSIsMongolian (Int32,) shlib
@c Int32 xmlUCSIsMusicalSymbols (Int32,) shlib
@c Int32 xmlUCSIsMyanmar (Int32,) shlib
@c Int32 xmlUCSIsNumberForms (Int32,) shlib
@c Int32 xmlUCSIsOgham (Int32,) shlib
@c Int32 xmlUCSIsOldItalic (Int32,) shlib
@c Int32 xmlUCSIsOpticalCharacterRecognition (Int32,) shlib
@c Int32 xmlUCSIsOriya (Int32,) shlib
@c Int32 xmlUCSIsOsmanya (Int32,) shlib
@c Int32 xmlUCSIsPhoneticExtensions (Int32,) shlib
@c Int32 xmlUCSIsPrivateUse (Int32,) shlib
@c Int32 xmlUCSIsPrivateUseArea (Int32,) shlib
@c Int32 xmlUCSIsRunic (Int32,) shlib
@c Int32 xmlUCSIsShavian (Int32,) shlib
@c Int32 xmlUCSIsSinhala (Int32,) shlib
@c Int32 xmlUCSIsSmallFormVariants (Int32,) shlib
@c Int32 xmlUCSIsSpacingModifierLetters (Int32,) shlib
@c Int32 xmlUCSIsSpecials (Int32,) shlib
@c Int32 xmlUCSIsSuperscriptsandSubscripts (Int32,) shlib
@c Int32 xmlUCSIsSupplementalArrowsA (Int32,) shlib
@c Int32 xmlUCSIsSupplementalArrowsB (Int32,) shlib
@c Int32 xmlUCSIsSupplementalMathematicalOperators (Int32,) shlib
@c Int32 xmlUCSIsSupplementaryPrivateUseAreaA (Int32,) shlib
@c Int32 xmlUCSIsSupplementaryPrivateUseAreaB (Int32,) shlib
@c Int32 xmlUCSIsSyriac (Int32,) shlib
@c Int32 xmlUCSIsTagalog (Int32,) shlib
@c Int32 xmlUCSIsTagbanwa (Int32,) shlib
@c Int32 xmlUCSIsTags (Int32,) shlib
@c Int32 xmlUCSIsTaiLe (Int32,) shlib
@c Int32 xmlUCSIsTaiXuanJingSymbols (Int32,) shlib
@c Int32 xmlUCSIsTamil (Int32,) shlib
@c Int32 xmlUCSIsTelugu (Int32,) shlib
@c Int32 xmlUCSIsThaana (Int32,) shlib
@c Int32 xmlUCSIsThai (Int32,) shlib
@c Int32 xmlUCSIsTibetan (Int32,) shlib
@c Int32 xmlUCSIsUgaritic (Int32,) shlib
@c Int32 xmlUCSIsUnifiedCanadianAboriginalSyllabics (Int32,) shlib
@c Int32 xmlUCSIsVariationSelectors (Int32,) shlib
@c Int32 xmlUCSIsVariationSelectorsSupplement (Int32,) shlib
@c Int32 xmlUCSIsYiRadicals (Int32,) shlib
@c Int32 xmlUCSIsYiSyllables (Int32,) shlib
@c Int32 xmlUCSIsYijingHexagramSymbols (Int32,) shlib
@c Int32 xmlUCSIsBlock (Int32,Ptr{Uint8}) shlib
@c Int32 xmlUCSIsCatC (Int32,) shlib
@c Int32 xmlUCSIsCatCc (Int32,) shlib
@c Int32 xmlUCSIsCatCf (Int32,) shlib
@c Int32 xmlUCSIsCatCo (Int32,) shlib
@c Int32 xmlUCSIsCatCs (Int32,) shlib
@c Int32 xmlUCSIsCatL (Int32,) shlib
@c Int32 xmlUCSIsCatLl (Int32,) shlib
@c Int32 xmlUCSIsCatLm (Int32,) shlib
@c Int32 xmlUCSIsCatLo (Int32,) shlib
@c Int32 xmlUCSIsCatLt (Int32,) shlib
@c Int32 xmlUCSIsCatLu (Int32,) shlib
@c Int32 xmlUCSIsCatM (Int32,) shlib
@c Int32 xmlUCSIsCatMc (Int32,) shlib
@c Int32 xmlUCSIsCatMe (Int32,) shlib
@c Int32 xmlUCSIsCatMn (Int32,) shlib
@c Int32 xmlUCSIsCatN (Int32,) shlib
@c Int32 xmlUCSIsCatNd (Int32,) shlib
@c Int32 xmlUCSIsCatNl (Int32,) shlib
@c Int32 xmlUCSIsCatNo (Int32,) shlib
@c Int32 xmlUCSIsCatP (Int32,) shlib
@c Int32 xmlUCSIsCatPc (Int32,) shlib
@c Int32 xmlUCSIsCatPd (Int32,) shlib
@c Int32 xmlUCSIsCatPe (Int32,) shlib
@c Int32 xmlUCSIsCatPf (Int32,) shlib
@c Int32 xmlUCSIsCatPi (Int32,) shlib
@c Int32 xmlUCSIsCatPo (Int32,) shlib
@c Int32 xmlUCSIsCatPs (Int32,) shlib
@c Int32 xmlUCSIsCatS (Int32,) shlib
@c Int32 xmlUCSIsCatSc (Int32,) shlib
@c Int32 xmlUCSIsCatSk (Int32,) shlib
@c Int32 xmlUCSIsCatSm (Int32,) shlib
@c Int32 xmlUCSIsCatSo (Int32,) shlib
@c Int32 xmlUCSIsCatZ (Int32,) shlib
@c Int32 xmlUCSIsCatZl (Int32,) shlib
@c Int32 xmlUCSIsCatZp (Int32,) shlib
@c Int32 xmlUCSIsCatZs (Int32,) shlib
@c Int32 xmlUCSIsCat (Int32,Ptr{Uint8}) shlib
typealias xmlTextWriter Void
typealias xmlTextWriterPtr Ptr{xmlTextWriter}
@c xmlTextWriterPtr xmlNewTextWriter (xmlOutputBufferPtr,) shlib
@c xmlTextWriterPtr xmlNewTextWriterFilename (Ptr{Uint8},Int32) shlib
@c xmlTextWriterPtr xmlNewTextWriterMemory (xmlBufferPtr,Int32) shlib
@c xmlTextWriterPtr xmlNewTextWriterPushParser (xmlParserCtxtPtr,Int32) shlib
@c xmlTextWriterPtr xmlNewTextWriterDoc (Ptr{xmlDocPtr},Int32) shlib
@c xmlTextWriterPtr xmlNewTextWriterTree (xmlDocPtr,xmlNodePtr,Int32) shlib
@c None xmlFreeTextWriter (xmlTextWriterPtr,) shlib
@c Int32 xmlTextWriterStartDocument (xmlTextWriterPtr,Ptr{Uint8},Ptr{Uint8},Ptr{Uint8}) shlib
@c Int32 xmlTextWriterEndDocument (xmlTextWriterPtr,) shlib
@c Int32 xmlTextWriterStartComment (xmlTextWriterPtr,) shlib
@c Int32 xmlTextWriterEndComment (xmlTextWriterPtr,) shlib
@c Int32 xmlTextWriterWriteFormatComment (xmlTextWriterPtr,Ptr{Uint8}) shlib
@c Int32 xmlTextWriterWriteVFormatComment (xmlTextWriterPtr,Ptr{Uint8},Ptr{__va_list_tag}) shlib
@c Int32 xmlTextWriterWriteComment (xmlTextWriterPtr,Ptr{xmlChar}) shlib
@c Int32 xmlTextWriterStartElement (xmlTextWriterPtr,Ptr{xmlChar}) shlib
@c Int32 xmlTextWriterStartElementNS (xmlTextWriterPtr,Ptr{xmlChar},Ptr{xmlChar},Ptr{xmlChar}) shlib
@c Int32 xmlTextWriterEndElement (xmlTextWriterPtr,) shlib
@c Int32 xmlTextWriterFullEndElement (xmlTextWriterPtr,) shlib
@c Int32 xmlTextWriterWriteFormatElement (xmlTextWriterPtr,Ptr{xmlChar},Ptr{Uint8}) shlib
@c Int32 xmlTextWriterWriteVFormatElement (xmlTextWriterPtr,Ptr{xmlChar},Ptr{Uint8},Ptr{__va_list_tag}) shlib
@c Int32 xmlTextWriterWriteElement (xmlTextWriterPtr,Ptr{xmlChar},Ptr{xmlChar}) shlib
@c Int32 xmlTextWriterWriteFormatElementNS (xmlTextWriterPtr,Ptr{xmlChar},Ptr{xmlChar},Ptr{xmlChar},Ptr{Uint8}) shlib
@c Int32 xmlTextWriterWriteVFormatElementNS (xmlTextWriterPtr,Ptr{xmlChar},Ptr{xmlChar},Ptr{xmlChar},Ptr{Uint8},Ptr{__va_list_tag}) shlib
@c Int32 xmlTextWriterWriteElementNS (xmlTextWriterPtr,Ptr{xmlChar},Ptr{xmlChar},Ptr{xmlChar},Ptr{xmlChar}) shlib
@c Int32 xmlTextWriterWriteFormatRaw (xmlTextWriterPtr,Ptr{Uint8}) shlib
@c Int32 xmlTextWriterWriteVFormatRaw (xmlTextWriterPtr,Ptr{Uint8},Ptr{__va_list_tag}) shlib
@c Int32 xmlTextWriterWriteRawLen (xmlTextWriterPtr,Ptr{xmlChar},Int32) shlib
@c Int32 xmlTextWriterWriteRaw (xmlTextWriterPtr,Ptr{xmlChar}) shlib
@c Int32 xmlTextWriterWriteFormatString (xmlTextWriterPtr,Ptr{Uint8}) shlib
@c Int32 xmlTextWriterWriteVFormatString (xmlTextWriterPtr,Ptr{Uint8},Ptr{__va_list_tag}) shlib
@c Int32 xmlTextWriterWriteString (xmlTextWriterPtr,Ptr{xmlChar}) shlib
@c Int32 xmlTextWriterWriteBase64 (xmlTextWriterPtr,Ptr{Uint8},Int32,Int32) shlib
@c Int32 xmlTextWriterWriteBinHex (xmlTextWriterPtr,Ptr{Uint8},Int32,Int32) shlib
@c Int32 xmlTextWriterStartAttribute (xmlTextWriterPtr,Ptr{xmlChar}) shlib
@c Int32 xmlTextWriterStartAttributeNS (xmlTextWriterPtr,Ptr{xmlChar},Ptr{xmlChar},Ptr{xmlChar}) shlib
@c Int32 xmlTextWriterEndAttribute (xmlTextWriterPtr,) shlib
@c Int32 xmlTextWriterWriteFormatAttribute (xmlTextWriterPtr,Ptr{xmlChar},Ptr{Uint8}) shlib
@c Int32 xmlTextWriterWriteVFormatAttribute (xmlTextWriterPtr,Ptr{xmlChar},Ptr{Uint8},Ptr{__va_list_tag}) shlib
@c Int32 xmlTextWriterWriteAttribute (xmlTextWriterPtr,Ptr{xmlChar},Ptr{xmlChar}) shlib
@c Int32 xmlTextWriterWriteFormatAttributeNS (xmlTextWriterPtr,Ptr{xmlChar},Ptr{xmlChar},Ptr{xmlChar},Ptr{Uint8}) shlib
@c Int32 xmlTextWriterWriteVFormatAttributeNS (xmlTextWriterPtr,Ptr{xmlChar},Ptr{xmlChar},Ptr{xmlChar},Ptr{Uint8},Ptr{__va_list_tag}) shlib
@c Int32 xmlTextWriterWriteAttributeNS (xmlTextWriterPtr,Ptr{xmlChar},Ptr{xmlChar},Ptr{xmlChar},Ptr{xmlChar}) shlib
@c Int32 xmlTextWriterStartPI (xmlTextWriterPtr,Ptr{xmlChar}) shlib
@c Int32 xmlTextWriterEndPI (xmlTextWriterPtr,) shlib
@c Int32 xmlTextWriterWriteFormatPI (xmlTextWriterPtr,Ptr{xmlChar},Ptr{Uint8}) shlib
@c Int32 xmlTextWriterWriteVFormatPI (xmlTextWriterPtr,Ptr{xmlChar},Ptr{Uint8},Ptr{__va_list_tag}) shlib
@c Int32 xmlTextWriterWritePI (xmlTextWriterPtr,Ptr{xmlChar},Ptr{xmlChar}) shlib
@c Int32 xmlTextWriterStartCDATA (xmlTextWriterPtr,) shlib
@c Int32 xmlTextWriterEndCDATA (xmlTextWriterPtr,) shlib
@c Int32 xmlTextWriterWriteFormatCDATA (xmlTextWriterPtr,Ptr{Uint8}) shlib
@c Int32 xmlTextWriterWriteVFormatCDATA (xmlTextWriterPtr,Ptr{Uint8},Ptr{__va_list_tag}) shlib
@c Int32 xmlTextWriterWriteCDATA (xmlTextWriterPtr,Ptr{xmlChar}) shlib
@c Int32 xmlTextWriterStartDTD (xmlTextWriterPtr,Ptr{xmlChar},Ptr{xmlChar},Ptr{xmlChar}) shlib
@c Int32 xmlTextWriterEndDTD (xmlTextWriterPtr,) shlib
@c Int32 xmlTextWriterWriteFormatDTD (xmlTextWriterPtr,Ptr{xmlChar},Ptr{xmlChar},Ptr{xmlChar},Ptr{Uint8}) shlib
@c Int32 xmlTextWriterWriteVFormatDTD (xmlTextWriterPtr,Ptr{xmlChar},Ptr{xmlChar},Ptr{xmlChar},Ptr{Uint8},Ptr{__va_list_tag}) shlib
@c Int32 xmlTextWriterWriteDTD (xmlTextWriterPtr,Ptr{xmlChar},Ptr{xmlChar},Ptr{xmlChar},Ptr{xmlChar}) shlib
@c Int32 xmlTextWriterStartDTDElement (xmlTextWriterPtr,Ptr{xmlChar}) shlib
@c Int32 xmlTextWriterEndDTDElement (xmlTextWriterPtr,) shlib
@c Int32 xmlTextWriterWriteFormatDTDElement (xmlTextWriterPtr,Ptr{xmlChar},Ptr{Uint8}) shlib
@c Int32 xmlTextWriterWriteVFormatDTDElement (xmlTextWriterPtr,Ptr{xmlChar},Ptr{Uint8},Ptr{__va_list_tag}) shlib
@c Int32 xmlTextWriterWriteDTDElement (xmlTextWriterPtr,Ptr{xmlChar},Ptr{xmlChar}) shlib
@c Int32 xmlTextWriterStartDTDAttlist (xmlTextWriterPtr,Ptr{xmlChar}) shlib
@c Int32 xmlTextWriterEndDTDAttlist (xmlTextWriterPtr,) shlib
@c Int32 xmlTextWriterWriteFormatDTDAttlist (xmlTextWriterPtr,Ptr{xmlChar},Ptr{Uint8}) shlib
@c Int32 xmlTextWriterWriteVFormatDTDAttlist (xmlTextWriterPtr,Ptr{xmlChar},Ptr{Uint8},Ptr{__va_list_tag}) shlib
@c Int32 xmlTextWriterWriteDTDAttlist (xmlTextWriterPtr,Ptr{xmlChar},Ptr{xmlChar}) shlib
@c Int32 xmlTextWriterStartDTDEntity (xmlTextWriterPtr,Int32,Ptr{xmlChar}) shlib
@c Int32 xmlTextWriterEndDTDEntity (xmlTextWriterPtr,) shlib
@c Int32 xmlTextWriterWriteFormatDTDInternalEntity (xmlTextWriterPtr,Int32,Ptr{xmlChar},Ptr{Uint8}) shlib
@c Int32 xmlTextWriterWriteVFormatDTDInternalEntity (xmlTextWriterPtr,Int32,Ptr{xmlChar},Ptr{Uint8},Ptr{__va_list_tag}) shlib
@c Int32 xmlTextWriterWriteDTDInternalEntity (xmlTextWriterPtr,Int32,Ptr{xmlChar},Ptr{xmlChar}) shlib
@c Int32 xmlTextWriterWriteDTDExternalEntity (xmlTextWriterPtr,Int32,Ptr{xmlChar},Ptr{xmlChar},Ptr{xmlChar},Ptr{xmlChar}) shlib
@c Int32 xmlTextWriterWriteDTDExternalEntityContents (xmlTextWriterPtr,Ptr{xmlChar},Ptr{xmlChar},Ptr{xmlChar}) shlib
@c Int32 xmlTextWriterWriteDTDEntity (xmlTextWriterPtr,Int32,Ptr{xmlChar},Ptr{xmlChar},Ptr{xmlChar},Ptr{xmlChar},Ptr{xmlChar}) shlib
@c Int32 xmlTextWriterWriteDTDNotation (xmlTextWriterPtr,Ptr{xmlChar},Ptr{xmlChar},Ptr{xmlChar}) shlib
@c Int32 xmlTextWriterSetIndent (xmlTextWriterPtr,Int32) shlib
@c Int32 xmlTextWriterSetIndentString (xmlTextWriterPtr,Ptr{xmlChar}) shlib
@c Int32 xmlTextWriterFlush (xmlTextWriterPtr,) shlib
@c Int32 xmlXPathPopBoolean (xmlXPathParserContextPtr,) shlib
@c Float64 xmlXPathPopNumber (xmlXPathParserContextPtr,) shlib
@c Ptr{xmlChar} xmlXPathPopString (xmlXPathParserContextPtr,) shlib
@c xmlNodeSetPtr xmlXPathPopNodeSet (xmlXPathParserContextPtr,) shlib
@c Ptr{None} xmlXPathPopExternal (xmlXPathParserContextPtr,) shlib
@c None xmlXPathRegisterVariableLookup (xmlXPathContextPtr,xmlXPathVariableLookupFunc,Ptr{None}) shlib
@c None xmlXPathRegisterFuncLookup (xmlXPathContextPtr,xmlXPathFuncLookupFunc,Ptr{None}) shlib
@c None xmlXPatherror (xmlXPathParserContextPtr,Ptr{Uint8},Int32,Int32) shlib
@c None xmlXPathErr (xmlXPathParserContextPtr,Int32) shlib
@c None xmlXPathDebugDumpObject (Ptr{FILE},xmlXPathObjectPtr,Int32) shlib
@c None xmlXPathDebugDumpCompExpr (Ptr{FILE},xmlXPathCompExprPtr,Int32) shlib
@c Int32 xmlXPathNodeSetContains (xmlNodeSetPtr,xmlNodePtr) shlib
@c xmlNodeSetPtr xmlXPathDifference (xmlNodeSetPtr,xmlNodeSetPtr) shlib
@c xmlNodeSetPtr xmlXPathIntersection (xmlNodeSetPtr,xmlNodeSetPtr) shlib
@c xmlNodeSetPtr xmlXPathDistinctSorted (xmlNodeSetPtr,) shlib
@c xmlNodeSetPtr xmlXPathDistinct (xmlNodeSetPtr,) shlib
@c Int32 xmlXPathHasSameNodes (xmlNodeSetPtr,xmlNodeSetPtr) shlib
@c xmlNodeSetPtr xmlXPathNodeLeadingSorted (xmlNodeSetPtr,xmlNodePtr) shlib
@c xmlNodeSetPtr xmlXPathLeadingSorted (xmlNodeSetPtr,xmlNodeSetPtr) shlib
@c xmlNodeSetPtr xmlXPathNodeLeading (xmlNodeSetPtr,xmlNodePtr) shlib
@c xmlNodeSetPtr xmlXPathLeading (xmlNodeSetPtr,xmlNodeSetPtr) shlib
@c xmlNodeSetPtr xmlXPathNodeTrailingSorted (xmlNodeSetPtr,xmlNodePtr) shlib
@c xmlNodeSetPtr xmlXPathTrailingSorted (xmlNodeSetPtr,xmlNodeSetPtr) shlib
@c xmlNodeSetPtr xmlXPathNodeTrailing (xmlNodeSetPtr,xmlNodePtr) shlib
@c xmlNodeSetPtr xmlXPathTrailing (xmlNodeSetPtr,xmlNodeSetPtr) shlib
@c Int32 xmlXPathRegisterNs (xmlXPathContextPtr,Ptr{xmlChar},Ptr{xmlChar}) shlib
@c Ptr{xmlChar} xmlXPathNsLookup (xmlXPathContextPtr,Ptr{xmlChar}) shlib
@c None xmlXPathRegisteredNsCleanup (xmlXPathContextPtr,) shlib
@c Int32 xmlXPathRegisterFunc (xmlXPathContextPtr,Ptr{xmlChar},xmlXPathFunction) shlib
@c Int32 xmlXPathRegisterFuncNS (xmlXPathContextPtr,Ptr{xmlChar},Ptr{xmlChar},xmlXPathFunction) shlib
@c Int32 xmlXPathRegisterVariable (xmlXPathContextPtr,Ptr{xmlChar},xmlXPathObjectPtr) shlib
@c Int32 xmlXPathRegisterVariableNS (xmlXPathContextPtr,Ptr{xmlChar},Ptr{xmlChar},xmlXPathObjectPtr) shlib
@c xmlXPathFunction xmlXPathFunctionLookup (xmlXPathContextPtr,Ptr{xmlChar}) shlib
@c xmlXPathFunction xmlXPathFunctionLookupNS (xmlXPathContextPtr,Ptr{xmlChar},Ptr{xmlChar}) shlib
@c None xmlXPathRegisteredFuncsCleanup (xmlXPathContextPtr,) shlib
@c xmlXPathObjectPtr xmlXPathVariableLookup (xmlXPathContextPtr,Ptr{xmlChar}) shlib
@c xmlXPathObjectPtr xmlXPathVariableLookupNS (xmlXPathContextPtr,Ptr{xmlChar},Ptr{xmlChar}) shlib
@c None xmlXPathRegisteredVariablesCleanup (xmlXPathContextPtr,) shlib
@c xmlXPathParserContextPtr xmlXPathNewParserContext (Ptr{xmlChar},xmlXPathContextPtr) shlib
@c None xmlXPathFreeParserContext (xmlXPathParserContextPtr,) shlib
@c xmlXPathObjectPtr valuePop (xmlXPathParserContextPtr,) shlib
@c Int32 valuePush (xmlXPathParserContextPtr,xmlXPathObjectPtr) shlib
@c xmlXPathObjectPtr xmlXPathNewString (Ptr{xmlChar},) shlib
@c xmlXPathObjectPtr xmlXPathNewCString (Ptr{Uint8},) shlib
@c xmlXPathObjectPtr xmlXPathWrapString (Ptr{xmlChar},) shlib
@c xmlXPathObjectPtr xmlXPathWrapCString (Ptr{Uint8},) shlib
@c xmlXPathObjectPtr xmlXPathNewFloat (Float64,) shlib
@c xmlXPathObjectPtr xmlXPathNewBoolean (Int32,) shlib
@c xmlXPathObjectPtr xmlXPathNewNodeSet (xmlNodePtr,) shlib
@c xmlXPathObjectPtr xmlXPathNewValueTree (xmlNodePtr,) shlib
@c None xmlXPathNodeSetAdd (xmlNodeSetPtr,xmlNodePtr) shlib
@c None xmlXPathNodeSetAddUnique (xmlNodeSetPtr,xmlNodePtr) shlib
@c None xmlXPathNodeSetAddNs (xmlNodeSetPtr,xmlNodePtr,xmlNsPtr) shlib
@c None xmlXPathNodeSetSort (xmlNodeSetPtr,) shlib
@c None xmlXPathRoot (xmlXPathParserContextPtr,) shlib
@c None xmlXPathEvalExpr (xmlXPathParserContextPtr,) shlib
@c Ptr{xmlChar} xmlXPathParseName (xmlXPathParserContextPtr,) shlib
@c Ptr{xmlChar} xmlXPathParseNCName (xmlXPathParserContextPtr,) shlib
@c Float64 xmlXPathStringEvalNumber (Ptr{xmlChar},) shlib
@c Int32 xmlXPathEvaluatePredicateResult (xmlXPathParserContextPtr,xmlXPathObjectPtr) shlib
@c None xmlXPathRegisterAllFunctions (xmlXPathContextPtr,) shlib
@c xmlNodeSetPtr xmlXPathNodeSetMerge (xmlNodeSetPtr,xmlNodeSetPtr) shlib
@c None xmlXPathNodeSetDel (xmlNodeSetPtr,xmlNodePtr) shlib
@c None xmlXPathNodeSetRemove (xmlNodeSetPtr,Int32) shlib
@c xmlXPathObjectPtr xmlXPathNewNodeSetList (xmlNodeSetPtr,) shlib
@c xmlXPathObjectPtr xmlXPathWrapNodeSet (xmlNodeSetPtr,) shlib
@c xmlXPathObjectPtr xmlXPathWrapExternal (Ptr{None},) shlib
@c Int32 xmlXPathEqualValues (xmlXPathParserContextPtr,) shlib
@c Int32 xmlXPathNotEqualValues (xmlXPathParserContextPtr,) shlib
@c Int32 xmlXPathCompareValues (xmlXPathParserContextPtr,Int32,Int32) shlib
@c None xmlXPathValueFlipSign (xmlXPathParserContextPtr,) shlib
@c None xmlXPathAddValues (xmlXPathParserContextPtr,) shlib
@c None xmlXPathSubValues (xmlXPathParserContextPtr,) shlib
@c None xmlXPathMultValues (xmlXPathParserContextPtr,) shlib
@c None xmlXPathDivValues (xmlXPathParserContextPtr,) shlib
@c None xmlXPathModValues (xmlXPathParserContextPtr,) shlib
@c Int32 xmlXPathIsNodeType (Ptr{xmlChar},) shlib
@c xmlNodePtr xmlXPathNextSelf (xmlXPathParserContextPtr,xmlNodePtr) shlib
@c xmlNodePtr xmlXPathNextChild (xmlXPathParserContextPtr,xmlNodePtr) shlib
@c xmlNodePtr xmlXPathNextDescendant (xmlXPathParserContextPtr,xmlNodePtr) shlib
@c xmlNodePtr xmlXPathNextDescendantOrSelf (xmlXPathParserContextPtr,xmlNodePtr) shlib
@c xmlNodePtr xmlXPathNextParent (xmlXPathParserContextPtr,xmlNodePtr) shlib
@c xmlNodePtr xmlXPathNextAncestorOrSelf (xmlXPathParserContextPtr,xmlNodePtr) shlib
@c xmlNodePtr xmlXPathNextFollowingSibling (xmlXPathParserContextPtr,xmlNodePtr) shlib
@c xmlNodePtr xmlXPathNextFollowing (xmlXPathParserContextPtr,xmlNodePtr) shlib
@c xmlNodePtr xmlXPathNextNamespace (xmlXPathParserContextPtr,xmlNodePtr) shlib
@c xmlNodePtr xmlXPathNextAttribute (xmlXPathParserContextPtr,xmlNodePtr) shlib
@c xmlNodePtr xmlXPathNextPreceding (xmlXPathParserContextPtr,xmlNodePtr) shlib
@c xmlNodePtr xmlXPathNextAncestor (xmlXPathParserContextPtr,xmlNodePtr) shlib
@c xmlNodePtr xmlXPathNextPrecedingSibling (xmlXPathParserContextPtr,xmlNodePtr) shlib
@c None xmlXPathLastFunction (xmlXPathParserContextPtr,Int32) shlib
@c None xmlXPathPositionFunction (xmlXPathParserContextPtr,Int32) shlib
@c None xmlXPathCountFunction (xmlXPathParserContextPtr,Int32) shlib
@c None xmlXPathIdFunction (xmlXPathParserContextPtr,Int32) shlib
@c None xmlXPathLocalNameFunction (xmlXPathParserContextPtr,Int32) shlib
@c None xmlXPathNamespaceURIFunction (xmlXPathParserContextPtr,Int32) shlib
@c None xmlXPathStringFunction (xmlXPathParserContextPtr,Int32) shlib
@c None xmlXPathStringLengthFunction (xmlXPathParserContextPtr,Int32) shlib
@c None xmlXPathConcatFunction (xmlXPathParserContextPtr,Int32) shlib
@c None xmlXPathContainsFunction (xmlXPathParserContextPtr,Int32) shlib
@c None xmlXPathStartsWithFunction (xmlXPathParserContextPtr,Int32) shlib
@c None xmlXPathSubstringFunction (xmlXPathParserContextPtr,Int32) shlib
@c None xmlXPathSubstringBeforeFunction (xmlXPathParserContextPtr,Int32) shlib
@c None xmlXPathSubstringAfterFunction (xmlXPathParserContextPtr,Int32) shlib
@c None xmlXPathNormalizeFunction (xmlXPathParserContextPtr,Int32) shlib
@c None xmlXPathTranslateFunction (xmlXPathParserContextPtr,Int32) shlib
@c None xmlXPathNotFunction (xmlXPathParserContextPtr,Int32) shlib
@c None xmlXPathTrueFunction (xmlXPathParserContextPtr,Int32) shlib
@c None xmlXPathFalseFunction (xmlXPathParserContextPtr,Int32) shlib
@c None xmlXPathLangFunction (xmlXPathParserContextPtr,Int32) shlib
@c None xmlXPathNumberFunction (xmlXPathParserContextPtr,Int32) shlib
@c None xmlXPathSumFunction (xmlXPathParserContextPtr,Int32) shlib
@c None xmlXPathFloorFunction (xmlXPathParserContextPtr,Int32) shlib
@c None xmlXPathCeilingFunction (xmlXPathParserContextPtr,Int32) shlib
@c None xmlXPathRoundFunction (xmlXPathParserContextPtr,Int32) shlib
@c None xmlXPathBooleanFunction (xmlXPathParserContextPtr,Int32) shlib
@c None xmlXPathNodeSetFreeNs (xmlNsPtr,) shlib
typealias xmlLocationSet Void
typealias xmlLocationSetPtr Ptr{xmlLocationSet}
@c xmlLocationSetPtr xmlXPtrLocationSetCreate (xmlXPathObjectPtr,) shlib
@c None xmlXPtrFreeLocationSet (xmlLocationSetPtr,) shlib
@c xmlLocationSetPtr xmlXPtrLocationSetMerge (xmlLocationSetPtr,xmlLocationSetPtr) shlib
@c xmlXPathObjectPtr xmlXPtrNewRange (xmlNodePtr,Int32,xmlNodePtr,Int32) shlib
@c xmlXPathObjectPtr xmlXPtrNewRangePoints (xmlXPathObjectPtr,xmlXPathObjectPtr) shlib
@c xmlXPathObjectPtr xmlXPtrNewRangeNodePoint (xmlNodePtr,xmlXPathObjectPtr) shlib
@c xmlXPathObjectPtr xmlXPtrNewRangePointNode (xmlXPathObjectPtr,xmlNodePtr) shlib
@c xmlXPathObjectPtr xmlXPtrNewRangeNodes (xmlNodePtr,xmlNodePtr) shlib
@c xmlXPathObjectPtr xmlXPtrNewLocationSetNodes (xmlNodePtr,xmlNodePtr) shlib
@c xmlXPathObjectPtr xmlXPtrNewLocationSetNodeSet (xmlNodeSetPtr,) shlib
@c xmlXPathObjectPtr xmlXPtrNewRangeNodeObject (xmlNodePtr,xmlXPathObjectPtr) shlib
@c xmlXPathObjectPtr xmlXPtrNewCollapsedRange (xmlNodePtr,) shlib
@c None xmlXPtrLocationSetAdd (xmlLocationSetPtr,xmlXPathObjectPtr) shlib
@c xmlXPathObjectPtr xmlXPtrWrapLocationSet (xmlLocationSetPtr,) shlib
@c None xmlXPtrLocationSetDel (xmlLocationSetPtr,xmlXPathObjectPtr) shlib
@c None xmlXPtrLocationSetRemove (xmlLocationSetPtr,Int32) shlib
@c xmlXPathContextPtr xmlXPtrNewContext (xmlDocPtr,xmlNodePtr,xmlNodePtr) shlib
@c xmlXPathObjectPtr xmlXPtrEval (Ptr{xmlChar},xmlXPathContextPtr) shlib
@c None xmlXPtrRangeToFunction (xmlXPathParserContextPtr,Int32) shlib
@c xmlNodePtr xmlXPtrBuildNodeList (xmlXPathObjectPtr,) shlib
@c None xmlXPtrEvalRangePredicate (xmlXPathParserContextPtr,) shlib
