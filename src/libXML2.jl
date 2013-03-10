shlib = :libxml2
recurs_sym_type(ex::Any) = 
  (ex==None || typeof(ex)==Symbol || length(ex.args)==1) ? eval(ex) : Expr(ex.head, ex.args[1], recurs_sym_type(ex.args[2]))
macro c(ret_type, func, arg_types, lib)
  local _arg_types = Expr(:tuple, [recurs_sym_type(a) for a in arg_types.args]...)
  local _ret_type = recurs_sym_type(ret_type)
  local _args_in = Any[ symbol(string('a',x)) for x in 1:length(_arg_types.args) ]
  local _lib = eval(lib)
  quote
    $(esc(func))($(_args_in...)) = ccall( ($(string(func)), $(Expr(:quote, _lib)) ), $_ret_type, $_arg_types, $(_args_in...) )
  end
end

macro ctypedef(fake_t,real_t)
  real_t = recurs_sym_type(real_t)
  quote
    typealias $fake_t $real_t
  end
end

typealias __va_list_tag Void
typealias FILE Void 

# header: /usr/include/libxml2/libxml/c14n.h

# header: /usr/include/libxml2/libxml/catalog.h
@ctypedef ptrdiff_t Void
@ctypedef size_t Void
@ctypedef wchar_t Int32
@ctypedef __u_char Uint8
@ctypedef __u_short Uint16
@ctypedef __u_int Uint32
@ctypedef __u_long Uint64
@ctypedef __int8_t Uint8
@ctypedef __uint8_t Uint8
@ctypedef __int16_t Int16
@ctypedef __uint16_t Uint16
@ctypedef __int32_t Int32
@ctypedef __uint32_t Uint32
@ctypedef __int64_t Int64
@ctypedef __uint64_t Uint64
@ctypedef __quad_t Int64
@ctypedef __u_quad_t Uint64
@ctypedef __dev_t Uint64
@ctypedef __uid_t Uint32
@ctypedef __gid_t Uint32
@ctypedef __ino_t Uint64
@ctypedef __ino64_t Uint64
@ctypedef __mode_t Uint32
@ctypedef __nlink_t Uint64
@ctypedef __off_t Int64
@ctypedef __off64_t Int64
@ctypedef __pid_t Int32
@ctypedef __fsid_t Void
@ctypedef __clock_t Int64
@ctypedef __rlim_t Uint64
@ctypedef __rlim64_t Uint64
@ctypedef __id_t Uint32
@ctypedef __time_t Int64
@ctypedef __useconds_t Uint32
@ctypedef __suseconds_t Int64
@ctypedef __daddr_t Int32
@ctypedef __swblk_t Int64
@ctypedef __key_t Int32
@ctypedef __clockid_t Int32
@ctypedef __timer_t Ptr{:None}
@ctypedef __blksize_t Int64
@ctypedef __blkcnt_t Int64
@ctypedef __blkcnt64_t Int64
@ctypedef __fsblkcnt_t Uint64
@ctypedef __fsblkcnt64_t Uint64
@ctypedef __fsfilcnt_t Uint64
@ctypedef __fsfilcnt64_t Uint64
@ctypedef __ssize_t Int64
@ctypedef __loff_t __off64_t
@ctypedef __qaddr_t Ptr{:__quad_t}
@ctypedef __caddr_t Ptr{:Uint8}
@ctypedef __intptr_t Int64
@ctypedef __socklen_t Uint32
@c None xmlCheckVersion (:Int32,) shlib
@ctypedef xmlChar Uint8
@c Ptr{:xmlChar} xmlStrdup (Ptr{:xmlChar},) shlib
@c Ptr{:xmlChar} xmlStrndup (Ptr{:xmlChar},:Int32) shlib
@c Ptr{:xmlChar} xmlCharStrndup (Ptr{:Uint8},:Int32) shlib
@c Ptr{:xmlChar} xmlCharStrdup (Ptr{:Uint8},) shlib
@c Ptr{:xmlChar} xmlStrsub (Ptr{:xmlChar},:Int32,:Int32) shlib
@c Ptr{:xmlChar} xmlStrchr (Ptr{:xmlChar},:xmlChar) shlib
@c Ptr{:xmlChar} xmlStrstr (Ptr{:xmlChar},Ptr{:xmlChar}) shlib
@c Ptr{:xmlChar} xmlStrcasestr (Ptr{:xmlChar},Ptr{:xmlChar}) shlib
@c Int32 xmlStrcmp (Ptr{:xmlChar},Ptr{:xmlChar}) shlib
@c Int32 xmlStrncmp (Ptr{:xmlChar},Ptr{:xmlChar},:Int32) shlib
@c Int32 xmlStrcasecmp (Ptr{:xmlChar},Ptr{:xmlChar}) shlib
@c Int32 xmlStrncasecmp (Ptr{:xmlChar},Ptr{:xmlChar},:Int32) shlib
@c Int32 xmlStrEqual (Ptr{:xmlChar},Ptr{:xmlChar}) shlib
@c Int32 xmlStrQEqual (Ptr{:xmlChar},Ptr{:xmlChar},Ptr{:xmlChar}) shlib
@c Int32 xmlStrlen (Ptr{:xmlChar},) shlib
@c Ptr{:xmlChar} xmlStrcat (Ptr{:xmlChar},Ptr{:xmlChar}) shlib
@c Ptr{:xmlChar} xmlStrncat (Ptr{:xmlChar},Ptr{:xmlChar},:Int32) shlib
@c Ptr{:xmlChar} xmlStrncatNew (Ptr{:xmlChar},Ptr{:xmlChar},:Int32) shlib
@c Int32 xmlStrPrintf (Ptr{:xmlChar},:Int32,Ptr{:xmlChar}) shlib
@c Int32 xmlStrVPrintf (Ptr{:xmlChar},:Int32,Ptr{:xmlChar},Ptr{:__va_list_tag}) shlib
@c Int32 xmlGetUTF8Char (Ptr{:Uint8},Ptr{:Int32}) shlib
@c Int32 xmlCheckUTF8 (Ptr{:Uint8},) shlib
@c Int32 xmlUTF8Strsize (Ptr{:xmlChar},:Int32) shlib
@c Ptr{:xmlChar} xmlUTF8Strndup (Ptr{:xmlChar},:Int32) shlib
@c Ptr{:xmlChar} xmlUTF8Strpos (Ptr{:xmlChar},:Int32) shlib
@c Int32 xmlUTF8Strloc (Ptr{:xmlChar},Ptr{:xmlChar}) shlib
@c Ptr{:xmlChar} xmlUTF8Strsub (Ptr{:xmlChar},:Int32,:Int32) shlib
@c Int32 xmlUTF8Strlen (Ptr{:xmlChar},) shlib
@c Int32 xmlUTF8Size (Ptr{:xmlChar},) shlib
@c Int32 xmlUTF8Charcmp (Ptr{:xmlChar},Ptr{:xmlChar}) shlib
@ctypedef xmlParserInputBuffer Void
@ctypedef xmlParserInputBufferPtr Ptr{:xmlParserInputBuffer}
@ctypedef xmlOutputBuffer Void
@ctypedef xmlOutputBufferPtr Ptr{:xmlOutputBuffer}
@ctypedef xmlParserInput Void
@ctypedef xmlParserInputPtr Ptr{:xmlParserInput}
@ctypedef xmlParserCtxt Void
@ctypedef xmlParserCtxtPtr Ptr{:xmlParserCtxt}
@ctypedef xmlSAXLocator Void
@ctypedef xmlSAXLocatorPtr Ptr{:xmlSAXLocator}
@ctypedef xmlSAXHandler Void
@ctypedef xmlSAXHandlerPtr Ptr{:xmlSAXHandler}
@ctypedef xmlEntity Void
@ctypedef xmlEntityPtr Ptr{:xmlEntity}
# enum xmlBufferAllocationScheme
@ctypedef xmlBufferAllocationScheme Uint32
const XML_BUFFER_ALLOC_DOUBLEIT = 0
const XML_BUFFER_ALLOC_EXACT = 1
const XML_BUFFER_ALLOC_IMMUTABLE = 2
const XML_BUFFER_ALLOC_IO = 3
# end
@ctypedef xmlBuffer Void
@ctypedef xmlBufferPtr Ptr{:xmlBuffer}
# enum xmlElementType
@ctypedef xmlElementType Uint32
const XML_ELEMENT_NODE = 1
const XML_ATTRIBUTE_NODE = 2
const XML_TEXT_NODE = 3
const XML_CDATA_SECTION_NODE = 4
const XML_ENTITY_REF_NODE = 5
const XML_ENTITY_NODE = 6
const XML_PI_NODE = 7
const XML_COMMENT_NODE = 8
const XML_DOCUMENT_NODE = 9
const XML_DOCUMENT_TYPE_NODE = 10
const XML_DOCUMENT_FRAG_NODE = 11
const XML_NOTATION_NODE = 12
const XML_HTML_DOCUMENT_NODE = 13
const XML_DTD_NODE = 14
const XML_ELEMENT_DECL = 15
const XML_ATTRIBUTE_DECL = 16
const XML_ENTITY_DECL = 17
const XML_NAMESPACE_DECL = 18
const XML_XINCLUDE_START = 19
const XML_XINCLUDE_END = 20
const XML_DOCB_DOCUMENT_NODE = 21
# end
@ctypedef xmlNotation Void
@ctypedef xmlNotationPtr Ptr{:xmlNotation}
# enum xmlAttributeType
@ctypedef xmlAttributeType Uint32
const XML_ATTRIBUTE_CDATA = 1
const XML_ATTRIBUTE_ID = 2
const XML_ATTRIBUTE_IDREF = 3
const XML_ATTRIBUTE_IDREFS = 4
const XML_ATTRIBUTE_ENTITY = 5
const XML_ATTRIBUTE_ENTITIES = 6
const XML_ATTRIBUTE_NMTOKEN = 7
const XML_ATTRIBUTE_NMTOKENS = 8
const XML_ATTRIBUTE_ENUMERATION = 9
const XML_ATTRIBUTE_NOTATION = 10
# end
# enum xmlAttributeDefault
@ctypedef xmlAttributeDefault Uint32
const XML_ATTRIBUTE_NONE = 1
const XML_ATTRIBUTE_REQUIRED = 2
const XML_ATTRIBUTE_IMPLIED = 3
const XML_ATTRIBUTE_FIXED = 4
# end
@ctypedef xmlEnumeration Void
@ctypedef xmlEnumerationPtr Ptr{:xmlEnumeration}
@ctypedef xmlAttribute Void
@ctypedef xmlAttributePtr Ptr{:xmlAttribute}
# enum xmlElementContentType
@ctypedef xmlElementContentType Uint32
const XML_ELEMENT_CONTENT_PCDATA = 1
const XML_ELEMENT_CONTENT_ELEMENT = 2
const XML_ELEMENT_CONTENT_SEQ = 3
const XML_ELEMENT_CONTENT_OR = 4
# end
# enum xmlElementContentOccur
@ctypedef xmlElementContentOccur Uint32
const XML_ELEMENT_CONTENT_ONCE = 1
const XML_ELEMENT_CONTENT_OPT = 2
const XML_ELEMENT_CONTENT_MULT = 3
const XML_ELEMENT_CONTENT_PLUS = 4
# end
@ctypedef xmlElementContent Void
@ctypedef xmlElementContentPtr Ptr{:xmlElementContent}
# enum xmlElementTypeVal
@ctypedef xmlElementTypeVal Uint32
const XML_ELEMENT_TYPE_UNDEFINED = 0
const XML_ELEMENT_TYPE_EMPTY = 1
const XML_ELEMENT_TYPE_ANY = 2
const XML_ELEMENT_TYPE_MIXED = 3
const XML_ELEMENT_TYPE_ELEMENT = 4
# end
@ctypedef xmlRegexp Void
@ctypedef xmlRegexpPtr Ptr{:xmlRegexp}
@ctypedef xmlRegExecCtxt Void
@ctypedef xmlRegExecCtxtPtr Ptr{:xmlRegExecCtxt}
@ctypedef xmlDict Void
@ctypedef xmlDictPtr Ptr{:xmlDict}
@c xmlDictPtr xmlDictCreate () shlib
@c xmlDictPtr xmlDictCreateSub (:xmlDictPtr,) shlib
@c Int32 xmlDictReference (:xmlDictPtr,) shlib
@c None xmlDictFree (:xmlDictPtr,) shlib
@c Ptr{:xmlChar} xmlDictLookup (:xmlDictPtr,Ptr{:xmlChar},:Int32) shlib
@c Ptr{:xmlChar} xmlDictExists (:xmlDictPtr,Ptr{:xmlChar},:Int32) shlib
@c Ptr{:xmlChar} xmlDictQLookup (:xmlDictPtr,Ptr{:xmlChar},Ptr{:xmlChar}) shlib
@c Int32 xmlDictOwns (:xmlDictPtr,Ptr{:xmlChar}) shlib
@c Int32 xmlDictSize (:xmlDictPtr,) shlib
@c None xmlDictCleanup () shlib
@c xmlRegexpPtr xmlRegexpCompile (Ptr{:xmlChar},) shlib
@c None xmlRegFreeRegexp (:xmlRegexpPtr,) shlib
@c Int32 xmlRegexpExec (:xmlRegexpPtr,Ptr{:xmlChar}) shlib
@c None xmlRegexpPrint (Ptr{:FILE},:xmlRegexpPtr) shlib
@c Int32 xmlRegexpIsDeterminist (:xmlRegexpPtr,) shlib
@ctypedef xmlRegExecCallbacks Ptr{:Void}
@c xmlRegExecCtxtPtr xmlRegNewExecCtxt (:xmlRegexpPtr,:xmlRegExecCallbacks,Ptr{:None}) shlib
@c None xmlRegFreeExecCtxt (:xmlRegExecCtxtPtr,) shlib
@c Int32 xmlRegExecPushString (:xmlRegExecCtxtPtr,Ptr{:xmlChar},Ptr{:None}) shlib
@c Int32 xmlRegExecPushString2 (:xmlRegExecCtxtPtr,Ptr{:xmlChar},Ptr{:xmlChar},Ptr{:None}) shlib
@c Int32 xmlRegExecNextValues (:xmlRegExecCtxtPtr,Ptr{:Int32},Ptr{:Int32},Ptr{Ptr{:xmlChar}},Ptr{:Int32}) shlib
@c Int32 xmlRegExecErrInfo (:xmlRegExecCtxtPtr,Ptr{Ptr{:xmlChar}},Ptr{:Int32},Ptr{:Int32},Ptr{Ptr{:xmlChar}},Ptr{:Int32}) shlib
@ctypedef xmlExpCtxt Void
@ctypedef xmlExpCtxtPtr Ptr{:xmlExpCtxt}
@c None xmlExpFreeCtxt (:xmlExpCtxtPtr,) shlib
@c xmlExpCtxtPtr xmlExpNewCtxt (:Int32,:xmlDictPtr) shlib
@c Int32 xmlExpCtxtNbNodes (:xmlExpCtxtPtr,) shlib
@c Int32 xmlExpCtxtNbCons (:xmlExpCtxtPtr,) shlib
@ctypedef xmlExpNode Void
@ctypedef xmlExpNodePtr Ptr{:xmlExpNode}
# enum xmlExpNodeType
@ctypedef xmlExpNodeType Uint32
const XML_EXP_EMPTY = 0
const XML_EXP_FORBID = 1
const XML_EXP_ATOM = 2
const XML_EXP_SEQ = 3
const XML_EXP_OR = 4
const XML_EXP_COUNT = 5
# end
@c None xmlExpFree (:xmlExpCtxtPtr,:xmlExpNodePtr) shlib
@c None xmlExpRef (:xmlExpNodePtr,) shlib
@c xmlExpNodePtr xmlExpParse (:xmlExpCtxtPtr,Ptr{:Uint8}) shlib
@c xmlExpNodePtr xmlExpNewAtom (:xmlExpCtxtPtr,Ptr{:xmlChar},:Int32) shlib
@c xmlExpNodePtr xmlExpNewOr (:xmlExpCtxtPtr,:xmlExpNodePtr,:xmlExpNodePtr) shlib
@c xmlExpNodePtr xmlExpNewSeq (:xmlExpCtxtPtr,:xmlExpNodePtr,:xmlExpNodePtr) shlib
@c xmlExpNodePtr xmlExpNewRange (:xmlExpCtxtPtr,:xmlExpNodePtr,:Int32,:Int32) shlib
@c Int32 xmlExpIsNillable (:xmlExpNodePtr,) shlib
@c Int32 xmlExpMaxToken (:xmlExpNodePtr,) shlib
@c Int32 xmlExpGetLanguage (:xmlExpCtxtPtr,:xmlExpNodePtr,Ptr{Ptr{:xmlChar}},:Int32) shlib
@c Int32 xmlExpGetStart (:xmlExpCtxtPtr,:xmlExpNodePtr,Ptr{Ptr{:xmlChar}},:Int32) shlib
@c xmlExpNodePtr xmlExpStringDerive (:xmlExpCtxtPtr,:xmlExpNodePtr,Ptr{:xmlChar},:Int32) shlib
@c xmlExpNodePtr xmlExpExpDerive (:xmlExpCtxtPtr,:xmlExpNodePtr,:xmlExpNodePtr) shlib
@c Int32 xmlExpSubsume (:xmlExpCtxtPtr,:xmlExpNodePtr,:xmlExpNodePtr) shlib
@c None xmlExpDump (:xmlBufferPtr,:xmlExpNodePtr) shlib
@ctypedef xmlElement Void
@ctypedef xmlElementPtr Ptr{:xmlElement}
@ctypedef xmlNsType xmlElementType
@ctypedef xmlNs Void
@ctypedef xmlNsPtr Ptr{:xmlNs}
@ctypedef xmlDtd Void
@ctypedef xmlDtdPtr Ptr{:xmlDtd}
@ctypedef xmlAttr Void
@ctypedef xmlAttrPtr Ptr{:xmlAttr}
@ctypedef xmlID Void
@ctypedef xmlIDPtr Ptr{:xmlID}
@ctypedef xmlRef Void
@ctypedef xmlRefPtr Ptr{:xmlRef}
@ctypedef xmlNode Void
@ctypedef xmlNodePtr Ptr{:xmlNode}
# enum xmlDocProperties
@ctypedef xmlDocProperties Uint32
const XML_DOC_WELLFORMED = 1
const XML_DOC_NSVALID = 2
const XML_DOC_OLD10 = 4
const XML_DOC_DTDVALID = 8
const XML_DOC_XINCLUDE = 16
const XML_DOC_USERBUILT = 32
const XML_DOC_INTERNAL = 64
const XML_DOC_HTML = 128
# end
@ctypedef xmlDoc Void
@ctypedef xmlDocPtr Ptr{:xmlDoc}
@ctypedef xmlDOMWrapCtxt Void
@ctypedef xmlDOMWrapCtxtPtr Ptr{:xmlDOMWrapCtxt}
@ctypedef xmlDOMWrapAcquireNsFunction Ptr{:Void}
@c Int32 xmlValidateNCName (Ptr{:xmlChar},:Int32) shlib
@c Int32 xmlValidateQName (Ptr{:xmlChar},:Int32) shlib
@c Int32 xmlValidateName (Ptr{:xmlChar},:Int32) shlib
@c Int32 xmlValidateNMToken (Ptr{:xmlChar},:Int32) shlib
@c Ptr{:xmlChar} xmlBuildQName (Ptr{:xmlChar},Ptr{:xmlChar},Ptr{:xmlChar},:Int32) shlib
@c Ptr{:xmlChar} xmlSplitQName2 (Ptr{:xmlChar},Ptr{Ptr{:xmlChar}}) shlib
@c Ptr{:xmlChar} xmlSplitQName3 (Ptr{:xmlChar},Ptr{:Int32}) shlib
@c None xmlSetBufferAllocationScheme (:xmlBufferAllocationScheme,) shlib
@c xmlBufferAllocationScheme xmlGetBufferAllocationScheme () shlib
@c xmlBufferPtr xmlBufferCreate () shlib
@c xmlBufferPtr xmlBufferCreateSize (:size_t,) shlib
@c xmlBufferPtr xmlBufferCreateStatic (Ptr{:None},:size_t) shlib
@c Int32 xmlBufferResize (:xmlBufferPtr,:Uint32) shlib
@c None xmlBufferFree (:xmlBufferPtr,) shlib
@c Int32 xmlBufferDump (Ptr{:FILE},:xmlBufferPtr) shlib
@c Int32 xmlBufferAdd (:xmlBufferPtr,Ptr{:xmlChar},:Int32) shlib
@c Int32 xmlBufferAddHead (:xmlBufferPtr,Ptr{:xmlChar},:Int32) shlib
@c Int32 xmlBufferCat (:xmlBufferPtr,Ptr{:xmlChar}) shlib
@c Int32 xmlBufferCCat (:xmlBufferPtr,Ptr{:Uint8}) shlib
@c Int32 xmlBufferShrink (:xmlBufferPtr,:Uint32) shlib
@c Int32 xmlBufferGrow (:xmlBufferPtr,:Uint32) shlib
@c None xmlBufferEmpty (:xmlBufferPtr,) shlib
@c Ptr{:xmlChar} xmlBufferContent (:xmlBufferPtr,) shlib
@c None xmlBufferSetAllocationScheme (:xmlBufferPtr,:xmlBufferAllocationScheme) shlib
@c Int32 xmlBufferLength (:xmlBufferPtr,) shlib
@c xmlDtdPtr xmlCreateIntSubset (:xmlDocPtr,Ptr{:xmlChar},Ptr{:xmlChar},Ptr{:xmlChar}) shlib
@c xmlDtdPtr xmlNewDtd (:xmlDocPtr,Ptr{:xmlChar},Ptr{:xmlChar},Ptr{:xmlChar}) shlib
@c xmlDtdPtr xmlGetIntSubset (:xmlDocPtr,) shlib
@c None xmlFreeDtd (:xmlDtdPtr,) shlib
@c xmlNsPtr xmlNewGlobalNs (:xmlDocPtr,Ptr{:xmlChar},Ptr{:xmlChar}) shlib
@c xmlNsPtr xmlNewNs (:xmlNodePtr,Ptr{:xmlChar},Ptr{:xmlChar}) shlib
@c None xmlFreeNs (:xmlNsPtr,) shlib
@c None xmlFreeNsList (:xmlNsPtr,) shlib
@c xmlDocPtr xmlNewDoc (Ptr{:xmlChar},) shlib
@c None xmlFreeDoc (:xmlDocPtr,) shlib
@c xmlAttrPtr xmlNewDocProp (:xmlDocPtr,Ptr{:xmlChar},Ptr{:xmlChar}) shlib
@c xmlAttrPtr xmlNewProp (:xmlNodePtr,Ptr{:xmlChar},Ptr{:xmlChar}) shlib
@c xmlAttrPtr xmlNewNsProp (:xmlNodePtr,:xmlNsPtr,Ptr{:xmlChar},Ptr{:xmlChar}) shlib
@c xmlAttrPtr xmlNewNsPropEatName (:xmlNodePtr,:xmlNsPtr,Ptr{:xmlChar},Ptr{:xmlChar}) shlib
@c None xmlFreePropList (:xmlAttrPtr,) shlib
@c None xmlFreeProp (:xmlAttrPtr,) shlib
@c xmlAttrPtr xmlCopyProp (:xmlNodePtr,:xmlAttrPtr) shlib
@c xmlAttrPtr xmlCopyPropList (:xmlNodePtr,:xmlAttrPtr) shlib
@c xmlDtdPtr xmlCopyDtd (:xmlDtdPtr,) shlib
@c xmlDocPtr xmlCopyDoc (:xmlDocPtr,:Int32) shlib
@c xmlNodePtr xmlNewDocNode (:xmlDocPtr,:xmlNsPtr,Ptr{:xmlChar},Ptr{:xmlChar}) shlib
@c xmlNodePtr xmlNewDocNodeEatName (:xmlDocPtr,:xmlNsPtr,Ptr{:xmlChar},Ptr{:xmlChar}) shlib
@c xmlNodePtr xmlNewNode (:xmlNsPtr,Ptr{:xmlChar}) shlib
@c xmlNodePtr xmlNewNodeEatName (:xmlNsPtr,Ptr{:xmlChar}) shlib
@c xmlNodePtr xmlNewChild (:xmlNodePtr,:xmlNsPtr,Ptr{:xmlChar},Ptr{:xmlChar}) shlib
@c xmlNodePtr xmlNewDocText (:xmlDocPtr,Ptr{:xmlChar}) shlib
@c xmlNodePtr xmlNewText (Ptr{:xmlChar},) shlib
@c xmlNodePtr xmlNewDocPI (:xmlDocPtr,Ptr{:xmlChar},Ptr{:xmlChar}) shlib
@c xmlNodePtr xmlNewPI (Ptr{:xmlChar},Ptr{:xmlChar}) shlib
@c xmlNodePtr xmlNewDocTextLen (:xmlDocPtr,Ptr{:xmlChar},:Int32) shlib
@c xmlNodePtr xmlNewTextLen (Ptr{:xmlChar},:Int32) shlib
@c xmlNodePtr xmlNewDocComment (:xmlDocPtr,Ptr{:xmlChar}) shlib
@c xmlNodePtr xmlNewComment (Ptr{:xmlChar},) shlib
@c xmlNodePtr xmlNewCDataBlock (:xmlDocPtr,Ptr{:xmlChar},:Int32) shlib
@c xmlNodePtr xmlNewCharRef (:xmlDocPtr,Ptr{:xmlChar}) shlib
@c xmlNodePtr xmlNewReference (:xmlDocPtr,Ptr{:xmlChar}) shlib
@c xmlNodePtr xmlCopyNode (:xmlNodePtr,:Int32) shlib
@c xmlNodePtr xmlDocCopyNode (:xmlNodePtr,:xmlDocPtr,:Int32) shlib
@c xmlNodePtr xmlDocCopyNodeList (:xmlDocPtr,:xmlNodePtr) shlib
@c xmlNodePtr xmlCopyNodeList (:xmlNodePtr,) shlib
@c xmlNodePtr xmlNewTextChild (:xmlNodePtr,:xmlNsPtr,Ptr{:xmlChar},Ptr{:xmlChar}) shlib
@c xmlNodePtr xmlNewDocRawNode (:xmlDocPtr,:xmlNsPtr,Ptr{:xmlChar},Ptr{:xmlChar}) shlib
@c xmlNodePtr xmlNewDocFragment (:xmlDocPtr,) shlib
@c Int64 xmlGetLineNo (:xmlNodePtr,) shlib
@c Ptr{:xmlChar} xmlGetNodePath (:xmlNodePtr,) shlib
@c xmlNodePtr xmlDocGetRootElement (:xmlDocPtr,) shlib
@c xmlNodePtr xmlGetLastChild (:xmlNodePtr,) shlib
@c Int32 xmlNodeIsText (:xmlNodePtr,) shlib
@c Int32 xmlIsBlankNode (:xmlNodePtr,) shlib
@c xmlNodePtr xmlDocSetRootElement (:xmlDocPtr,:xmlNodePtr) shlib
@c None xmlNodeSetName (:xmlNodePtr,Ptr{:xmlChar}) shlib
@c xmlNodePtr xmlAddChild (:xmlNodePtr,:xmlNodePtr) shlib
@c xmlNodePtr xmlAddChildList (:xmlNodePtr,:xmlNodePtr) shlib
@c xmlNodePtr xmlReplaceNode (:xmlNodePtr,:xmlNodePtr) shlib
@c xmlNodePtr xmlAddPrevSibling (:xmlNodePtr,:xmlNodePtr) shlib
@c xmlNodePtr xmlAddSibling (:xmlNodePtr,:xmlNodePtr) shlib
@c xmlNodePtr xmlAddNextSibling (:xmlNodePtr,:xmlNodePtr) shlib
@c None xmlUnlinkNode (:xmlNodePtr,) shlib
@c xmlNodePtr xmlTextMerge (:xmlNodePtr,:xmlNodePtr) shlib
@c Int32 xmlTextConcat (:xmlNodePtr,Ptr{:xmlChar},:Int32) shlib
@c None xmlFreeNodeList (:xmlNodePtr,) shlib
@c None xmlFreeNode (:xmlNodePtr,) shlib
@c None xmlSetTreeDoc (:xmlNodePtr,:xmlDocPtr) shlib
@c None xmlSetListDoc (:xmlNodePtr,:xmlDocPtr) shlib
@c xmlNsPtr xmlSearchNs (:xmlDocPtr,:xmlNodePtr,Ptr{:xmlChar}) shlib
@c xmlNsPtr xmlSearchNsByHref (:xmlDocPtr,:xmlNodePtr,Ptr{:xmlChar}) shlib
@c Ptr{:xmlNsPtr} xmlGetNsList (:xmlDocPtr,:xmlNodePtr) shlib
@c None xmlSetNs (:xmlNodePtr,:xmlNsPtr) shlib
@c xmlNsPtr xmlCopyNamespace (:xmlNsPtr,) shlib
@c xmlNsPtr xmlCopyNamespaceList (:xmlNsPtr,) shlib
@c xmlAttrPtr xmlSetProp (:xmlNodePtr,Ptr{:xmlChar},Ptr{:xmlChar}) shlib
@c xmlAttrPtr xmlSetNsProp (:xmlNodePtr,:xmlNsPtr,Ptr{:xmlChar},Ptr{:xmlChar}) shlib
@c Ptr{:xmlChar} xmlGetNoNsProp (:xmlNodePtr,Ptr{:xmlChar}) shlib
@c Ptr{:xmlChar} xmlGetProp (:xmlNodePtr,Ptr{:xmlChar}) shlib
@c xmlAttrPtr xmlHasProp (:xmlNodePtr,Ptr{:xmlChar}) shlib
@c xmlAttrPtr xmlHasNsProp (:xmlNodePtr,Ptr{:xmlChar},Ptr{:xmlChar}) shlib
@c Ptr{:xmlChar} xmlGetNsProp (:xmlNodePtr,Ptr{:xmlChar},Ptr{:xmlChar}) shlib
@c xmlNodePtr xmlStringGetNodeList (:xmlDocPtr,Ptr{:xmlChar}) shlib
@c xmlNodePtr xmlStringLenGetNodeList (:xmlDocPtr,Ptr{:xmlChar},:Int32) shlib
@c Ptr{:xmlChar} xmlNodeListGetString (:xmlDocPtr,:xmlNodePtr,:Int32) shlib
@c Ptr{:xmlChar} xmlNodeListGetRawString (:xmlDocPtr,:xmlNodePtr,:Int32) shlib
@c None xmlNodeSetContent (:xmlNodePtr,Ptr{:xmlChar}) shlib
@c None xmlNodeSetContentLen (:xmlNodePtr,Ptr{:xmlChar},:Int32) shlib
@c None xmlNodeAddContent (:xmlNodePtr,Ptr{:xmlChar}) shlib
@c None xmlNodeAddContentLen (:xmlNodePtr,Ptr{:xmlChar},:Int32) shlib
@c Ptr{:xmlChar} xmlNodeGetContent (:xmlNodePtr,) shlib
@c Int32 xmlNodeBufGetContent (:xmlBufferPtr,:xmlNodePtr) shlib
@c Ptr{:xmlChar} xmlNodeGetLang (:xmlNodePtr,) shlib
@c Int32 xmlNodeGetSpacePreserve (:xmlNodePtr,) shlib
@c None xmlNodeSetLang (:xmlNodePtr,Ptr{:xmlChar}) shlib
@c None xmlNodeSetSpacePreserve (:xmlNodePtr,:Int32) shlib
@c Ptr{:xmlChar} xmlNodeGetBase (:xmlDocPtr,:xmlNodePtr) shlib
@c None xmlNodeSetBase (:xmlNodePtr,Ptr{:xmlChar}) shlib
@c Int32 xmlRemoveProp (:xmlAttrPtr,) shlib
@c Int32 xmlUnsetNsProp (:xmlNodePtr,:xmlNsPtr,Ptr{:xmlChar}) shlib
@c Int32 xmlUnsetProp (:xmlNodePtr,Ptr{:xmlChar}) shlib
@c None xmlBufferWriteCHAR (:xmlBufferPtr,Ptr{:xmlChar}) shlib
@c None xmlBufferWriteChar (:xmlBufferPtr,Ptr{:Uint8}) shlib
@c None xmlBufferWriteQuotedString (:xmlBufferPtr,Ptr{:xmlChar}) shlib
@c None xmlAttrSerializeTxtContent (:xmlBufferPtr,:xmlDocPtr,:xmlAttrPtr,Ptr{:xmlChar}) shlib
@c Int32 xmlReconciliateNs (:xmlDocPtr,:xmlNodePtr) shlib
@c None xmlDocDumpFormatMemory (:xmlDocPtr,Ptr{Ptr{:xmlChar}},Ptr{:Int32},:Int32) shlib
@c None xmlDocDumpMemory (:xmlDocPtr,Ptr{Ptr{:xmlChar}},Ptr{:Int32}) shlib
@c None xmlDocDumpMemoryEnc (:xmlDocPtr,Ptr{Ptr{:xmlChar}},Ptr{:Int32},Ptr{:Uint8}) shlib
@c None xmlDocDumpFormatMemoryEnc (:xmlDocPtr,Ptr{Ptr{:xmlChar}},Ptr{:Int32},Ptr{:Uint8},:Int32) shlib
@c Int32 xmlDocFormatDump (Ptr{:FILE},:xmlDocPtr,:Int32) shlib
@c Int32 xmlDocDump (Ptr{:FILE},:xmlDocPtr) shlib
@c None xmlElemDump (Ptr{:FILE},:xmlDocPtr,:xmlNodePtr) shlib
@c Int32 xmlSaveFile (Ptr{:Uint8},:xmlDocPtr) shlib
@c Int32 xmlSaveFormatFile (Ptr{:Uint8},:xmlDocPtr,:Int32) shlib
@c Int32 xmlNodeDump (:xmlBufferPtr,:xmlDocPtr,:xmlNodePtr,:Int32,:Int32) shlib
@c Int32 xmlSaveFileTo (:xmlOutputBufferPtr,:xmlDocPtr,Ptr{:Uint8}) shlib
@c Int32 xmlSaveFormatFileTo (:xmlOutputBufferPtr,:xmlDocPtr,Ptr{:Uint8},:Int32) shlib
@c None xmlNodeDumpOutput (:xmlOutputBufferPtr,:xmlDocPtr,:xmlNodePtr,:Int32,:Int32,Ptr{:Uint8}) shlib
@c Int32 xmlSaveFormatFileEnc (Ptr{:Uint8},:xmlDocPtr,Ptr{:Uint8},:Int32) shlib
@c Int32 xmlSaveFileEnc (Ptr{:Uint8},:xmlDocPtr,Ptr{:Uint8}) shlib
@c Int32 xmlIsXHTML (Ptr{:xmlChar},Ptr{:xmlChar}) shlib
@c Int32 xmlGetDocCompressMode (:xmlDocPtr,) shlib
@c None xmlSetDocCompressMode (:xmlDocPtr,:Int32) shlib
@c Int32 xmlGetCompressMode () shlib
@c None xmlSetCompressMode (:Int32,) shlib
@c xmlDOMWrapCtxtPtr xmlDOMWrapNewCtxt () shlib
@c None xmlDOMWrapFreeCtxt (:xmlDOMWrapCtxtPtr,) shlib
@c Int32 xmlDOMWrapReconcileNamespaces (:xmlDOMWrapCtxtPtr,:xmlNodePtr,:Int32) shlib
@c Int32 xmlDOMWrapAdoptNode (:xmlDOMWrapCtxtPtr,:xmlDocPtr,:xmlNodePtr,:xmlDocPtr,:xmlNodePtr,:Int32) shlib
@c Int32 xmlDOMWrapRemoveNode (:xmlDOMWrapCtxtPtr,:xmlDocPtr,:xmlNodePtr,:Int32) shlib
@c Int32 xmlDOMWrapCloneNode (:xmlDOMWrapCtxtPtr,:xmlDocPtr,:xmlNodePtr,Ptr{:xmlNodePtr},:xmlDocPtr,:xmlNodePtr,:Int32,:Int32) shlib
@c Uint64 xmlChildElementCount (:xmlNodePtr,) shlib
@c xmlNodePtr xmlNextElementSibling (:xmlNodePtr,) shlib
@c xmlNodePtr xmlFirstElementChild (:xmlNodePtr,) shlib
@c xmlNodePtr xmlLastElementChild (:xmlNodePtr,) shlib
@c xmlNodePtr xmlPreviousElementSibling (:xmlNodePtr,) shlib
@ctypedef xmlFreeFunc Ptr{:Void}
@ctypedef xmlMallocFunc Ptr{:Void}
@ctypedef xmlReallocFunc Ptr{:Void}
@ctypedef xmlStrdupFunc Ptr{:Void}
@c Int32 xmlMemSetup (:xmlFreeFunc,:xmlMallocFunc,:xmlReallocFunc,:xmlStrdupFunc) shlib
@c Int32 xmlMemGet (Ptr{:xmlFreeFunc},Ptr{:xmlMallocFunc},Ptr{:xmlReallocFunc},Ptr{:xmlStrdupFunc}) shlib
@c Int32 xmlGcMemSetup (:xmlFreeFunc,:xmlMallocFunc,:xmlMallocFunc,:xmlReallocFunc,:xmlStrdupFunc) shlib
@c Int32 xmlGcMemGet (Ptr{:xmlFreeFunc},Ptr{:xmlMallocFunc},Ptr{:xmlMallocFunc},Ptr{:xmlReallocFunc},Ptr{:xmlStrdupFunc}) shlib
@c Int32 xmlInitMemory () shlib
@c None xmlCleanupMemory () shlib
@c Int32 xmlMemUsed () shlib
@c Int32 xmlMemBlocks () shlib
@c None xmlMemDisplay (Ptr{:FILE},) shlib
@c None xmlMemDisplayLast (Ptr{:FILE},:Int64) shlib
@c None xmlMemShow (Ptr{:FILE},:Int32) shlib
@c None xmlMemoryDump () shlib
@c Ptr{:None} xmlMemMalloc (:size_t,) shlib
@c Ptr{:None} xmlMemRealloc (Ptr{:None},:size_t) shlib
@c None xmlMemFree (Ptr{:None},) shlib
@c Ptr{:Uint8} xmlMemoryStrdup (Ptr{:Uint8},) shlib
@c Ptr{:None} xmlMallocLoc (:size_t,Ptr{:Uint8},:Int32) shlib
@c Ptr{:None} xmlReallocLoc (Ptr{:None},:size_t,Ptr{:Uint8},:Int32) shlib
@c Ptr{:None} xmlMallocAtomicLoc (:size_t,Ptr{:Uint8},:Int32) shlib
@c Ptr{:Uint8} xmlMemStrdupLoc (Ptr{:Uint8},Ptr{:Uint8},:Int32) shlib
@ctypedef xmlMutex Void
@ctypedef xmlMutexPtr Ptr{:xmlMutex}
@ctypedef xmlRMutex Void
@ctypedef xmlRMutexPtr Ptr{:xmlRMutex}
@ctypedef xmlHashTable Void
@ctypedef xmlHashTablePtr Ptr{:xmlHashTable}
@ctypedef xmlHashDeallocator Ptr{:Void}
@ctypedef xmlHashCopier Ptr{:Void}
@ctypedef xmlHashScanner Ptr{:Void}
@ctypedef xmlHashScannerFull Ptr{:Void}
@c xmlHashTablePtr xmlHashCreate (:Int32,) shlib
@c xmlHashTablePtr xmlHashCreateDict (:Int32,:xmlDictPtr) shlib
@c None xmlHashFree (:xmlHashTablePtr,:xmlHashDeallocator) shlib
@c Int32 xmlHashAddEntry (:xmlHashTablePtr,Ptr{:xmlChar},Ptr{:None}) shlib
@c Int32 xmlHashUpdateEntry (:xmlHashTablePtr,Ptr{:xmlChar},Ptr{:None},:xmlHashDeallocator) shlib
@c Int32 xmlHashAddEntry2 (:xmlHashTablePtr,Ptr{:xmlChar},Ptr{:xmlChar},Ptr{:None}) shlib
@c Int32 xmlHashUpdateEntry2 (:xmlHashTablePtr,Ptr{:xmlChar},Ptr{:xmlChar},Ptr{:None},:xmlHashDeallocator) shlib
@c Int32 xmlHashAddEntry3 (:xmlHashTablePtr,Ptr{:xmlChar},Ptr{:xmlChar},Ptr{:xmlChar},Ptr{:None}) shlib
@c Int32 xmlHashUpdateEntry3 (:xmlHashTablePtr,Ptr{:xmlChar},Ptr{:xmlChar},Ptr{:xmlChar},Ptr{:None},:xmlHashDeallocator) shlib
@c Int32 xmlHashRemoveEntry (:xmlHashTablePtr,Ptr{:xmlChar},:xmlHashDeallocator) shlib
@c Int32 xmlHashRemoveEntry2 (:xmlHashTablePtr,Ptr{:xmlChar},Ptr{:xmlChar},:xmlHashDeallocator) shlib
@c Int32 xmlHashRemoveEntry3 (:xmlHashTablePtr,Ptr{:xmlChar},Ptr{:xmlChar},Ptr{:xmlChar},:xmlHashDeallocator) shlib
@c Ptr{:None} xmlHashLookup (:xmlHashTablePtr,Ptr{:xmlChar}) shlib
@c Ptr{:None} xmlHashLookup2 (:xmlHashTablePtr,Ptr{:xmlChar},Ptr{:xmlChar}) shlib
@c Ptr{:None} xmlHashLookup3 (:xmlHashTablePtr,Ptr{:xmlChar},Ptr{:xmlChar},Ptr{:xmlChar}) shlib
@c Ptr{:None} xmlHashQLookup (:xmlHashTablePtr,Ptr{:xmlChar},Ptr{:xmlChar}) shlib
@c Ptr{:None} xmlHashQLookup2 (:xmlHashTablePtr,Ptr{:xmlChar},Ptr{:xmlChar},Ptr{:xmlChar},Ptr{:xmlChar}) shlib
@c Ptr{:None} xmlHashQLookup3 (:xmlHashTablePtr,Ptr{:xmlChar},Ptr{:xmlChar},Ptr{:xmlChar},Ptr{:xmlChar},Ptr{:xmlChar},Ptr{:xmlChar}) shlib
@c xmlHashTablePtr xmlHashCopy (:xmlHashTablePtr,:xmlHashCopier) shlib
@c Int32 xmlHashSize (:xmlHashTablePtr,) shlib
@c None xmlHashScan (:xmlHashTablePtr,:xmlHashScanner,Ptr{:None}) shlib
@c None xmlHashScan3 (:xmlHashTablePtr,Ptr{:xmlChar},Ptr{:xmlChar},Ptr{:xmlChar},:xmlHashScanner,Ptr{:None}) shlib
@c None xmlHashScanFull (:xmlHashTablePtr,:xmlHashScannerFull,Ptr{:None}) shlib
@c None xmlHashScanFull3 (:xmlHashTablePtr,Ptr{:xmlChar},Ptr{:xmlChar},Ptr{:xmlChar},:xmlHashScannerFull,Ptr{:None}) shlib
# enum xmlErrorLevel
@ctypedef xmlErrorLevel Uint32
const XML_ERR_NONE = 0
const XML_ERR_WARNING = 1
const XML_ERR_ERROR = 2
const XML_ERR_FATAL = 3
# end
# enum xmlErrorDomain
@ctypedef xmlErrorDomain Uint32
const XML_FROM_NONE = 0
const XML_FROM_PARSER = 1
const XML_FROM_TREE = 2
const XML_FROM_NAMESPACE = 3
const XML_FROM_DTD = 4
const XML_FROM_HTML = 5
const XML_FROM_MEMORY = 6
const XML_FROM_OUTPUT = 7
const XML_FROM_IO = 8
const XML_FROM_FTP = 9
const XML_FROM_HTTP = 10
const XML_FROM_XINCLUDE = 11
const XML_FROM_XPATH = 12
const XML_FROM_XPOINTER = 13
const XML_FROM_REGEXP = 14
const XML_FROM_DATATYPE = 15
const XML_FROM_SCHEMASP = 16
const XML_FROM_SCHEMASV = 17
const XML_FROM_RELAXNGP = 18
const XML_FROM_RELAXNGV = 19
const XML_FROM_CATALOG = 20
const XML_FROM_C14N = 21
const XML_FROM_XSLT = 22
const XML_FROM_VALID = 23
const XML_FROM_CHECK = 24
const XML_FROM_WRITER = 25
const XML_FROM_MODULE = 26
const XML_FROM_I18N = 27
const XML_FROM_SCHEMATRONV = 28
# end
@ctypedef xmlError Void
@ctypedef xmlErrorPtr Ptr{:xmlError}
# enum xmlParserErrors
@ctypedef xmlParserErrors Uint32
const XML_ERR_OK = 0
const XML_ERR_INTERNAL_ERROR = 1
const XML_ERR_NO_MEMORY = 2
const XML_ERR_DOCUMENT_START = 3
const XML_ERR_DOCUMENT_EMPTY = 4
const XML_ERR_DOCUMENT_END = 5
const XML_ERR_INVALID_HEX_CHARREF = 6
const XML_ERR_INVALID_DEC_CHARREF = 7
const XML_ERR_INVALID_CHARREF = 8
const XML_ERR_INVALID_CHAR = 9
const XML_ERR_CHARREF_AT_EOF = 10
const XML_ERR_CHARREF_IN_PROLOG = 11
const XML_ERR_CHARREF_IN_EPILOG = 12
const XML_ERR_CHARREF_IN_DTD = 13
const XML_ERR_ENTITYREF_AT_EOF = 14
const XML_ERR_ENTITYREF_IN_PROLOG = 15
const XML_ERR_ENTITYREF_IN_EPILOG = 16
const XML_ERR_ENTITYREF_IN_DTD = 17
const XML_ERR_PEREF_AT_EOF = 18
const XML_ERR_PEREF_IN_PROLOG = 19
const XML_ERR_PEREF_IN_EPILOG = 20
const XML_ERR_PEREF_IN_INT_SUBSET = 21
const XML_ERR_ENTITYREF_NO_NAME = 22
const XML_ERR_ENTITYREF_SEMICOL_MISSING = 23
const XML_ERR_PEREF_NO_NAME = 24
const XML_ERR_PEREF_SEMICOL_MISSING = 25
const XML_ERR_UNDECLARED_ENTITY = 26
const XML_WAR_UNDECLARED_ENTITY = 27
const XML_ERR_UNPARSED_ENTITY = 28
const XML_ERR_ENTITY_IS_EXTERNAL = 29
const XML_ERR_ENTITY_IS_PARAMETER = 30
const XML_ERR_UNKNOWN_ENCODING = 31
const XML_ERR_UNSUPPORTED_ENCODING = 32
const XML_ERR_STRING_NOT_STARTED = 33
const XML_ERR_STRING_NOT_CLOSED = 34
const XML_ERR_NS_DECL_ERROR = 35
const XML_ERR_ENTITY_NOT_STARTED = 36
const XML_ERR_ENTITY_NOT_FINISHED = 37
const XML_ERR_LT_IN_ATTRIBUTE = 38
const XML_ERR_ATTRIBUTE_NOT_STARTED = 39
const XML_ERR_ATTRIBUTE_NOT_FINISHED = 40
const XML_ERR_ATTRIBUTE_WITHOUT_VALUE = 41
const XML_ERR_ATTRIBUTE_REDEFINED = 42
const XML_ERR_LITERAL_NOT_STARTED = 43
const XML_ERR_LITERAL_NOT_FINISHED = 44
const XML_ERR_COMMENT_NOT_FINISHED = 45
const XML_ERR_PI_NOT_STARTED = 46
const XML_ERR_PI_NOT_FINISHED = 47
const XML_ERR_NOTATION_NOT_STARTED = 48
const XML_ERR_NOTATION_NOT_FINISHED = 49
const XML_ERR_ATTLIST_NOT_STARTED = 50
const XML_ERR_ATTLIST_NOT_FINISHED = 51
const XML_ERR_MIXED_NOT_STARTED = 52
const XML_ERR_MIXED_NOT_FINISHED = 53
const XML_ERR_ELEMCONTENT_NOT_STARTED = 54
const XML_ERR_ELEMCONTENT_NOT_FINISHED = 55
const XML_ERR_XMLDECL_NOT_STARTED = 56
const XML_ERR_XMLDECL_NOT_FINISHED = 57
const XML_ERR_CONDSEC_NOT_STARTED = 58
const XML_ERR_CONDSEC_NOT_FINISHED = 59
const XML_ERR_EXT_SUBSET_NOT_FINISHED = 60
const XML_ERR_DOCTYPE_NOT_FINISHED = 61
const XML_ERR_MISPLACED_CDATA_END = 62
const XML_ERR_CDATA_NOT_FINISHED = 63
const XML_ERR_RESERVED_XML_NAME = 64
const XML_ERR_SPACE_REQUIRED = 65
const XML_ERR_SEPARATOR_REQUIRED = 66
const XML_ERR_NMTOKEN_REQUIRED = 67
const XML_ERR_NAME_REQUIRED = 68
const XML_ERR_PCDATA_REQUIRED = 69
const XML_ERR_URI_REQUIRED = 70
const XML_ERR_PUBID_REQUIRED = 71
const XML_ERR_LT_REQUIRED = 72
const XML_ERR_GT_REQUIRED = 73
const XML_ERR_LTSLASH_REQUIRED = 74
const XML_ERR_EQUAL_REQUIRED = 75
const XML_ERR_TAG_NAME_MISMATCH = 76
const XML_ERR_TAG_NOT_FINISHED = 77
const XML_ERR_STANDALONE_VALUE = 78
const XML_ERR_ENCODING_NAME = 79
const XML_ERR_HYPHEN_IN_COMMENT = 80
const XML_ERR_INVALID_ENCODING = 81
const XML_ERR_EXT_ENTITY_STANDALONE = 82
const XML_ERR_CONDSEC_INVALID = 83
const XML_ERR_VALUE_REQUIRED = 84
const XML_ERR_NOT_WELL_BALANCED = 85
const XML_ERR_EXTRA_CONTENT = 86
const XML_ERR_ENTITY_CHAR_ERROR = 87
const XML_ERR_ENTITY_PE_INTERNAL = 88
const XML_ERR_ENTITY_LOOP = 89
const XML_ERR_ENTITY_BOUNDARY = 90
const XML_ERR_INVALID_URI = 91
const XML_ERR_URI_FRAGMENT = 92
const XML_WAR_CATALOG_PI = 93
const XML_ERR_NO_DTD = 94
const XML_ERR_CONDSEC_INVALID_KEYWORD = 95
const XML_ERR_VERSION_MISSING = 96
const XML_WAR_UNKNOWN_VERSION = 97
const XML_WAR_LANG_VALUE = 98
const XML_WAR_NS_URI = 99
const XML_WAR_NS_URI_RELATIVE = 100
const XML_ERR_MISSING_ENCODING = 101
const XML_WAR_SPACE_VALUE = 102
const XML_ERR_NOT_STANDALONE = 103
const XML_ERR_ENTITY_PROCESSING = 104
const XML_ERR_NOTATION_PROCESSING = 105
const XML_WAR_NS_COLUMN = 106
const XML_WAR_ENTITY_REDEFINED = 107
const XML_ERR_UNKNOWN_VERSION = 108
const XML_ERR_VERSION_MISMATCH = 109
const XML_NS_ERR_XML_NAMESPACE = 200
const XML_NS_ERR_UNDEFINED_NAMESPACE = 201
const XML_NS_ERR_QNAME = 202
const XML_NS_ERR_ATTRIBUTE_REDEFINED = 203
const XML_NS_ERR_EMPTY = 204
const XML_NS_ERR_COLON = 205
const XML_DTD_ATTRIBUTE_DEFAULT = 500
const XML_DTD_ATTRIBUTE_REDEFINED = 501
const XML_DTD_ATTRIBUTE_VALUE = 502
const XML_DTD_CONTENT_ERROR = 503
const XML_DTD_CONTENT_MODEL = 504
const XML_DTD_CONTENT_NOT_DETERMINIST = 505
const XML_DTD_DIFFERENT_PREFIX = 506
const XML_DTD_ELEM_DEFAULT_NAMESPACE = 507
const XML_DTD_ELEM_NAMESPACE = 508
const XML_DTD_ELEM_REDEFINED = 509
const XML_DTD_EMPTY_NOTATION = 510
const XML_DTD_ENTITY_TYPE = 511
const XML_DTD_ID_FIXED = 512
const XML_DTD_ID_REDEFINED = 513
const XML_DTD_ID_SUBSET = 514
const XML_DTD_INVALID_CHILD = 515
const XML_DTD_INVALID_DEFAULT = 516
const XML_DTD_LOAD_ERROR = 517
const XML_DTD_MISSING_ATTRIBUTE = 518
const XML_DTD_MIXED_CORRUPT = 519
const XML_DTD_MULTIPLE_ID = 520
const XML_DTD_NO_DOC = 521
const XML_DTD_NO_DTD = 522
const XML_DTD_NO_ELEM_NAME = 523
const XML_DTD_NO_PREFIX = 524
const XML_DTD_NO_ROOT = 525
const XML_DTD_NOTATION_REDEFINED = 526
const XML_DTD_NOTATION_VALUE = 527
const XML_DTD_NOT_EMPTY = 528
const XML_DTD_NOT_PCDATA = 529
const XML_DTD_NOT_STANDALONE = 530
const XML_DTD_ROOT_NAME = 531
const XML_DTD_STANDALONE_WHITE_SPACE = 532
const XML_DTD_UNKNOWN_ATTRIBUTE = 533
const XML_DTD_UNKNOWN_ELEM = 534
const XML_DTD_UNKNOWN_ENTITY = 535
const XML_DTD_UNKNOWN_ID = 536
const XML_DTD_UNKNOWN_NOTATION = 537
const XML_DTD_STANDALONE_DEFAULTED = 538
const XML_DTD_XMLID_VALUE = 539
const XML_DTD_XMLID_TYPE = 540
const XML_DTD_DUP_TOKEN = 541
const XML_HTML_STRUCURE_ERROR = 800
const XML_HTML_UNKNOWN_TAG = 801
const XML_RNGP_ANYNAME_ATTR_ANCESTOR = 1000
const XML_RNGP_ATTR_CONFLICT = 1001
const XML_RNGP_ATTRIBUTE_CHILDREN = 1002
const XML_RNGP_ATTRIBUTE_CONTENT = 1003
const XML_RNGP_ATTRIBUTE_EMPTY = 1004
const XML_RNGP_ATTRIBUTE_NOOP = 1005
const XML_RNGP_CHOICE_CONTENT = 1006
const XML_RNGP_CHOICE_EMPTY = 1007
const XML_RNGP_CREATE_FAILURE = 1008
const XML_RNGP_DATA_CONTENT = 1009
const XML_RNGP_DEF_CHOICE_AND_INTERLEAVE = 1010
const XML_RNGP_DEFINE_CREATE_FAILED = 1011
const XML_RNGP_DEFINE_EMPTY = 1012
const XML_RNGP_DEFINE_MISSING = 1013
const XML_RNGP_DEFINE_NAME_MISSING = 1014
const XML_RNGP_ELEM_CONTENT_EMPTY = 1015
const XML_RNGP_ELEM_CONTENT_ERROR = 1016
const XML_RNGP_ELEMENT_EMPTY = 1017
const XML_RNGP_ELEMENT_CONTENT = 1018
const XML_RNGP_ELEMENT_NAME = 1019
const XML_RNGP_ELEMENT_NO_CONTENT = 1020
const XML_RNGP_ELEM_TEXT_CONFLICT = 1021
const XML_RNGP_EMPTY = 1022
const XML_RNGP_EMPTY_CONSTRUCT = 1023
const XML_RNGP_EMPTY_CONTENT = 1024
const XML_RNGP_EMPTY_NOT_EMPTY = 1025
const XML_RNGP_ERROR_TYPE_LIB = 1026
const XML_RNGP_EXCEPT_EMPTY = 1027
const XML_RNGP_EXCEPT_MISSING = 1028
const XML_RNGP_EXCEPT_MULTIPLE = 1029
const XML_RNGP_EXCEPT_NO_CONTENT = 1030
const XML_RNGP_EXTERNALREF_EMTPY = 1031
const XML_RNGP_EXTERNAL_REF_FAILURE = 1032
const XML_RNGP_EXTERNALREF_RECURSE = 1033
const XML_RNGP_FORBIDDEN_ATTRIBUTE = 1034
const XML_RNGP_FOREIGN_ELEMENT = 1035
const XML_RNGP_GRAMMAR_CONTENT = 1036
const XML_RNGP_GRAMMAR_EMPTY = 1037
const XML_RNGP_GRAMMAR_MISSING = 1038
const XML_RNGP_GRAMMAR_NO_START = 1039
const XML_RNGP_GROUP_ATTR_CONFLICT = 1040
const XML_RNGP_HREF_ERROR = 1041
const XML_RNGP_INCLUDE_EMPTY = 1042
const XML_RNGP_INCLUDE_FAILURE = 1043
const XML_RNGP_INCLUDE_RECURSE = 1044
const XML_RNGP_INTERLEAVE_ADD = 1045
const XML_RNGP_INTERLEAVE_CREATE_FAILED = 1046
const XML_RNGP_INTERLEAVE_EMPTY = 1047
const XML_RNGP_INTERLEAVE_NO_CONTENT = 1048
const XML_RNGP_INVALID_DEFINE_NAME = 1049
const XML_RNGP_INVALID_URI = 1050
const XML_RNGP_INVALID_VALUE = 1051
const XML_RNGP_MISSING_HREF = 1052
const XML_RNGP_NAME_MISSING = 1053
const XML_RNGP_NEED_COMBINE = 1054
const XML_RNGP_NOTALLOWED_NOT_EMPTY = 1055
const XML_RNGP_NSNAME_ATTR_ANCESTOR = 1056
const XML_RNGP_NSNAME_NO_NS = 1057
const XML_RNGP_PARAM_FORBIDDEN = 1058
const XML_RNGP_PARAM_NAME_MISSING = 1059
const XML_RNGP_PARENTREF_CREATE_FAILED = 1060
const XML_RNGP_PARENTREF_NAME_INVALID = 1061
const XML_RNGP_PARENTREF_NO_NAME = 1062
const XML_RNGP_PARENTREF_NO_PARENT = 1063
const XML_RNGP_PARENTREF_NOT_EMPTY = 1064
const XML_RNGP_PARSE_ERROR = 1065
const XML_RNGP_PAT_ANYNAME_EXCEPT_ANYNAME = 1066
const XML_RNGP_PAT_ATTR_ATTR = 1067
const XML_RNGP_PAT_ATTR_ELEM = 1068
const XML_RNGP_PAT_DATA_EXCEPT_ATTR = 1069
const XML_RNGP_PAT_DATA_EXCEPT_ELEM = 1070
const XML_RNGP_PAT_DATA_EXCEPT_EMPTY = 1071
const XML_RNGP_PAT_DATA_EXCEPT_GROUP = 1072
const XML_RNGP_PAT_DATA_EXCEPT_INTERLEAVE = 1073
const XML_RNGP_PAT_DATA_EXCEPT_LIST = 1074
const XML_RNGP_PAT_DATA_EXCEPT_ONEMORE = 1075
const XML_RNGP_PAT_DATA_EXCEPT_REF = 1076
const XML_RNGP_PAT_DATA_EXCEPT_TEXT = 1077
const XML_RNGP_PAT_LIST_ATTR = 1078
const XML_RNGP_PAT_LIST_ELEM = 1079
const XML_RNGP_PAT_LIST_INTERLEAVE = 1080
const XML_RNGP_PAT_LIST_LIST = 1081
const XML_RNGP_PAT_LIST_REF = 1082
const XML_RNGP_PAT_LIST_TEXT = 1083
const XML_RNGP_PAT_NSNAME_EXCEPT_ANYNAME = 1084
const XML_RNGP_PAT_NSNAME_EXCEPT_NSNAME = 1085
const XML_RNGP_PAT_ONEMORE_GROUP_ATTR = 1086
const XML_RNGP_PAT_ONEMORE_INTERLEAVE_ATTR = 1087
const XML_RNGP_PAT_START_ATTR = 1088
const XML_RNGP_PAT_START_DATA = 1089
const XML_RNGP_PAT_START_EMPTY = 1090
const XML_RNGP_PAT_START_GROUP = 1091
const XML_RNGP_PAT_START_INTERLEAVE = 1092
const XML_RNGP_PAT_START_LIST = 1093
const XML_RNGP_PAT_START_ONEMORE = 1094
const XML_RNGP_PAT_START_TEXT = 1095
const XML_RNGP_PAT_START_VALUE = 1096
const XML_RNGP_PREFIX_UNDEFINED = 1097
const XML_RNGP_REF_CREATE_FAILED = 1098
const XML_RNGP_REF_CYCLE = 1099
const XML_RNGP_REF_NAME_INVALID = 1100
const XML_RNGP_REF_NO_DEF = 1101
const XML_RNGP_REF_NO_NAME = 1102
const XML_RNGP_REF_NOT_EMPTY = 1103
const XML_RNGP_START_CHOICE_AND_INTERLEAVE = 1104
const XML_RNGP_START_CONTENT = 1105
const XML_RNGP_START_EMPTY = 1106
const XML_RNGP_START_MISSING = 1107
const XML_RNGP_TEXT_EXPECTED = 1108
const XML_RNGP_TEXT_HAS_CHILD = 1109
const XML_RNGP_TYPE_MISSING = 1110
const XML_RNGP_TYPE_NOT_FOUND = 1111
const XML_RNGP_TYPE_VALUE = 1112
const XML_RNGP_UNKNOWN_ATTRIBUTE = 1113
const XML_RNGP_UNKNOWN_COMBINE = 1114
const XML_RNGP_UNKNOWN_CONSTRUCT = 1115
const XML_RNGP_UNKNOWN_TYPE_LIB = 1116
const XML_RNGP_URI_FRAGMENT = 1117
const XML_RNGP_URI_NOT_ABSOLUTE = 1118
const XML_RNGP_VALUE_EMPTY = 1119
const XML_RNGP_VALUE_NO_CONTENT = 1120
const XML_RNGP_XMLNS_NAME = 1121
const XML_RNGP_XML_NS = 1122
const XML_XPATH_EXPRESSION_OK = 1200
const XML_XPATH_NUMBER_ERROR = 1201
const XML_XPATH_UNFINISHED_LITERAL_ERROR = 1202
const XML_XPATH_START_LITERAL_ERROR = 1203
const XML_XPATH_VARIABLE_REF_ERROR = 1204
const XML_XPATH_UNDEF_VARIABLE_ERROR = 1205
const XML_XPATH_INVALID_PREDICATE_ERROR = 1206
const XML_XPATH_EXPR_ERROR = 1207
const XML_XPATH_UNCLOSED_ERROR = 1208
const XML_XPATH_UNKNOWN_FUNC_ERROR = 1209
const XML_XPATH_INVALID_OPERAND = 1210
const XML_XPATH_INVALID_TYPE = 1211
const XML_XPATH_INVALID_ARITY = 1212
const XML_XPATH_INVALID_CTXT_SIZE = 1213
const XML_XPATH_INVALID_CTXT_POSITION = 1214
const XML_XPATH_MEMORY_ERROR = 1215
const XML_XPTR_SYNTAX_ERROR = 1216
const XML_XPTR_RESOURCE_ERROR = 1217
const XML_XPTR_SUB_RESOURCE_ERROR = 1218
const XML_XPATH_UNDEF_PREFIX_ERROR = 1219
const XML_XPATH_ENCODING_ERROR = 1220
const XML_XPATH_INVALID_CHAR_ERROR = 1221
const XML_TREE_INVALID_HEX = 1300
const XML_TREE_INVALID_DEC = 1301
const XML_TREE_UNTERMINATED_ENTITY = 1302
const XML_TREE_NOT_UTF8 = 1303
const XML_SAVE_NOT_UTF8 = 1400
const XML_SAVE_CHAR_INVALID = 1401
const XML_SAVE_NO_DOCTYPE = 1402
const XML_SAVE_UNKNOWN_ENCODING = 1403
const XML_REGEXP_COMPILE_ERROR = 1450
const XML_IO_UNKNOWN = 1500
const XML_IO_EACCES = 1501
const XML_IO_EAGAIN = 1502
const XML_IO_EBADF = 1503
const XML_IO_EBADMSG = 1504
const XML_IO_EBUSY = 1505
const XML_IO_ECANCELED = 1506
const XML_IO_ECHILD = 1507
const XML_IO_EDEADLK = 1508
const XML_IO_EDOM = 1509
const XML_IO_EEXIST = 1510
const XML_IO_EFAULT = 1511
const XML_IO_EFBIG = 1512
const XML_IO_EINPROGRESS = 1513
const XML_IO_EINTR = 1514
const XML_IO_EINVAL = 1515
const XML_IO_EIO = 1516
const XML_IO_EISDIR = 1517
const XML_IO_EMFILE = 1518
const XML_IO_EMLINK = 1519
const XML_IO_EMSGSIZE = 1520
const XML_IO_ENAMETOOLONG = 1521
const XML_IO_ENFILE = 1522
const XML_IO_ENODEV = 1523
const XML_IO_ENOENT = 1524
const XML_IO_ENOEXEC = 1525
const XML_IO_ENOLCK = 1526
const XML_IO_ENOMEM = 1527
const XML_IO_ENOSPC = 1528
const XML_IO_ENOSYS = 1529
const XML_IO_ENOTDIR = 1530
const XML_IO_ENOTEMPTY = 1531
const XML_IO_ENOTSUP = 1532
const XML_IO_ENOTTY = 1533
const XML_IO_ENXIO = 1534
const XML_IO_EPERM = 1535
const XML_IO_EPIPE = 1536
const XML_IO_ERANGE = 1537
const XML_IO_EROFS = 1538
const XML_IO_ESPIPE = 1539
const XML_IO_ESRCH = 1540
const XML_IO_ETIMEDOUT = 1541
const XML_IO_EXDEV = 1542
const XML_IO_NETWORK_ATTEMPT = 1543
const XML_IO_ENCODER = 1544
const XML_IO_FLUSH = 1545
const XML_IO_WRITE = 1546
const XML_IO_NO_INPUT = 1547
const XML_IO_BUFFER_FULL = 1548
const XML_IO_LOAD_ERROR = 1549
const XML_IO_ENOTSOCK = 1550
const XML_IO_EISCONN = 1551
const XML_IO_ECONNREFUSED = 1552
const XML_IO_ENETUNREACH = 1553
const XML_IO_EADDRINUSE = 1554
const XML_IO_EALREADY = 1555
const XML_IO_EAFNOSUPPORT = 1556
const XML_XINCLUDE_RECURSION = 1600
const XML_XINCLUDE_PARSE_VALUE = 1601
const XML_XINCLUDE_ENTITY_DEF_MISMATCH = 1602
const XML_XINCLUDE_NO_HREF = 1603
const XML_XINCLUDE_NO_FALLBACK = 1604
const XML_XINCLUDE_HREF_URI = 1605
const XML_XINCLUDE_TEXT_FRAGMENT = 1606
const XML_XINCLUDE_TEXT_DOCUMENT = 1607
const XML_XINCLUDE_INVALID_CHAR = 1608
const XML_XINCLUDE_BUILD_FAILED = 1609
const XML_XINCLUDE_UNKNOWN_ENCODING = 1610
const XML_XINCLUDE_MULTIPLE_ROOT = 1611
const XML_XINCLUDE_XPTR_FAILED = 1612
const XML_XINCLUDE_XPTR_RESULT = 1613
const XML_XINCLUDE_INCLUDE_IN_INCLUDE = 1614
const XML_XINCLUDE_FALLBACKS_IN_INCLUDE = 1615
const XML_XINCLUDE_FALLBACK_NOT_IN_INCLUDE = 1616
const XML_XINCLUDE_DEPRECATED_NS = 1617
const XML_XINCLUDE_FRAGMENT_ID = 1618
const XML_CATALOG_MISSING_ATTR = 1650
const XML_CATALOG_ENTRY_BROKEN = 1651
const XML_CATALOG_PREFER_VALUE = 1652
const XML_CATALOG_NOT_CATALOG = 1653
const XML_CATALOG_RECURSION = 1654
const XML_SCHEMAP_PREFIX_UNDEFINED = 1700
const XML_SCHEMAP_ATTRFORMDEFAULT_VALUE = 1701
const XML_SCHEMAP_ATTRGRP_NONAME_NOREF = 1702
const XML_SCHEMAP_ATTR_NONAME_NOREF = 1703
const XML_SCHEMAP_COMPLEXTYPE_NONAME_NOREF = 1704
const XML_SCHEMAP_ELEMFORMDEFAULT_VALUE = 1705
const XML_SCHEMAP_ELEM_NONAME_NOREF = 1706
const XML_SCHEMAP_EXTENSION_NO_BASE = 1707
const XML_SCHEMAP_FACET_NO_VALUE = 1708
const XML_SCHEMAP_FAILED_BUILD_IMPORT = 1709
const XML_SCHEMAP_GROUP_NONAME_NOREF = 1710
const XML_SCHEMAP_IMPORT_NAMESPACE_NOT_URI = 1711
const XML_SCHEMAP_IMPORT_REDEFINE_NSNAME = 1712
const XML_SCHEMAP_IMPORT_SCHEMA_NOT_URI = 1713
const XML_SCHEMAP_INVALID_BOOLEAN = 1714
const XML_SCHEMAP_INVALID_ENUM = 1715
const XML_SCHEMAP_INVALID_FACET = 1716
const XML_SCHEMAP_INVALID_FACET_VALUE = 1717
const XML_SCHEMAP_INVALID_MAXOCCURS = 1718
const XML_SCHEMAP_INVALID_MINOCCURS = 1719
const XML_SCHEMAP_INVALID_REF_AND_SUBTYPE = 1720
const XML_SCHEMAP_INVALID_WHITE_SPACE = 1721
const XML_SCHEMAP_NOATTR_NOREF = 1722
const XML_SCHEMAP_NOTATION_NO_NAME = 1723
const XML_SCHEMAP_NOTYPE_NOREF = 1724
const XML_SCHEMAP_REF_AND_SUBTYPE = 1725
const XML_SCHEMAP_RESTRICTION_NONAME_NOREF = 1726
const XML_SCHEMAP_SIMPLETYPE_NONAME = 1727
const XML_SCHEMAP_TYPE_AND_SUBTYPE = 1728
const XML_SCHEMAP_UNKNOWN_ALL_CHILD = 1729
const XML_SCHEMAP_UNKNOWN_ANYATTRIBUTE_CHILD = 1730
const XML_SCHEMAP_UNKNOWN_ATTR_CHILD = 1731
const XML_SCHEMAP_UNKNOWN_ATTRGRP_CHILD = 1732
const XML_SCHEMAP_UNKNOWN_ATTRIBUTE_GROUP = 1733
const XML_SCHEMAP_UNKNOWN_BASE_TYPE = 1734
const XML_SCHEMAP_UNKNOWN_CHOICE_CHILD = 1735
const XML_SCHEMAP_UNKNOWN_COMPLEXCONTENT_CHILD = 1736
const XML_SCHEMAP_UNKNOWN_COMPLEXTYPE_CHILD = 1737
const XML_SCHEMAP_UNKNOWN_ELEM_CHILD = 1738
const XML_SCHEMAP_UNKNOWN_EXTENSION_CHILD = 1739
const XML_SCHEMAP_UNKNOWN_FACET_CHILD = 1740
const XML_SCHEMAP_UNKNOWN_FACET_TYPE = 1741
const XML_SCHEMAP_UNKNOWN_GROUP_CHILD = 1742
const XML_SCHEMAP_UNKNOWN_IMPORT_CHILD = 1743
const XML_SCHEMAP_UNKNOWN_LIST_CHILD = 1744
const XML_SCHEMAP_UNKNOWN_NOTATION_CHILD = 1745
const XML_SCHEMAP_UNKNOWN_PROCESSCONTENT_CHILD = 1746
const XML_SCHEMAP_UNKNOWN_REF = 1747
const XML_SCHEMAP_UNKNOWN_RESTRICTION_CHILD = 1748
const XML_SCHEMAP_UNKNOWN_SCHEMAS_CHILD = 1749
const XML_SCHEMAP_UNKNOWN_SEQUENCE_CHILD = 1750
const XML_SCHEMAP_UNKNOWN_SIMPLECONTENT_CHILD = 1751
const XML_SCHEMAP_UNKNOWN_SIMPLETYPE_CHILD = 1752
const XML_SCHEMAP_UNKNOWN_TYPE = 1753
const XML_SCHEMAP_UNKNOWN_UNION_CHILD = 1754
const XML_SCHEMAP_ELEM_DEFAULT_FIXED = 1755
const XML_SCHEMAP_REGEXP_INVALID = 1756
const XML_SCHEMAP_FAILED_LOAD = 1757
const XML_SCHEMAP_NOTHING_TO_PARSE = 1758
const XML_SCHEMAP_NOROOT = 1759
const XML_SCHEMAP_REDEFINED_GROUP = 1760
const XML_SCHEMAP_REDEFINED_TYPE = 1761
const XML_SCHEMAP_REDEFINED_ELEMENT = 1762
const XML_SCHEMAP_REDEFINED_ATTRGROUP = 1763
const XML_SCHEMAP_REDEFINED_ATTR = 1764
const XML_SCHEMAP_REDEFINED_NOTATION = 1765
const XML_SCHEMAP_FAILED_PARSE = 1766
const XML_SCHEMAP_UNKNOWN_PREFIX = 1767
const XML_SCHEMAP_DEF_AND_PREFIX = 1768
const XML_SCHEMAP_UNKNOWN_INCLUDE_CHILD = 1769
const XML_SCHEMAP_INCLUDE_SCHEMA_NOT_URI = 1770
const XML_SCHEMAP_INCLUDE_SCHEMA_NO_URI = 1771
const XML_SCHEMAP_NOT_SCHEMA = 1772
const XML_SCHEMAP_UNKNOWN_MEMBER_TYPE = 1773
const XML_SCHEMAP_INVALID_ATTR_USE = 1774
const XML_SCHEMAP_RECURSIVE = 1775
const XML_SCHEMAP_SUPERNUMEROUS_LIST_ITEM_TYPE = 1776
const XML_SCHEMAP_INVALID_ATTR_COMBINATION = 1777
const XML_SCHEMAP_INVALID_ATTR_INLINE_COMBINATION = 1778
const XML_SCHEMAP_MISSING_SIMPLETYPE_CHILD = 1779
const XML_SCHEMAP_INVALID_ATTR_NAME = 1780
const XML_SCHEMAP_REF_AND_CONTENT = 1781
const XML_SCHEMAP_CT_PROPS_CORRECT_1 = 1782
const XML_SCHEMAP_CT_PROPS_CORRECT_2 = 1783
const XML_SCHEMAP_CT_PROPS_CORRECT_3 = 1784
const XML_SCHEMAP_CT_PROPS_CORRECT_4 = 1785
const XML_SCHEMAP_CT_PROPS_CORRECT_5 = 1786
const XML_SCHEMAP_DERIVATION_OK_RESTRICTION_1 = 1787
const XML_SCHEMAP_DERIVATION_OK_RESTRICTION_2_1_1 = 1788
const XML_SCHEMAP_DERIVATION_OK_RESTRICTION_2_1_2 = 1789
const XML_SCHEMAP_DERIVATION_OK_RESTRICTION_2_2 = 1790
const XML_SCHEMAP_DERIVATION_OK_RESTRICTION_3 = 1791
const XML_SCHEMAP_WILDCARD_INVALID_NS_MEMBER = 1792
const XML_SCHEMAP_INTERSECTION_NOT_EXPRESSIBLE = 1793
const XML_SCHEMAP_UNION_NOT_EXPRESSIBLE = 1794
const XML_SCHEMAP_SRC_IMPORT_3_1 = 1795
const XML_SCHEMAP_SRC_IMPORT_3_2 = 1796
const XML_SCHEMAP_DERIVATION_OK_RESTRICTION_4_1 = 1797
const XML_SCHEMAP_DERIVATION_OK_RESTRICTION_4_2 = 1798
const XML_SCHEMAP_DERIVATION_OK_RESTRICTION_4_3 = 1799
const XML_SCHEMAP_COS_CT_EXTENDS_1_3 = 1800
const XML_SCHEMAV_NOROOT = 1801
const XML_SCHEMAV_UNDECLAREDELEM = 1802
const XML_SCHEMAV_NOTTOPLEVEL = 1803
const XML_SCHEMAV_MISSING = 1804
const XML_SCHEMAV_WRONGELEM = 1805
const XML_SCHEMAV_NOTYPE = 1806
const XML_SCHEMAV_NOROLLBACK = 1807
const XML_SCHEMAV_ISABSTRACT = 1808
const XML_SCHEMAV_NOTEMPTY = 1809
const XML_SCHEMAV_ELEMCONT = 1810
const XML_SCHEMAV_HAVEDEFAULT = 1811
const XML_SCHEMAV_NOTNILLABLE = 1812
const XML_SCHEMAV_EXTRACONTENT = 1813
const XML_SCHEMAV_INVALIDATTR = 1814
const XML_SCHEMAV_INVALIDELEM = 1815
const XML_SCHEMAV_NOTDETERMINIST = 1816
const XML_SCHEMAV_CONSTRUCT = 1817
const XML_SCHEMAV_INTERNAL = 1818
const XML_SCHEMAV_NOTSIMPLE = 1819
const XML_SCHEMAV_ATTRUNKNOWN = 1820
const XML_SCHEMAV_ATTRINVALID = 1821
const XML_SCHEMAV_VALUE = 1822
const XML_SCHEMAV_FACET = 1823
const XML_SCHEMAV_CVC_DATATYPE_VALID_1_2_1 = 1824
const XML_SCHEMAV_CVC_DATATYPE_VALID_1_2_2 = 1825
const XML_SCHEMAV_CVC_DATATYPE_VALID_1_2_3 = 1826
const XML_SCHEMAV_CVC_TYPE_3_1_1 = 1827
const XML_SCHEMAV_CVC_TYPE_3_1_2 = 1828
const XML_SCHEMAV_CVC_FACET_VALID = 1829
const XML_SCHEMAV_CVC_LENGTH_VALID = 1830
const XML_SCHEMAV_CVC_MINLENGTH_VALID = 1831
const XML_SCHEMAV_CVC_MAXLENGTH_VALID = 1832
const XML_SCHEMAV_CVC_MININCLUSIVE_VALID = 1833
const XML_SCHEMAV_CVC_MAXINCLUSIVE_VALID = 1834
const XML_SCHEMAV_CVC_MINEXCLUSIVE_VALID = 1835
const XML_SCHEMAV_CVC_MAXEXCLUSIVE_VALID = 1836
const XML_SCHEMAV_CVC_TOTALDIGITS_VALID = 1837
const XML_SCHEMAV_CVC_FRACTIONDIGITS_VALID = 1838
const XML_SCHEMAV_CVC_PATTERN_VALID = 1839
const XML_SCHEMAV_CVC_ENUMERATION_VALID = 1840
const XML_SCHEMAV_CVC_COMPLEX_TYPE_2_1 = 1841
const XML_SCHEMAV_CVC_COMPLEX_TYPE_2_2 = 1842
const XML_SCHEMAV_CVC_COMPLEX_TYPE_2_3 = 1843
const XML_SCHEMAV_CVC_COMPLEX_TYPE_2_4 = 1844
const XML_SCHEMAV_CVC_ELT_1 = 1845
const XML_SCHEMAV_CVC_ELT_2 = 1846
const XML_SCHEMAV_CVC_ELT_3_1 = 1847
const XML_SCHEMAV_CVC_ELT_3_2_1 = 1848
const XML_SCHEMAV_CVC_ELT_3_2_2 = 1849
const XML_SCHEMAV_CVC_ELT_4_1 = 1850
const XML_SCHEMAV_CVC_ELT_4_2 = 1851
const XML_SCHEMAV_CVC_ELT_4_3 = 1852
const XML_SCHEMAV_CVC_ELT_5_1_1 = 1853
const XML_SCHEMAV_CVC_ELT_5_1_2 = 1854
const XML_SCHEMAV_CVC_ELT_5_2_1 = 1855
const XML_SCHEMAV_CVC_ELT_5_2_2_1 = 1856
const XML_SCHEMAV_CVC_ELT_5_2_2_2_1 = 1857
const XML_SCHEMAV_CVC_ELT_5_2_2_2_2 = 1858
const XML_SCHEMAV_CVC_ELT_6 = 1859
const XML_SCHEMAV_CVC_ELT_7 = 1860
const XML_SCHEMAV_CVC_ATTRIBUTE_1 = 1861
const XML_SCHEMAV_CVC_ATTRIBUTE_2 = 1862
const XML_SCHEMAV_CVC_ATTRIBUTE_3 = 1863
const XML_SCHEMAV_CVC_ATTRIBUTE_4 = 1864
const XML_SCHEMAV_CVC_COMPLEX_TYPE_3_1 = 1865
const XML_SCHEMAV_CVC_COMPLEX_TYPE_3_2_1 = 1866
const XML_SCHEMAV_CVC_COMPLEX_TYPE_3_2_2 = 1867
const XML_SCHEMAV_CVC_COMPLEX_TYPE_4 = 1868
const XML_SCHEMAV_CVC_COMPLEX_TYPE_5_1 = 1869
const XML_SCHEMAV_CVC_COMPLEX_TYPE_5_2 = 1870
const XML_SCHEMAV_ELEMENT_CONTENT = 1871
const XML_SCHEMAV_DOCUMENT_ELEMENT_MISSING = 1872
const XML_SCHEMAV_CVC_COMPLEX_TYPE_1 = 1873
const XML_SCHEMAV_CVC_AU = 1874
const XML_SCHEMAV_CVC_TYPE_1 = 1875
const XML_SCHEMAV_CVC_TYPE_2 = 1876
const XML_SCHEMAV_CVC_IDC = 1877
const XML_SCHEMAV_CVC_WILDCARD = 1878
const XML_SCHEMAV_MISC = 1879
const XML_XPTR_UNKNOWN_SCHEME = 1900
const XML_XPTR_CHILDSEQ_START = 1901
const XML_XPTR_EVAL_FAILED = 1902
const XML_XPTR_EXTRA_OBJECTS = 1903
const XML_C14N_CREATE_CTXT = 1950
const XML_C14N_REQUIRES_UTF8 = 1951
const XML_C14N_CREATE_STACK = 1952
const XML_C14N_INVALID_NODE = 1953
const XML_C14N_UNKNOW_NODE = 1954
const XML_C14N_RELATIVE_NAMESPACE = 1955
const XML_FTP_PASV_ANSWER = 2000
const XML_FTP_EPSV_ANSWER = 2001
const XML_FTP_ACCNT = 2002
const XML_FTP_URL_SYNTAX = 2003
const XML_HTTP_URL_SYNTAX = 2020
const XML_HTTP_USE_IP = 2021
const XML_HTTP_UNKNOWN_HOST = 2022
const XML_SCHEMAP_SRC_SIMPLE_TYPE_1 = 3000
const XML_SCHEMAP_SRC_SIMPLE_TYPE_2 = 3001
const XML_SCHEMAP_SRC_SIMPLE_TYPE_3 = 3002
const XML_SCHEMAP_SRC_SIMPLE_TYPE_4 = 3003
const XML_SCHEMAP_SRC_RESOLVE = 3004
const XML_SCHEMAP_SRC_RESTRICTION_BASE_OR_SIMPLETYPE = 3005
const XML_SCHEMAP_SRC_LIST_ITEMTYPE_OR_SIMPLETYPE = 3006
const XML_SCHEMAP_SRC_UNION_MEMBERTYPES_OR_SIMPLETYPES = 3007
const XML_SCHEMAP_ST_PROPS_CORRECT_1 = 3008
const XML_SCHEMAP_ST_PROPS_CORRECT_2 = 3009
const XML_SCHEMAP_ST_PROPS_CORRECT_3 = 3010
const XML_SCHEMAP_COS_ST_RESTRICTS_1_1 = 3011
const XML_SCHEMAP_COS_ST_RESTRICTS_1_2 = 3012
const XML_SCHEMAP_COS_ST_RESTRICTS_1_3_1 = 3013
const XML_SCHEMAP_COS_ST_RESTRICTS_1_3_2 = 3014
const XML_SCHEMAP_COS_ST_RESTRICTS_2_1 = 3015
const XML_SCHEMAP_COS_ST_RESTRICTS_2_3_1_1 = 3016
const XML_SCHEMAP_COS_ST_RESTRICTS_2_3_1_2 = 3017
const XML_SCHEMAP_COS_ST_RESTRICTS_2_3_2_1 = 3018
const XML_SCHEMAP_COS_ST_RESTRICTS_2_3_2_2 = 3019
const XML_SCHEMAP_COS_ST_RESTRICTS_2_3_2_3 = 3020
const XML_SCHEMAP_COS_ST_RESTRICTS_2_3_2_4 = 3021
const XML_SCHEMAP_COS_ST_RESTRICTS_2_3_2_5 = 3022
const XML_SCHEMAP_COS_ST_RESTRICTS_3_1 = 3023
const XML_SCHEMAP_COS_ST_RESTRICTS_3_3_1 = 3024
const XML_SCHEMAP_COS_ST_RESTRICTS_3_3_1_2 = 3025
const XML_SCHEMAP_COS_ST_RESTRICTS_3_3_2_2 = 3026
const XML_SCHEMAP_COS_ST_RESTRICTS_3_3_2_1 = 3027
const XML_SCHEMAP_COS_ST_RESTRICTS_3_3_2_3 = 3028
const XML_SCHEMAP_COS_ST_RESTRICTS_3_3_2_4 = 3029
const XML_SCHEMAP_COS_ST_RESTRICTS_3_3_2_5 = 3030
const XML_SCHEMAP_COS_ST_DERIVED_OK_2_1 = 3031
const XML_SCHEMAP_COS_ST_DERIVED_OK_2_2 = 3032
const XML_SCHEMAP_S4S_ELEM_NOT_ALLOWED = 3033
const XML_SCHEMAP_S4S_ELEM_MISSING = 3034
const XML_SCHEMAP_S4S_ATTR_NOT_ALLOWED = 3035
const XML_SCHEMAP_S4S_ATTR_MISSING = 3036
const XML_SCHEMAP_S4S_ATTR_INVALID_VALUE = 3037
const XML_SCHEMAP_SRC_ELEMENT_1 = 3038
const XML_SCHEMAP_SRC_ELEMENT_2_1 = 3039
const XML_SCHEMAP_SRC_ELEMENT_2_2 = 3040
const XML_SCHEMAP_SRC_ELEMENT_3 = 3041
const XML_SCHEMAP_P_PROPS_CORRECT_1 = 3042
const XML_SCHEMAP_P_PROPS_CORRECT_2_1 = 3043
const XML_SCHEMAP_P_PROPS_CORRECT_2_2 = 3044
const XML_SCHEMAP_E_PROPS_CORRECT_2 = 3045
const XML_SCHEMAP_E_PROPS_CORRECT_3 = 3046
const XML_SCHEMAP_E_PROPS_CORRECT_4 = 3047
const XML_SCHEMAP_E_PROPS_CORRECT_5 = 3048
const XML_SCHEMAP_E_PROPS_CORRECT_6 = 3049
const XML_SCHEMAP_SRC_INCLUDE = 3050
const XML_SCHEMAP_SRC_ATTRIBUTE_1 = 3051
const XML_SCHEMAP_SRC_ATTRIBUTE_2 = 3052
const XML_SCHEMAP_SRC_ATTRIBUTE_3_1 = 3053
const XML_SCHEMAP_SRC_ATTRIBUTE_3_2 = 3054
const XML_SCHEMAP_SRC_ATTRIBUTE_4 = 3055
const XML_SCHEMAP_NO_XMLNS = 3056
const XML_SCHEMAP_NO_XSI = 3057
const XML_SCHEMAP_COS_VALID_DEFAULT_1 = 3058
const XML_SCHEMAP_COS_VALID_DEFAULT_2_1 = 3059
const XML_SCHEMAP_COS_VALID_DEFAULT_2_2_1 = 3060
const XML_SCHEMAP_COS_VALID_DEFAULT_2_2_2 = 3061
const XML_SCHEMAP_CVC_SIMPLE_TYPE = 3062
const XML_SCHEMAP_COS_CT_EXTENDS_1_1 = 3063
const XML_SCHEMAP_SRC_IMPORT_1_1 = 3064
const XML_SCHEMAP_SRC_IMPORT_1_2 = 3065
const XML_SCHEMAP_SRC_IMPORT_2 = 3066
const XML_SCHEMAP_SRC_IMPORT_2_1 = 3067
const XML_SCHEMAP_SRC_IMPORT_2_2 = 3068
const XML_SCHEMAP_INTERNAL = 3069
const XML_SCHEMAP_NOT_DETERMINISTIC = 3070
const XML_SCHEMAP_SRC_ATTRIBUTE_GROUP_1 = 3071
const XML_SCHEMAP_SRC_ATTRIBUTE_GROUP_2 = 3072
const XML_SCHEMAP_SRC_ATTRIBUTE_GROUP_3 = 3073
const XML_SCHEMAP_MG_PROPS_CORRECT_1 = 3074
const XML_SCHEMAP_MG_PROPS_CORRECT_2 = 3075
const XML_SCHEMAP_SRC_CT_1 = 3076
const XML_SCHEMAP_DERIVATION_OK_RESTRICTION_2_1_3 = 3077
const XML_SCHEMAP_AU_PROPS_CORRECT_2 = 3078
const XML_SCHEMAP_A_PROPS_CORRECT_2 = 3079
const XML_SCHEMAP_C_PROPS_CORRECT = 3080
const XML_SCHEMAP_SRC_REDEFINE = 3081
const XML_SCHEMAP_SRC_IMPORT = 3082
const XML_SCHEMAP_WARN_SKIP_SCHEMA = 3083
const XML_SCHEMAP_WARN_UNLOCATED_SCHEMA = 3084
const XML_SCHEMAP_WARN_ATTR_REDECL_PROH = 3085
const XML_SCHEMAP_WARN_ATTR_POINTLESS_PROH = 3086
const XML_SCHEMAP_AG_PROPS_CORRECT = 3087
const XML_SCHEMAP_COS_CT_EXTENDS_1_2 = 3088
const XML_SCHEMAP_AU_PROPS_CORRECT = 3089
const XML_SCHEMAP_A_PROPS_CORRECT_3 = 3090
const XML_SCHEMAP_COS_ALL_LIMITED = 3091
const XML_SCHEMATRONV_ASSERT = 4000
const XML_SCHEMATRONV_REPORT = 4001
const XML_MODULE_OPEN = 4900
const XML_MODULE_CLOSE = 4901
const XML_CHECK_FOUND_ELEMENT = 5000
const XML_CHECK_FOUND_ATTRIBUTE = 5001
const XML_CHECK_FOUND_TEXT = 5002
const XML_CHECK_FOUND_CDATA = 5003
const XML_CHECK_FOUND_ENTITYREF = 5004
const XML_CHECK_FOUND_ENTITY = 5005
const XML_CHECK_FOUND_PI = 5006
const XML_CHECK_FOUND_COMMENT = 5007
const XML_CHECK_FOUND_DOCTYPE = 5008
const XML_CHECK_FOUND_FRAGMENT = 5009
const XML_CHECK_FOUND_NOTATION = 5010
const XML_CHECK_UNKNOWN_NODE = 5011
const XML_CHECK_ENTITY_TYPE = 5012
const XML_CHECK_NO_PARENT = 5013
const XML_CHECK_NO_DOC = 5014
const XML_CHECK_NO_NAME = 5015
const XML_CHECK_NO_ELEM = 5016
const XML_CHECK_WRONG_DOC = 5017
const XML_CHECK_NO_PREV = 5018
const XML_CHECK_WRONG_PREV = 5019
const XML_CHECK_NO_NEXT = 5020
const XML_CHECK_WRONG_NEXT = 5021
const XML_CHECK_NOT_DTD = 5022
const XML_CHECK_NOT_ATTR = 5023
const XML_CHECK_NOT_ATTR_DECL = 5024
const XML_CHECK_NOT_ELEM_DECL = 5025
const XML_CHECK_NOT_ENTITY_DECL = 5026
const XML_CHECK_NOT_NS_DECL = 5027
const XML_CHECK_NO_HREF = 5028
const XML_CHECK_WRONG_PARENT = 5029
const XML_CHECK_NS_SCOPE = 5030
const XML_CHECK_NS_ANCESTOR = 5031
const XML_CHECK_NOT_UTF8 = 5032
const XML_CHECK_NO_DICT = 5033
const XML_CHECK_NOT_NCNAME = 5034
const XML_CHECK_OUTSIDE_DICT = 5035
const XML_CHECK_WRONG_NAME = 5036
const XML_CHECK_NAME_NOT_NULL = 5037
const XML_I18N_NO_NAME = 6000
const XML_I18N_NO_HANDLER = 6001
const XML_I18N_EXCESS_HANDLER = 6002
const XML_I18N_CONV_FAILED = 6003
const XML_I18N_NO_OUTPUT = 6004
# end
@ctypedef xmlGenericErrorFunc Ptr{:Void}
@ctypedef xmlStructuredErrorFunc Ptr{:Void}
@c None xmlSetGenericErrorFunc (Ptr{:None},:xmlGenericErrorFunc) shlib
@c None initGenericErrorDefaultFunc (Ptr{:xmlGenericErrorFunc},) shlib
@c None xmlSetStructuredErrorFunc (Ptr{:None},:xmlStructuredErrorFunc) shlib
@c None xmlParserError (Ptr{:None},Ptr{:Uint8}) shlib
@c None xmlParserWarning (Ptr{:None},Ptr{:Uint8}) shlib
@c None xmlParserValidityError (Ptr{:None},Ptr{:Uint8}) shlib
@c None xmlParserValidityWarning (Ptr{:None},Ptr{:Uint8}) shlib
@c None xmlParserPrintFileInfo (:xmlParserInputPtr,) shlib
@c None xmlParserPrintFileContext (:xmlParserInputPtr,) shlib
@c xmlErrorPtr xmlGetLastError () shlib
@c None xmlResetLastError () shlib
@c xmlErrorPtr xmlCtxtGetLastError (Ptr{:None},) shlib
@c None xmlCtxtResetLastError (Ptr{:None},) shlib
@c None xmlResetError (:xmlErrorPtr,) shlib
@c Int32 xmlCopyError (:xmlErrorPtr,:xmlErrorPtr) shlib
@ctypedef xmlLink Void
@ctypedef xmlLinkPtr Ptr{:xmlLink}
@ctypedef xmlList Void
@ctypedef xmlListPtr Ptr{:xmlList}
@ctypedef xmlListDeallocator Ptr{:Void}
@ctypedef xmlListDataCompare Ptr{:Void}
@ctypedef xmlListWalker Ptr{:Void}
@c xmlListPtr xmlListCreate (:xmlListDeallocator,:xmlListDataCompare) shlib
@c None xmlListDelete (:xmlListPtr,) shlib
@c Ptr{:None} xmlListSearch (:xmlListPtr,Ptr{:None}) shlib
@c Ptr{:None} xmlListReverseSearch (:xmlListPtr,Ptr{:None}) shlib
@c Int32 xmlListInsert (:xmlListPtr,Ptr{:None}) shlib
@c Int32 xmlListAppend (:xmlListPtr,Ptr{:None}) shlib
@c Int32 xmlListRemoveFirst (:xmlListPtr,Ptr{:None}) shlib
@c Int32 xmlListRemoveLast (:xmlListPtr,Ptr{:None}) shlib
@c Int32 xmlListRemoveAll (:xmlListPtr,Ptr{:None}) shlib
@c None xmlListClear (:xmlListPtr,) shlib
@c Int32 xmlListEmpty (:xmlListPtr,) shlib
@c xmlLinkPtr xmlListFront (:xmlListPtr,) shlib
@c xmlLinkPtr xmlListEnd (:xmlListPtr,) shlib
@c Int32 xmlListSize (:xmlListPtr,) shlib
@c None xmlListPopFront (:xmlListPtr,) shlib
@c None xmlListPopBack (:xmlListPtr,) shlib
@c Int32 xmlListPushFront (:xmlListPtr,Ptr{:None}) shlib
@c Int32 xmlListPushBack (:xmlListPtr,Ptr{:None}) shlib
@c None xmlListReverse (:xmlListPtr,) shlib
@c None xmlListSort (:xmlListPtr,) shlib
@c None xmlListWalk (:xmlListPtr,:xmlListWalker,Ptr{:None}) shlib
@c None xmlListReverseWalk (:xmlListPtr,:xmlListWalker,Ptr{:None}) shlib
@c None xmlListMerge (:xmlListPtr,:xmlListPtr) shlib
@c xmlListPtr xmlListDup (:xmlListPtr,) shlib
@c Int32 xmlListCopy (:xmlListPtr,:xmlListPtr) shlib
@c Ptr{:None} xmlLinkGetData (:xmlLinkPtr,) shlib
@ctypedef xmlAutomata Void
@ctypedef xmlAutomataPtr Ptr{:xmlAutomata}
@ctypedef xmlAutomataState Void
@ctypedef xmlAutomataStatePtr Ptr{:xmlAutomataState}
@c xmlAutomataPtr xmlNewAutomata () shlib
@c None xmlFreeAutomata (:xmlAutomataPtr,) shlib
@c xmlAutomataStatePtr xmlAutomataGetInitState (:xmlAutomataPtr,) shlib
@c Int32 xmlAutomataSetFinalState (:xmlAutomataPtr,:xmlAutomataStatePtr) shlib
@c xmlAutomataStatePtr xmlAutomataNewState (:xmlAutomataPtr,) shlib
@c xmlAutomataStatePtr xmlAutomataNewTransition (:xmlAutomataPtr,:xmlAutomataStatePtr,:xmlAutomataStatePtr,Ptr{:xmlChar},Ptr{:None}) shlib
@c xmlAutomataStatePtr xmlAutomataNewTransition2 (:xmlAutomataPtr,:xmlAutomataStatePtr,:xmlAutomataStatePtr,Ptr{:xmlChar},Ptr{:xmlChar},Ptr{:None}) shlib
@c xmlAutomataStatePtr xmlAutomataNewNegTrans (:xmlAutomataPtr,:xmlAutomataStatePtr,:xmlAutomataStatePtr,Ptr{:xmlChar},Ptr{:xmlChar},Ptr{:None}) shlib
@c xmlAutomataStatePtr xmlAutomataNewCountTrans (:xmlAutomataPtr,:xmlAutomataStatePtr,:xmlAutomataStatePtr,Ptr{:xmlChar},:Int32,:Int32,Ptr{:None}) shlib
@c xmlAutomataStatePtr xmlAutomataNewCountTrans2 (:xmlAutomataPtr,:xmlAutomataStatePtr,:xmlAutomataStatePtr,Ptr{:xmlChar},Ptr{:xmlChar},:Int32,:Int32,Ptr{:None}) shlib
@c xmlAutomataStatePtr xmlAutomataNewOnceTrans (:xmlAutomataPtr,:xmlAutomataStatePtr,:xmlAutomataStatePtr,Ptr{:xmlChar},:Int32,:Int32,Ptr{:None}) shlib
@c xmlAutomataStatePtr xmlAutomataNewOnceTrans2 (:xmlAutomataPtr,:xmlAutomataStatePtr,:xmlAutomataStatePtr,Ptr{:xmlChar},Ptr{:xmlChar},:Int32,:Int32,Ptr{:None}) shlib
@c xmlAutomataStatePtr xmlAutomataNewAllTrans (:xmlAutomataPtr,:xmlAutomataStatePtr,:xmlAutomataStatePtr,:Int32) shlib
@c xmlAutomataStatePtr xmlAutomataNewEpsilon (:xmlAutomataPtr,:xmlAutomataStatePtr,:xmlAutomataStatePtr) shlib
@c xmlAutomataStatePtr xmlAutomataNewCountedTrans (:xmlAutomataPtr,:xmlAutomataStatePtr,:xmlAutomataStatePtr,:Int32) shlib
@c xmlAutomataStatePtr xmlAutomataNewCounterTrans (:xmlAutomataPtr,:xmlAutomataStatePtr,:xmlAutomataStatePtr,:Int32) shlib
@c Int32 xmlAutomataNewCounter (:xmlAutomataPtr,:Int32,:Int32) shlib
@c xmlRegexpPtr xmlAutomataCompile (:xmlAutomataPtr,) shlib
@c Int32 xmlAutomataIsDeterminist (:xmlAutomataPtr,) shlib
@ctypedef xmlValidState Void
@ctypedef xmlValidStatePtr Ptr{:xmlValidState}
@ctypedef xmlValidityErrorFunc Ptr{:Void}
@ctypedef xmlValidityWarningFunc Ptr{:Void}
@ctypedef xmlValidCtxt Void
@ctypedef xmlValidCtxtPtr Ptr{:xmlValidCtxt}
@ctypedef xmlNotationTable Void
@ctypedef xmlNotationTablePtr Ptr{:xmlNotationTable}
@ctypedef xmlElementTable Void
@ctypedef xmlElementTablePtr Ptr{:xmlElementTable}
@ctypedef xmlAttributeTable Void
@ctypedef xmlAttributeTablePtr Ptr{:xmlAttributeTable}
@ctypedef xmlIDTable Void
@ctypedef xmlIDTablePtr Ptr{:xmlIDTable}
@ctypedef xmlRefTable Void
@ctypedef xmlRefTablePtr Ptr{:xmlRefTable}
@c xmlNotationPtr xmlAddNotationDecl (:xmlValidCtxtPtr,:xmlDtdPtr,Ptr{:xmlChar},Ptr{:xmlChar},Ptr{:xmlChar}) shlib
@c xmlNotationTablePtr xmlCopyNotationTable (:xmlNotationTablePtr,) shlib
@c None xmlFreeNotationTable (:xmlNotationTablePtr,) shlib
@c None xmlDumpNotationDecl (:xmlBufferPtr,:xmlNotationPtr) shlib
@c None xmlDumpNotationTable (:xmlBufferPtr,:xmlNotationTablePtr) shlib
@c xmlElementContentPtr xmlNewElementContent (Ptr{:xmlChar},:xmlElementContentType) shlib
@c xmlElementContentPtr xmlCopyElementContent (:xmlElementContentPtr,) shlib
@c None xmlFreeElementContent (:xmlElementContentPtr,) shlib
@c xmlElementContentPtr xmlNewDocElementContent (:xmlDocPtr,Ptr{:xmlChar},:xmlElementContentType) shlib
@c xmlElementContentPtr xmlCopyDocElementContent (:xmlDocPtr,:xmlElementContentPtr) shlib
@c None xmlFreeDocElementContent (:xmlDocPtr,:xmlElementContentPtr) shlib
@c None xmlSnprintfElementContent (Ptr{:Uint8},:Int32,:xmlElementContentPtr,:Int32) shlib
@c None xmlSprintfElementContent (Ptr{:Uint8},:xmlElementContentPtr,:Int32) shlib
@c xmlElementPtr xmlAddElementDecl (:xmlValidCtxtPtr,:xmlDtdPtr,Ptr{:xmlChar},:xmlElementTypeVal,:xmlElementContentPtr) shlib
@c xmlElementTablePtr xmlCopyElementTable (:xmlElementTablePtr,) shlib
@c None xmlFreeElementTable (:xmlElementTablePtr,) shlib
@c None xmlDumpElementTable (:xmlBufferPtr,:xmlElementTablePtr) shlib
@c None xmlDumpElementDecl (:xmlBufferPtr,:xmlElementPtr) shlib
@c xmlEnumerationPtr xmlCreateEnumeration (Ptr{:xmlChar},) shlib
@c None xmlFreeEnumeration (:xmlEnumerationPtr,) shlib
@c xmlEnumerationPtr xmlCopyEnumeration (:xmlEnumerationPtr,) shlib
@c xmlAttributePtr xmlAddAttributeDecl (:xmlValidCtxtPtr,:xmlDtdPtr,Ptr{:xmlChar},Ptr{:xmlChar},Ptr{:xmlChar},:xmlAttributeType,:xmlAttributeDefault,Ptr{:xmlChar},:xmlEnumerationPtr) shlib
@c xmlAttributeTablePtr xmlCopyAttributeTable (:xmlAttributeTablePtr,) shlib
@c None xmlFreeAttributeTable (:xmlAttributeTablePtr,) shlib
@c None xmlDumpAttributeTable (:xmlBufferPtr,:xmlAttributeTablePtr) shlib
@c None xmlDumpAttributeDecl (:xmlBufferPtr,:xmlAttributePtr) shlib
@c xmlIDPtr xmlAddID (:xmlValidCtxtPtr,:xmlDocPtr,Ptr{:xmlChar},:xmlAttrPtr) shlib
@c None xmlFreeIDTable (:xmlIDTablePtr,) shlib
@c xmlAttrPtr xmlGetID (:xmlDocPtr,Ptr{:xmlChar}) shlib
@c Int32 xmlIsID (:xmlDocPtr,:xmlNodePtr,:xmlAttrPtr) shlib
@c Int32 xmlRemoveID (:xmlDocPtr,:xmlAttrPtr) shlib
@c xmlRefPtr xmlAddRef (:xmlValidCtxtPtr,:xmlDocPtr,Ptr{:xmlChar},:xmlAttrPtr) shlib
@c None xmlFreeRefTable (:xmlRefTablePtr,) shlib
@c Int32 xmlIsRef (:xmlDocPtr,:xmlNodePtr,:xmlAttrPtr) shlib
@c Int32 xmlRemoveRef (:xmlDocPtr,:xmlAttrPtr) shlib
@c xmlListPtr xmlGetRefs (:xmlDocPtr,Ptr{:xmlChar}) shlib
@c xmlValidCtxtPtr xmlNewValidCtxt () shlib
@c None xmlFreeValidCtxt (:xmlValidCtxtPtr,) shlib
@c Int32 xmlValidateRoot (:xmlValidCtxtPtr,:xmlDocPtr) shlib
@c Int32 xmlValidateElementDecl (:xmlValidCtxtPtr,:xmlDocPtr,:xmlElementPtr) shlib
@c Ptr{:xmlChar} xmlValidNormalizeAttributeValue (:xmlDocPtr,:xmlNodePtr,Ptr{:xmlChar},Ptr{:xmlChar}) shlib
@c Ptr{:xmlChar} xmlValidCtxtNormalizeAttributeValue (:xmlValidCtxtPtr,:xmlDocPtr,:xmlNodePtr,Ptr{:xmlChar},Ptr{:xmlChar}) shlib
@c Int32 xmlValidateAttributeDecl (:xmlValidCtxtPtr,:xmlDocPtr,:xmlAttributePtr) shlib
@c Int32 xmlValidateAttributeValue (:xmlAttributeType,Ptr{:xmlChar}) shlib
@c Int32 xmlValidateNotationDecl (:xmlValidCtxtPtr,:xmlDocPtr,:xmlNotationPtr) shlib
@c Int32 xmlValidateDtd (:xmlValidCtxtPtr,:xmlDocPtr,:xmlDtdPtr) shlib
@c Int32 xmlValidateDtdFinal (:xmlValidCtxtPtr,:xmlDocPtr) shlib
@c Int32 xmlValidateDocument (:xmlValidCtxtPtr,:xmlDocPtr) shlib
@c Int32 xmlValidateElement (:xmlValidCtxtPtr,:xmlDocPtr,:xmlNodePtr) shlib
@c Int32 xmlValidateOneElement (:xmlValidCtxtPtr,:xmlDocPtr,:xmlNodePtr) shlib
@c Int32 xmlValidateOneAttribute (:xmlValidCtxtPtr,:xmlDocPtr,:xmlNodePtr,:xmlAttrPtr,Ptr{:xmlChar}) shlib
@c Int32 xmlValidateOneNamespace (:xmlValidCtxtPtr,:xmlDocPtr,:xmlNodePtr,Ptr{:xmlChar},:xmlNsPtr,Ptr{:xmlChar}) shlib
@c Int32 xmlValidateDocumentFinal (:xmlValidCtxtPtr,:xmlDocPtr) shlib
@c Int32 xmlValidateNotationUse (:xmlValidCtxtPtr,:xmlDocPtr,Ptr{:xmlChar}) shlib
@c Int32 xmlIsMixedElement (:xmlDocPtr,Ptr{:xmlChar}) shlib
@c xmlAttributePtr xmlGetDtdAttrDesc (:xmlDtdPtr,Ptr{:xmlChar},Ptr{:xmlChar}) shlib
@c xmlAttributePtr xmlGetDtdQAttrDesc (:xmlDtdPtr,Ptr{:xmlChar},Ptr{:xmlChar},Ptr{:xmlChar}) shlib
@c xmlNotationPtr xmlGetDtdNotationDesc (:xmlDtdPtr,Ptr{:xmlChar}) shlib
@c xmlElementPtr xmlGetDtdQElementDesc (:xmlDtdPtr,Ptr{:xmlChar},Ptr{:xmlChar}) shlib
@c xmlElementPtr xmlGetDtdElementDesc (:xmlDtdPtr,Ptr{:xmlChar}) shlib
@c Int32 xmlValidGetPotentialChildren (Ptr{:xmlElementContent},Ptr{Ptr{:xmlChar}},Ptr{:Int32},:Int32) shlib
@c Int32 xmlValidGetValidElements (Ptr{:xmlNode},Ptr{:xmlNode},Ptr{Ptr{:xmlChar}},:Int32) shlib
@c Int32 xmlValidateNameValue (Ptr{:xmlChar},) shlib
@c Int32 xmlValidateNamesValue (Ptr{:xmlChar},) shlib
@c Int32 xmlValidateNmtokenValue (Ptr{:xmlChar},) shlib
@c Int32 xmlValidateNmtokensValue (Ptr{:xmlChar},) shlib
@c Int32 xmlValidBuildContentModel (:xmlValidCtxtPtr,:xmlElementPtr) shlib
@c Int32 xmlValidatePushElement (:xmlValidCtxtPtr,:xmlDocPtr,:xmlNodePtr,Ptr{:xmlChar}) shlib
@c Int32 xmlValidatePushCData (:xmlValidCtxtPtr,Ptr{:xmlChar},:Int32) shlib
@c Int32 xmlValidatePopElement (:xmlValidCtxtPtr,:xmlDocPtr,:xmlNodePtr,Ptr{:xmlChar}) shlib
# enum xmlEntityType
@ctypedef xmlEntityType Uint32
const XML_INTERNAL_GENERAL_ENTITY = 1
const XML_EXTERNAL_GENERAL_PARSED_ENTITY = 2
const XML_EXTERNAL_GENERAL_UNPARSED_ENTITY = 3
const XML_INTERNAL_PARAMETER_ENTITY = 4
const XML_EXTERNAL_PARAMETER_ENTITY = 5
const XML_INTERNAL_PREDEFINED_ENTITY = 6
# end
@ctypedef xmlEntitiesTable Void
@ctypedef xmlEntitiesTablePtr Ptr{:xmlEntitiesTable}
@c None xmlInitializePredefinedEntities () shlib
@c xmlEntityPtr xmlNewEntity (:xmlDocPtr,Ptr{:xmlChar},:Int32,Ptr{:xmlChar},Ptr{:xmlChar},Ptr{:xmlChar}) shlib
@c xmlEntityPtr xmlAddDocEntity (:xmlDocPtr,Ptr{:xmlChar},:Int32,Ptr{:xmlChar},Ptr{:xmlChar},Ptr{:xmlChar}) shlib
@c xmlEntityPtr xmlAddDtdEntity (:xmlDocPtr,Ptr{:xmlChar},:Int32,Ptr{:xmlChar},Ptr{:xmlChar},Ptr{:xmlChar}) shlib
@c xmlEntityPtr xmlGetPredefinedEntity (Ptr{:xmlChar},) shlib
@c xmlEntityPtr xmlGetDocEntity (:xmlDocPtr,Ptr{:xmlChar}) shlib
@c xmlEntityPtr xmlGetDtdEntity (:xmlDocPtr,Ptr{:xmlChar}) shlib
@c xmlEntityPtr xmlGetParameterEntity (:xmlDocPtr,Ptr{:xmlChar}) shlib
@c Ptr{:xmlChar} xmlEncodeEntities (:xmlDocPtr,Ptr{:xmlChar}) shlib
@c Ptr{:xmlChar} xmlEncodeEntitiesReentrant (:xmlDocPtr,Ptr{:xmlChar}) shlib
@c Ptr{:xmlChar} xmlEncodeSpecialChars (:xmlDocPtr,Ptr{:xmlChar}) shlib
@c xmlEntitiesTablePtr xmlCreateEntitiesTable () shlib
@c xmlEntitiesTablePtr xmlCopyEntitiesTable (:xmlEntitiesTablePtr,) shlib
@c None xmlFreeEntitiesTable (:xmlEntitiesTablePtr,) shlib
@c None xmlDumpEntitiesTable (:xmlBufferPtr,:xmlEntitiesTablePtr) shlib
@c None xmlDumpEntityDecl (:xmlBufferPtr,:xmlEntityPtr) shlib
@c None xmlCleanupPredefinedEntities () shlib
@ctypedef xmlParserInputDeallocate Ptr{:Void}
@ctypedef xmlParserNodeInfo Void
@ctypedef xmlParserNodeInfoPtr Ptr{:xmlParserNodeInfo}
@ctypedef xmlParserNodeInfoSeq Void
@ctypedef xmlParserNodeInfoSeqPtr Ptr{:xmlParserNodeInfoSeq}
# enum xmlParserInputState
@ctypedef xmlParserInputState Uint32
const XML_PARSER_EOF = -1
const XML_PARSER_START = 0
const XML_PARSER_MISC = 1
const XML_PARSER_PI = 2
const XML_PARSER_DTD = 3
const XML_PARSER_PROLOG = 4
const XML_PARSER_COMMENT = 5
const XML_PARSER_START_TAG = 6
const XML_PARSER_CONTENT = 7
const XML_PARSER_CDATA_SECTION = 8
const XML_PARSER_END_TAG = 9
const XML_PARSER_ENTITY_DECL = 10
const XML_PARSER_ENTITY_VALUE = 11
const XML_PARSER_ATTRIBUTE_VALUE = 12
const XML_PARSER_SYSTEM_LITERAL = 13
const XML_PARSER_EPILOG = 14
const XML_PARSER_IGNORE = 15
const XML_PARSER_PUBLIC_LITERAL = 16
# end
# enum xmlParserMode
@ctypedef xmlParserMode Uint32
const XML_PARSE_UNKNOWN = 0
const XML_PARSE_DOM = 1
const XML_PARSE_SAX = 2
const XML_PARSE_PUSH_DOM = 3
const XML_PARSE_PUSH_SAX = 4
const XML_PARSE_READER = 5
# end
@ctypedef resolveEntitySAXFunc Ptr{:Void}
@ctypedef internalSubsetSAXFunc Ptr{:Void}
@ctypedef externalSubsetSAXFunc Ptr{:Void}
@ctypedef getEntitySAXFunc Ptr{:Void}
@ctypedef getParameterEntitySAXFunc Ptr{:Void}
@ctypedef entityDeclSAXFunc Ptr{:Void}
@ctypedef notationDeclSAXFunc Ptr{:Void}
@ctypedef attributeDeclSAXFunc Ptr{:Void}
@ctypedef elementDeclSAXFunc Ptr{:Void}
@ctypedef unparsedEntityDeclSAXFunc Ptr{:Void}
@ctypedef setDocumentLocatorSAXFunc Ptr{:Void}
@ctypedef startDocumentSAXFunc Ptr{:Void}
@ctypedef endDocumentSAXFunc Ptr{:Void}
@ctypedef startElementSAXFunc Ptr{:Void}
@ctypedef endElementSAXFunc Ptr{:Void}
@ctypedef attributeSAXFunc Ptr{:Void}
@ctypedef referenceSAXFunc Ptr{:Void}
@ctypedef charactersSAXFunc Ptr{:Void}
@ctypedef ignorableWhitespaceSAXFunc Ptr{:Void}
@ctypedef processingInstructionSAXFunc Ptr{:Void}
@ctypedef commentSAXFunc Ptr{:Void}
@ctypedef cdataBlockSAXFunc Ptr{:Void}
@ctypedef warningSAXFunc Ptr{:Void}
@ctypedef errorSAXFunc Ptr{:Void}
@ctypedef fatalErrorSAXFunc Ptr{:Void}
@ctypedef isStandaloneSAXFunc Ptr{:Void}
@ctypedef hasInternalSubsetSAXFunc Ptr{:Void}
@ctypedef hasExternalSubsetSAXFunc Ptr{:Void}
@ctypedef startElementNsSAX2Func Ptr{:Void}
@ctypedef endElementNsSAX2Func Ptr{:Void}
@ctypedef xmlSAXHandlerV1 Void
@ctypedef xmlSAXHandlerV1Ptr Ptr{:xmlSAXHandlerV1}
@ctypedef xmlExternalEntityLoader Ptr{:Void}
# enum xmlCharEncoding
@ctypedef xmlCharEncoding Uint32
const XML_CHAR_ENCODING_ERROR = -1
const XML_CHAR_ENCODING_NONE = 0
const XML_CHAR_ENCODING_UTF8 = 1
const XML_CHAR_ENCODING_UTF16LE = 2
const XML_CHAR_ENCODING_UTF16BE = 3
const XML_CHAR_ENCODING_UCS4LE = 4
const XML_CHAR_ENCODING_UCS4BE = 5
const XML_CHAR_ENCODING_EBCDIC = 6
const XML_CHAR_ENCODING_UCS4_2143 = 7
const XML_CHAR_ENCODING_UCS4_3412 = 8
const XML_CHAR_ENCODING_UCS2 = 9
const XML_CHAR_ENCODING_8859_1 = 10
const XML_CHAR_ENCODING_8859_2 = 11
const XML_CHAR_ENCODING_8859_3 = 12
const XML_CHAR_ENCODING_8859_4 = 13
const XML_CHAR_ENCODING_8859_5 = 14
const XML_CHAR_ENCODING_8859_6 = 15
const XML_CHAR_ENCODING_8859_7 = 16
const XML_CHAR_ENCODING_8859_8 = 17
const XML_CHAR_ENCODING_8859_9 = 18
const XML_CHAR_ENCODING_2022_JP = 19
const XML_CHAR_ENCODING_SHIFT_JIS = 20
const XML_CHAR_ENCODING_EUC_JP = 21
const XML_CHAR_ENCODING_ASCII = 22
# end
@ctypedef xmlCharEncodingInputFunc Ptr{:Void}
@ctypedef xmlCharEncodingOutputFunc Ptr{:Void}
@ctypedef xmlCharEncodingHandler Void
@ctypedef xmlCharEncodingHandlerPtr Ptr{:xmlCharEncodingHandler}
@c None xmlInitCharEncodingHandlers () shlib
@c None xmlCleanupCharEncodingHandlers () shlib
@c None xmlRegisterCharEncodingHandler (:xmlCharEncodingHandlerPtr,) shlib
@c xmlCharEncodingHandlerPtr xmlGetCharEncodingHandler (:xmlCharEncoding,) shlib
@c xmlCharEncodingHandlerPtr xmlFindCharEncodingHandler (Ptr{:Uint8},) shlib
@c xmlCharEncodingHandlerPtr xmlNewCharEncodingHandler (Ptr{:Uint8},:xmlCharEncodingInputFunc,:xmlCharEncodingOutputFunc) shlib
@c Int32 xmlAddEncodingAlias (Ptr{:Uint8},Ptr{:Uint8}) shlib
@c Int32 xmlDelEncodingAlias (Ptr{:Uint8},) shlib
@c Ptr{:Uint8} xmlGetEncodingAlias (Ptr{:Uint8},) shlib
@c None xmlCleanupEncodingAliases () shlib
@c xmlCharEncoding xmlParseCharEncoding (Ptr{:Uint8},) shlib
@c Ptr{:Uint8} xmlGetCharEncodingName (:xmlCharEncoding,) shlib
@c xmlCharEncoding xmlDetectCharEncoding (Ptr{:Uint8},:Int32) shlib
@c Int32 xmlCharEncOutFunc (Ptr{:xmlCharEncodingHandler},:xmlBufferPtr,:xmlBufferPtr) shlib
@c Int32 xmlCharEncInFunc (Ptr{:xmlCharEncodingHandler},:xmlBufferPtr,:xmlBufferPtr) shlib
@c Int32 xmlCharEncFirstLine (Ptr{:xmlCharEncodingHandler},:xmlBufferPtr,:xmlBufferPtr) shlib
@c Int32 xmlCharEncCloseFunc (Ptr{:xmlCharEncodingHandler},) shlib
@c Int32 UTF8Toisolat1 (Ptr{:Uint8},Ptr{:Int32},Ptr{:Uint8},Ptr{:Int32}) shlib
@c Int32 isolat1ToUTF8 (Ptr{:Uint8},Ptr{:Int32},Ptr{:Uint8},Ptr{:Int32}) shlib
@ctypedef xmlInputMatchCallback Ptr{:Void}
@ctypedef xmlInputOpenCallback Ptr{:Void}
@ctypedef xmlInputReadCallback Ptr{:Void}
@ctypedef xmlInputCloseCallback Ptr{:Void}
@ctypedef xmlOutputMatchCallback Ptr{:Void}
@ctypedef xmlOutputOpenCallback Ptr{:Void}
@ctypedef xmlOutputWriteCallback Ptr{:Void}
@ctypedef xmlOutputCloseCallback Ptr{:Void}
@c None xmlCleanupInputCallbacks () shlib
@c Int32 xmlPopInputCallbacks () shlib
@c None xmlRegisterDefaultInputCallbacks () shlib
@c xmlParserInputBufferPtr xmlAllocParserInputBuffer (:xmlCharEncoding,) shlib
@c xmlParserInputBufferPtr xmlParserInputBufferCreateFilename (Ptr{:Uint8},:xmlCharEncoding) shlib
@c xmlParserInputBufferPtr xmlParserInputBufferCreateFile (Ptr{:FILE},:xmlCharEncoding) shlib
@c xmlParserInputBufferPtr xmlParserInputBufferCreateFd (:Int32,:xmlCharEncoding) shlib
@c xmlParserInputBufferPtr xmlParserInputBufferCreateMem (Ptr{:Uint8},:Int32,:xmlCharEncoding) shlib
@c xmlParserInputBufferPtr xmlParserInputBufferCreateStatic (Ptr{:Uint8},:Int32,:xmlCharEncoding) shlib
@c xmlParserInputBufferPtr xmlParserInputBufferCreateIO (:xmlInputReadCallback,:xmlInputCloseCallback,Ptr{:None},:xmlCharEncoding) shlib
@c Int32 xmlParserInputBufferRead (:xmlParserInputBufferPtr,:Int32) shlib
@c Int32 xmlParserInputBufferGrow (:xmlParserInputBufferPtr,:Int32) shlib
@c Int32 xmlParserInputBufferPush (:xmlParserInputBufferPtr,:Int32,Ptr{:Uint8}) shlib
@c None xmlFreeParserInputBuffer (:xmlParserInputBufferPtr,) shlib
@c Ptr{:Uint8} xmlParserGetDirectory (Ptr{:Uint8},) shlib
@c Int32 xmlRegisterInputCallbacks (:xmlInputMatchCallback,:xmlInputOpenCallback,:xmlInputReadCallback,:xmlInputCloseCallback) shlib
@c xmlParserInputBufferPtr __xmlParserInputBufferCreateFilename (Ptr{:Uint8},:xmlCharEncoding) shlib
@c None xmlCleanupOutputCallbacks () shlib
@c None xmlRegisterDefaultOutputCallbacks () shlib
@c xmlOutputBufferPtr xmlAllocOutputBuffer (:xmlCharEncodingHandlerPtr,) shlib
@c xmlOutputBufferPtr xmlOutputBufferCreateFilename (Ptr{:Uint8},:xmlCharEncodingHandlerPtr,:Int32) shlib
@c xmlOutputBufferPtr xmlOutputBufferCreateFile (Ptr{:FILE},:xmlCharEncodingHandlerPtr) shlib
@c xmlOutputBufferPtr xmlOutputBufferCreateBuffer (:xmlBufferPtr,:xmlCharEncodingHandlerPtr) shlib
@c xmlOutputBufferPtr xmlOutputBufferCreateFd (:Int32,:xmlCharEncodingHandlerPtr) shlib
@c xmlOutputBufferPtr xmlOutputBufferCreateIO (:xmlOutputWriteCallback,:xmlOutputCloseCallback,Ptr{:None},:xmlCharEncodingHandlerPtr) shlib
@c Int32 xmlOutputBufferWrite (:xmlOutputBufferPtr,:Int32,Ptr{:Uint8}) shlib
@c Int32 xmlOutputBufferWriteString (:xmlOutputBufferPtr,Ptr{:Uint8}) shlib
@c Int32 xmlOutputBufferWriteEscape (:xmlOutputBufferPtr,Ptr{:xmlChar},:xmlCharEncodingOutputFunc) shlib
@c Int32 xmlOutputBufferFlush (:xmlOutputBufferPtr,) shlib
@c Int32 xmlOutputBufferClose (:xmlOutputBufferPtr,) shlib
@c Int32 xmlRegisterOutputCallbacks (:xmlOutputMatchCallback,:xmlOutputOpenCallback,:xmlOutputWriteCallback,:xmlOutputCloseCallback) shlib
@c xmlOutputBufferPtr __xmlOutputBufferCreateFilename (Ptr{:Uint8},:xmlCharEncodingHandlerPtr,:Int32) shlib
@c None xmlRegisterHTTPPostCallbacks () shlib
@c xmlParserInputPtr xmlCheckHTTPInput (:xmlParserCtxtPtr,:xmlParserInputPtr) shlib
@c xmlParserInputPtr xmlNoNetExternalEntityLoader (Ptr{:Uint8},Ptr{:Uint8},:xmlParserCtxtPtr) shlib
@c Ptr{:xmlChar} xmlNormalizeWindowsPath (Ptr{:xmlChar},) shlib
@c Int32 xmlCheckFilename (Ptr{:Uint8},) shlib
@c Int32 xmlFileMatch (Ptr{:Uint8},) shlib
@c Ptr{:None} xmlFileOpen (Ptr{:Uint8},) shlib
@c Int32 xmlFileRead (Ptr{:None},Ptr{:Uint8},:Int32) shlib
@c Int32 xmlFileClose (Ptr{:None},) shlib
@c Int32 xmlIOHTTPMatch (Ptr{:Uint8},) shlib
@c Ptr{:None} xmlIOHTTPOpen (Ptr{:Uint8},) shlib
@c Ptr{:None} xmlIOHTTPOpenW (Ptr{:Uint8},:Int32) shlib
@c Int32 xmlIOHTTPRead (Ptr{:None},Ptr{:Uint8},:Int32) shlib
@c Int32 xmlIOHTTPClose (Ptr{:None},) shlib
@c Int32 xmlIOFTPMatch (Ptr{:Uint8},) shlib
@c Ptr{:None} xmlIOFTPOpen (Ptr{:Uint8},) shlib
@c Int32 xmlIOFTPRead (Ptr{:None},Ptr{:Uint8},:Int32) shlib
@c Int32 xmlIOFTPClose (Ptr{:None},) shlib
@c None xmlInitParser () shlib
@c None xmlCleanupParser () shlib
@c Int32 xmlParserInputRead (:xmlParserInputPtr,:Int32) shlib
@c Int32 xmlParserInputGrow (:xmlParserInputPtr,:Int32) shlib
@c xmlDocPtr xmlParseDoc (Ptr{:xmlChar},) shlib
@c xmlDocPtr xmlParseFile (Ptr{:Uint8},) shlib
@c xmlDocPtr xmlParseMemory (Ptr{:Uint8},:Int32) shlib
@c Int32 xmlSubstituteEntitiesDefault (:Int32,) shlib
@c Int32 xmlKeepBlanksDefault (:Int32,) shlib
@c None xmlStopParser (:xmlParserCtxtPtr,) shlib
@c Int32 xmlPedanticParserDefault (:Int32,) shlib
@c Int32 xmlLineNumbersDefault (:Int32,) shlib
@c xmlDocPtr xmlRecoverDoc (Ptr{:xmlChar},) shlib
@c xmlDocPtr xmlRecoverMemory (Ptr{:Uint8},:Int32) shlib
@c xmlDocPtr xmlRecoverFile (Ptr{:Uint8},) shlib
@c Int32 xmlParseDocument (:xmlParserCtxtPtr,) shlib
@c Int32 xmlParseExtParsedEnt (:xmlParserCtxtPtr,) shlib
@c Int32 xmlSAXUserParseFile (:xmlSAXHandlerPtr,Ptr{:None},Ptr{:Uint8}) shlib
@c Int32 xmlSAXUserParseMemory (:xmlSAXHandlerPtr,Ptr{:None},Ptr{:Uint8},:Int32) shlib
@c xmlDocPtr xmlSAXParseDoc (:xmlSAXHandlerPtr,Ptr{:xmlChar},:Int32) shlib
@c xmlDocPtr xmlSAXParseMemory (:xmlSAXHandlerPtr,Ptr{:Uint8},:Int32,:Int32) shlib
@c xmlDocPtr xmlSAXParseMemoryWithData (:xmlSAXHandlerPtr,Ptr{:Uint8},:Int32,:Int32,Ptr{:None}) shlib
@c xmlDocPtr xmlSAXParseFile (:xmlSAXHandlerPtr,Ptr{:Uint8},:Int32) shlib
@c xmlDocPtr xmlSAXParseFileWithData (:xmlSAXHandlerPtr,Ptr{:Uint8},:Int32,Ptr{:None}) shlib
@c xmlDocPtr xmlSAXParseEntity (:xmlSAXHandlerPtr,Ptr{:Uint8}) shlib
@c xmlDocPtr xmlParseEntity (Ptr{:Uint8},) shlib
@c xmlDtdPtr xmlSAXParseDTD (:xmlSAXHandlerPtr,Ptr{:xmlChar},Ptr{:xmlChar}) shlib
@c xmlDtdPtr xmlParseDTD (Ptr{:xmlChar},Ptr{:xmlChar}) shlib
@c xmlDtdPtr xmlIOParseDTD (:xmlSAXHandlerPtr,:xmlParserInputBufferPtr,:xmlCharEncoding) shlib
@c Int32 xmlParseBalancedChunkMemory (:xmlDocPtr,:xmlSAXHandlerPtr,Ptr{:None},:Int32,Ptr{:xmlChar},Ptr{:xmlNodePtr}) shlib
@c xmlParserErrors xmlParseInNodeContext (:xmlNodePtr,Ptr{:Uint8},:Int32,:Int32,Ptr{:xmlNodePtr}) shlib
@c Int32 xmlParseBalancedChunkMemoryRecover (:xmlDocPtr,:xmlSAXHandlerPtr,Ptr{:None},:Int32,Ptr{:xmlChar},Ptr{:xmlNodePtr},:Int32) shlib
@c Int32 xmlParseExternalEntity (:xmlDocPtr,:xmlSAXHandlerPtr,Ptr{:None},:Int32,Ptr{:xmlChar},Ptr{:xmlChar},Ptr{:xmlNodePtr}) shlib
@c Int32 xmlParseCtxtExternalEntity (:xmlParserCtxtPtr,Ptr{:xmlChar},Ptr{:xmlChar},Ptr{:xmlNodePtr}) shlib
@c xmlParserCtxtPtr xmlNewParserCtxt () shlib
@c Int32 xmlInitParserCtxt (:xmlParserCtxtPtr,) shlib
@c None xmlClearParserCtxt (:xmlParserCtxtPtr,) shlib
@c None xmlFreeParserCtxt (:xmlParserCtxtPtr,) shlib
@c None xmlSetupParserForBuffer (:xmlParserCtxtPtr,Ptr{:xmlChar},Ptr{:Uint8}) shlib
@c xmlParserCtxtPtr xmlCreateDocParserCtxt (Ptr{:xmlChar},) shlib
@c Int32 xmlGetFeaturesList (Ptr{:Int32},Ptr{Ptr{:Uint8}}) shlib
@c Int32 xmlGetFeature (:xmlParserCtxtPtr,Ptr{:Uint8},Ptr{:None}) shlib
@c Int32 xmlSetFeature (:xmlParserCtxtPtr,Ptr{:Uint8},Ptr{:None}) shlib
@c xmlParserCtxtPtr xmlCreatePushParserCtxt (:xmlSAXHandlerPtr,Ptr{:None},Ptr{:Uint8},:Int32,Ptr{:Uint8}) shlib
@c Int32 xmlParseChunk (:xmlParserCtxtPtr,Ptr{:Uint8},:Int32,:Int32) shlib
@c xmlParserCtxtPtr xmlCreateIOParserCtxt (:xmlSAXHandlerPtr,Ptr{:None},:xmlInputReadCallback,:xmlInputCloseCallback,Ptr{:None},:xmlCharEncoding) shlib
@c xmlParserInputPtr xmlNewIOInputStream (:xmlParserCtxtPtr,:xmlParserInputBufferPtr,:xmlCharEncoding) shlib
@c Ptr{:xmlParserNodeInfo} xmlParserFindNodeInfo (:xmlParserCtxtPtr,:xmlNodePtr) shlib
@c None xmlInitNodeInfoSeq (:xmlParserNodeInfoSeqPtr,) shlib
@c None xmlClearNodeInfoSeq (:xmlParserNodeInfoSeqPtr,) shlib
@c Uint64 xmlParserFindNodeInfoIndex (:xmlParserNodeInfoSeqPtr,:xmlNodePtr) shlib
@c None xmlParserAddNodeInfo (:xmlParserCtxtPtr,:xmlParserNodeInfoPtr) shlib
@c None xmlSetExternalEntityLoader (:xmlExternalEntityLoader,) shlib
@c xmlExternalEntityLoader xmlGetExternalEntityLoader () shlib
@c xmlParserInputPtr xmlLoadExternalEntity (Ptr{:Uint8},Ptr{:Uint8},:xmlParserCtxtPtr) shlib
@c Int64 xmlByteConsumed (:xmlParserCtxtPtr,) shlib
# enum xmlParserOption
@ctypedef xmlParserOption Uint32
const XML_PARSE_RECOVER = 1
const XML_PARSE_NOENT = 2
const XML_PARSE_DTDLOAD = 4
const XML_PARSE_DTDATTR = 8
const XML_PARSE_DTDVALID = 16
const XML_PARSE_NOERROR = 32
const XML_PARSE_NOWARNING = 64
const XML_PARSE_PEDANTIC = 128
const XML_PARSE_NOBLANKS = 256
const XML_PARSE_SAX1 = 512
const XML_PARSE_XINCLUDE = 1024
const XML_PARSE_NONET = 2048
const XML_PARSE_NODICT = 4096
const XML_PARSE_NSCLEAN = 8192
const XML_PARSE_NOCDATA = 16384
const XML_PARSE_NOXINCNODE = 32768
const XML_PARSE_COMPACT = 65536
const XML_PARSE_OLD10 = 131072
const XML_PARSE_NOBASEFIX = 262144
const XML_PARSE_HUGE = 524288
const XML_PARSE_OLDSAX = 1048576
# end
@c None xmlCtxtReset (:xmlParserCtxtPtr,) shlib
@c Int32 xmlCtxtResetPush (:xmlParserCtxtPtr,Ptr{:Uint8},:Int32,Ptr{:Uint8},Ptr{:Uint8}) shlib
@c Int32 xmlCtxtUseOptions (:xmlParserCtxtPtr,:Int32) shlib
@c xmlDocPtr xmlReadDoc (Ptr{:xmlChar},Ptr{:Uint8},Ptr{:Uint8},:Int32) shlib
@c xmlDocPtr xmlReadFile (Ptr{:Uint8},Ptr{:Uint8},:Int32) shlib
@c xmlDocPtr xmlReadMemory (Ptr{:Uint8},:Int32,Ptr{:Uint8},Ptr{:Uint8},:Int32) shlib
@c xmlDocPtr xmlReadFd (:Int32,Ptr{:Uint8},Ptr{:Uint8},:Int32) shlib
@c xmlDocPtr xmlReadIO (:xmlInputReadCallback,:xmlInputCloseCallback,Ptr{:None},Ptr{:Uint8},Ptr{:Uint8},:Int32) shlib
@c xmlDocPtr xmlCtxtReadDoc (:xmlParserCtxtPtr,Ptr{:xmlChar},Ptr{:Uint8},Ptr{:Uint8},:Int32) shlib
@c xmlDocPtr xmlCtxtReadFile (:xmlParserCtxtPtr,Ptr{:Uint8},Ptr{:Uint8},:Int32) shlib
@c xmlDocPtr xmlCtxtReadMemory (:xmlParserCtxtPtr,Ptr{:Uint8},:Int32,Ptr{:Uint8},Ptr{:Uint8},:Int32) shlib
@c xmlDocPtr xmlCtxtReadFd (:xmlParserCtxtPtr,:Int32,Ptr{:Uint8},Ptr{:Uint8},:Int32) shlib
@c xmlDocPtr xmlCtxtReadIO (:xmlParserCtxtPtr,:xmlInputReadCallback,:xmlInputCloseCallback,Ptr{:None},Ptr{:Uint8},Ptr{:Uint8},:Int32) shlib
# enum xmlFeature
@ctypedef xmlFeature Uint32
const XML_WITH_THREAD = 1
const XML_WITH_TREE = 2
const XML_WITH_OUTPUT = 3
const XML_WITH_PUSH = 4
const XML_WITH_READER = 5
const XML_WITH_PATTERN = 6
const XML_WITH_WRITER = 7
const XML_WITH_SAX1 = 8
const XML_WITH_FTP = 9
const XML_WITH_HTTP = 10
const XML_WITH_VALID = 11
const XML_WITH_HTML = 12
const XML_WITH_LEGACY = 13
const XML_WITH_C14N = 14
const XML_WITH_CATALOG = 15
const XML_WITH_XPATH = 16
const XML_WITH_XPTR = 17
const XML_WITH_XINCLUDE = 18
const XML_WITH_ICONV = 19
const XML_WITH_ISO8859X = 20
const XML_WITH_UNICODE = 21
const XML_WITH_REGEXP = 22
const XML_WITH_AUTOMATA = 23
const XML_WITH_EXPR = 24
const XML_WITH_SCHEMAS = 25
const XML_WITH_SCHEMATRON = 26
const XML_WITH_MODULES = 27
const XML_WITH_DEBUG = 28
const XML_WITH_DEBUG_MEM = 29
const XML_WITH_DEBUG_RUN = 30
const XML_WITH_ZLIB = 31
const XML_WITH_ICU = 32
const XML_WITH_NONE = 99999
# end
@c Int32 xmlHasFeature (:xmlFeature,) shlib
@ctypedef u_char __u_char
@ctypedef u_short __u_short
@ctypedef u_int __u_int
@ctypedef u_long __u_long
@ctypedef quad_t __quad_t
@ctypedef u_quad_t __u_quad_t
@ctypedef fsid_t __fsid_t
@ctypedef loff_t __loff_t
@ctypedef ino_t __ino_t
@ctypedef dev_t __dev_t
@ctypedef gid_t __gid_t
@ctypedef mode_t __mode_t
@ctypedef nlink_t __nlink_t
@ctypedef uid_t __uid_t
@ctypedef pid_t __pid_t
@ctypedef id_t __id_t
@ctypedef daddr_t __daddr_t
@ctypedef caddr_t __caddr_t
@ctypedef key_t __key_t
@ctypedef clock_t __clock_t
@ctypedef time_t __time_t
@ctypedef clockid_t __clockid_t
@ctypedef timer_t __timer_t
@ctypedef ulong Uint64
@ctypedef ushort Uint16
@ctypedef uint Uint32
@ctypedef int8_t Uint8
@ctypedef int16_t Int16
@ctypedef int32_t Int32
@ctypedef int64_t Int64
@ctypedef u_int8_t Uint8
@ctypedef u_int16_t Uint16
@ctypedef u_int32_t Uint32
@ctypedef u_int64_t Uint64
@ctypedef register_t Int64
@ctypedef __sig_atomic_t Int32
@ctypedef __sigset_t Void
@ctypedef sigset_t __sigset_t
@ctypedef suseconds_t __suseconds_t
@ctypedef __fd_mask Int64
@ctypedef fd_set Void
@ctypedef fd_mask __fd_mask
@c Int32 select (:Int32,Ptr{:fd_set},Ptr{:fd_set},Ptr{:fd_set},Ptr{:Void}) shlib
@c Int32 pselect (:Int32,Ptr{:fd_set},Ptr{:fd_set},Ptr{:fd_set},Ptr{:Void},Ptr{:__sigset_t}) shlib
@c Uint32 gnu_dev_major (:Uint64,) shlib
@c Uint32 gnu_dev_minor (:Uint64,) shlib
@c Uint64 gnu_dev_makedev (:Uint32,:Uint32) shlib
@ctypedef blksize_t __blksize_t
@ctypedef blkcnt_t __blkcnt_t
@ctypedef fsblkcnt_t __fsblkcnt_t
@ctypedef fsfilcnt_t __fsfilcnt_t
@ctypedef pthread_t Uint64
@ctypedef pthread_attr_t Void
@ctypedef __pthread_list_t Void
@ctypedef pthread_mutex_t Void
@ctypedef pthread_mutexattr_t Void
@ctypedef pthread_cond_t Void
@ctypedef pthread_condattr_t Void
@ctypedef pthread_key_t Uint32
@ctypedef pthread_once_t Int32
@ctypedef pthread_rwlock_t Void
@ctypedef pthread_rwlockattr_t Void
@ctypedef pthread_spinlock_t Int32
@ctypedef pthread_barrier_t Void
@ctypedef pthread_barrierattr_t Void
@ctypedef xlinkHRef Ptr{:xmlChar}
@ctypedef xlinkRole Ptr{:xmlChar}
@ctypedef xlinkTitle Ptr{:xmlChar}
# enum xlinkType
@ctypedef xlinkType Uint32
const XLINK_TYPE_NONE = 0
const XLINK_TYPE_SIMPLE = 1
const XLINK_TYPE_EXTENDED = 2
const XLINK_TYPE_EXTENDED_SET = 3
# end
# enum xlinkShow
@ctypedef xlinkShow Uint32
const XLINK_SHOW_NONE = 0
const XLINK_SHOW_NEW = 1
const XLINK_SHOW_EMBED = 2
const XLINK_SHOW_REPLACE = 3
# end
# enum xlinkActuate
@ctypedef xlinkActuate Uint32
const XLINK_ACTUATE_NONE = 0
const XLINK_ACTUATE_AUTO = 1
const XLINK_ACTUATE_ONREQUEST = 2
# end
@ctypedef xlinkNodeDetectFunc Ptr{:Void}
@ctypedef xlinkSimpleLinkFunk Ptr{:Void}
@ctypedef xlinkExtendedLinkFunk Ptr{:Void}
@ctypedef xlinkExtendedLinkSetFunk Ptr{:Void}
@ctypedef xlinkHandler Void
@ctypedef xlinkHandlerPtr Ptr{:xlinkHandler}
@c xlinkNodeDetectFunc xlinkGetDefaultDetect () shlib
@c None xlinkSetDefaultDetect (:xlinkNodeDetectFunc,) shlib
@c xlinkHandlerPtr xlinkGetDefaultHandler () shlib
@c None xlinkSetDefaultHandler (:xlinkHandlerPtr,) shlib
@c xlinkType xlinkIsLink (:xmlDocPtr,:xmlNodePtr) shlib
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
@c None xmlInitGlobals () shlib
@c None xmlCleanupGlobals () shlib
@ctypedef xmlParserInputBufferCreateFilenameFunc Ptr{:Void}
@ctypedef xmlOutputBufferCreateFilenameFunc Ptr{:Void}
@c xmlParserInputBufferCreateFilenameFunc xmlParserInputBufferCreateFilenameDefault (:xmlParserInputBufferCreateFilenameFunc,) shlib
@c xmlOutputBufferCreateFilenameFunc xmlOutputBufferCreateFilenameDefault (:xmlOutputBufferCreateFilenameFunc,) shlib
@ctypedef xmlRegisterNodeFunc Ptr{:Void}
@ctypedef xmlDeregisterNodeFunc Ptr{:Void}
@ctypedef xmlGlobalState Void
@ctypedef xmlGlobalStatePtr Ptr{:xmlGlobalState}
@c None xmlInitializeGlobalState (:xmlGlobalStatePtr,) shlib
@c None xmlThrDefSetGenericErrorFunc (Ptr{:None},:xmlGenericErrorFunc) shlib
@c None xmlThrDefSetStructuredErrorFunc (Ptr{:None},:xmlStructuredErrorFunc) shlib
@c xmlRegisterNodeFunc xmlRegisterNodeDefault (:xmlRegisterNodeFunc,) shlib
@c xmlRegisterNodeFunc xmlThrDefRegisterNodeDefault (:xmlRegisterNodeFunc,) shlib
@c xmlDeregisterNodeFunc xmlDeregisterNodeDefault (:xmlDeregisterNodeFunc,) shlib
@c xmlDeregisterNodeFunc xmlThrDefDeregisterNodeDefault (:xmlDeregisterNodeFunc,) shlib
@c xmlOutputBufferCreateFilenameFunc xmlThrDefOutputBufferCreateFilenameDefault (:xmlOutputBufferCreateFilenameFunc,) shlib
@c xmlParserInputBufferCreateFilenameFunc xmlThrDefParserInputBufferCreateFilenameDefault (:xmlParserInputBufferCreateFilenameFunc,) shlib
@c Ptr{:xmlSAXHandlerV1} __docbDefaultSAXHandler () shlib
@c Ptr{:xmlSAXHandlerV1} __htmlDefaultSAXHandler () shlib
@c Ptr{:xmlError} __xmlLastError () shlib
@c Ptr{:Int32} __oldXMLWDcompatibility () shlib
@c Ptr{:xmlBufferAllocationScheme} __xmlBufferAllocScheme () shlib
@c xmlBufferAllocationScheme xmlThrDefBufferAllocScheme (:xmlBufferAllocationScheme,) shlib
@c Ptr{:Int32} __xmlDefaultBufferSize () shlib
@c Int32 xmlThrDefDefaultBufferSize (:Int32,) shlib
@c Ptr{:xmlSAXHandlerV1} __xmlDefaultSAXHandler () shlib
@c Ptr{:xmlSAXLocator} __xmlDefaultSAXLocator () shlib
@c Ptr{:Int32} __xmlDoValidityCheckingDefaultValue () shlib
@c Int32 xmlThrDefDoValidityCheckingDefaultValue (:Int32,) shlib
@c Ptr{:xmlGenericErrorFunc} __xmlGenericError () shlib
@c Ptr{:xmlStructuredErrorFunc} __xmlStructuredError () shlib
@c Ptr{Ptr{:None}} __xmlGenericErrorContext () shlib
@c Ptr{Ptr{:None}} __xmlStructuredErrorContext () shlib
@c Ptr{:Int32} __xmlGetWarningsDefaultValue () shlib
@c Int32 xmlThrDefGetWarningsDefaultValue (:Int32,) shlib
@c Ptr{:Int32} __xmlIndentTreeOutput () shlib
@c Int32 xmlThrDefIndentTreeOutput (:Int32,) shlib
@c Ptr{Ptr{:Uint8}} __xmlTreeIndentString () shlib
@c Ptr{:Uint8} xmlThrDefTreeIndentString (Ptr{:Uint8},) shlib
@c Ptr{:Int32} __xmlKeepBlanksDefaultValue () shlib
@c Int32 xmlThrDefKeepBlanksDefaultValue (:Int32,) shlib
@c Ptr{:Int32} __xmlLineNumbersDefaultValue () shlib
@c Int32 xmlThrDefLineNumbersDefaultValue (:Int32,) shlib
@c Ptr{:Int32} __xmlLoadExtDtdDefaultValue () shlib
@c Int32 xmlThrDefLoadExtDtdDefaultValue (:Int32,) shlib
@c Ptr{:Int32} __xmlParserDebugEntities () shlib
@c Int32 xmlThrDefParserDebugEntities (:Int32,) shlib
@c Ptr{Ptr{:Uint8}} __xmlParserVersion () shlib
@c Ptr{:Int32} __xmlPedanticParserDefaultValue () shlib
@c Int32 xmlThrDefPedanticParserDefaultValue (:Int32,) shlib
@c Ptr{:Int32} __xmlSaveNoEmptyTags () shlib
@c Int32 xmlThrDefSaveNoEmptyTags (:Int32,) shlib
@c Ptr{:Int32} __xmlSubstituteEntitiesDefaultValue () shlib
@c Int32 xmlThrDefSubstituteEntitiesDefaultValue (:Int32,) shlib
@c Ptr{:xmlRegisterNodeFunc} __xmlRegisterNodeDefaultValue () shlib
@c Ptr{:xmlDeregisterNodeFunc} __xmlDeregisterNodeDefaultValue () shlib
@c Ptr{:xmlParserInputBufferCreateFilenameFunc} __xmlParserInputBufferCreateFilenameValue () shlib
@c Ptr{:xmlOutputBufferCreateFilenameFunc} __xmlOutputBufferCreateFilenameValue () shlib
@c xmlMutexPtr xmlNewMutex () shlib
@c None xmlMutexLock (:xmlMutexPtr,) shlib
@c None xmlMutexUnlock (:xmlMutexPtr,) shlib
@c None xmlFreeMutex (:xmlMutexPtr,) shlib
@c xmlRMutexPtr xmlNewRMutex () shlib
@c None xmlRMutexLock (:xmlRMutexPtr,) shlib
@c None xmlRMutexUnlock (:xmlRMutexPtr,) shlib
@c None xmlFreeRMutex (:xmlRMutexPtr,) shlib
@c None xmlInitThreads () shlib
@c None xmlLockLibrary () shlib
@c None xmlUnlockLibrary () shlib
@c Int32 xmlGetThreadId () shlib
@c Int32 xmlIsMainThread () shlib
@c None xmlCleanupThreads () shlib
@c xmlGlobalStatePtr xmlGetGlobalState () shlib
# enum xmlCatalogPrefer
@ctypedef xmlCatalogPrefer Uint32
const XML_CATA_PREFER_NONE = 0
const XML_CATA_PREFER_PUBLIC = 1
const XML_CATA_PREFER_SYSTEM = 2
# end
# enum xmlCatalogAllow
@ctypedef xmlCatalogAllow Uint32
const XML_CATA_ALLOW_NONE = 0
const XML_CATA_ALLOW_GLOBAL = 1
const XML_CATA_ALLOW_DOCUMENT = 2
const XML_CATA_ALLOW_ALL = 3
# end
@ctypedef xmlCatalog Void
@ctypedef xmlCatalogPtr Ptr{:xmlCatalog}
@c xmlCatalogPtr xmlNewCatalog (:Int32,) shlib
@c xmlCatalogPtr xmlLoadACatalog (Ptr{:Uint8},) shlib
@c xmlCatalogPtr xmlLoadSGMLSuperCatalog (Ptr{:Uint8},) shlib
@c Int32 xmlConvertSGMLCatalog (:xmlCatalogPtr,) shlib
@c Int32 xmlACatalogAdd (:xmlCatalogPtr,Ptr{:xmlChar},Ptr{:xmlChar},Ptr{:xmlChar}) shlib
@c Int32 xmlACatalogRemove (:xmlCatalogPtr,Ptr{:xmlChar}) shlib
@c Ptr{:xmlChar} xmlACatalogResolve (:xmlCatalogPtr,Ptr{:xmlChar},Ptr{:xmlChar}) shlib
@c Ptr{:xmlChar} xmlACatalogResolveSystem (:xmlCatalogPtr,Ptr{:xmlChar}) shlib
@c Ptr{:xmlChar} xmlACatalogResolvePublic (:xmlCatalogPtr,Ptr{:xmlChar}) shlib
@c Ptr{:xmlChar} xmlACatalogResolveURI (:xmlCatalogPtr,Ptr{:xmlChar}) shlib
@c None xmlACatalogDump (:xmlCatalogPtr,Ptr{:FILE}) shlib
@c None xmlFreeCatalog (:xmlCatalogPtr,) shlib
@c Int32 xmlCatalogIsEmpty (:xmlCatalogPtr,) shlib
@c None xmlInitializeCatalog () shlib
@c Int32 xmlLoadCatalog (Ptr{:Uint8},) shlib
@c None xmlLoadCatalogs (Ptr{:Uint8},) shlib
@c None xmlCatalogCleanup () shlib
@c None xmlCatalogDump (Ptr{:FILE},) shlib
@c Ptr{:xmlChar} xmlCatalogResolve (Ptr{:xmlChar},Ptr{:xmlChar}) shlib
@c Ptr{:xmlChar} xmlCatalogResolveSystem (Ptr{:xmlChar},) shlib
@c Ptr{:xmlChar} xmlCatalogResolvePublic (Ptr{:xmlChar},) shlib
@c Ptr{:xmlChar} xmlCatalogResolveURI (Ptr{:xmlChar},) shlib
@c Int32 xmlCatalogAdd (Ptr{:xmlChar},Ptr{:xmlChar},Ptr{:xmlChar}) shlib
@c Int32 xmlCatalogRemove (Ptr{:xmlChar},) shlib
@c xmlDocPtr xmlParseCatalogFile (Ptr{:Uint8},) shlib
@c Int32 xmlCatalogConvert () shlib
@c None xmlCatalogFreeLocal (Ptr{:None},) shlib
@c Ptr{:None} xmlCatalogAddLocal (Ptr{:None},Ptr{:xmlChar}) shlib
@c Ptr{:xmlChar} xmlCatalogLocalResolve (Ptr{:None},Ptr{:xmlChar},Ptr{:xmlChar}) shlib
@c Ptr{:xmlChar} xmlCatalogLocalResolveURI (Ptr{:None},Ptr{:xmlChar}) shlib
@c Int32 xmlCatalogSetDebug (:Int32,) shlib
@c xmlCatalogPrefer xmlCatalogSetDefaultPrefer (:xmlCatalogPrefer,) shlib
@c None xmlCatalogSetDefaults (:xmlCatalogAllow,) shlib
@c xmlCatalogAllow xmlCatalogGetDefaults () shlib
@c Ptr{:xmlChar} xmlCatalogGetSystem (Ptr{:xmlChar},) shlib
@c Ptr{:xmlChar} xmlCatalogGetPublic (Ptr{:xmlChar},) shlib

# header: /usr/include/libxml2/libxml/chvalid.h
@ctypedef xmlChSRange Void
@ctypedef xmlChSRangePtr Ptr{:xmlChSRange}
@ctypedef xmlChLRange Void
@ctypedef xmlChLRangePtr Ptr{:xmlChLRange}
@ctypedef xmlChRangeGroup Void
@ctypedef xmlChRangeGroupPtr Ptr{:xmlChRangeGroup}
@c Int32 xmlCharInRange (:Uint32,Ptr{:xmlChRangeGroup}) shlib
@c Int32 xmlIsBaseChar (:Uint32,) shlib
@c Int32 xmlIsBlank (:Uint32,) shlib
@c Int32 xmlIsChar (:Uint32,) shlib
@c Int32 xmlIsCombining (:Uint32,) shlib
@c Int32 xmlIsDigit (:Uint32,) shlib
@c Int32 xmlIsExtender (:Uint32,) shlib
@c Int32 xmlIsIdeographic (:Uint32,) shlib
@c Int32 xmlIsPubidChar (:Uint32,) shlib

# header: /usr/include/libxml2/libxml/debugXML.h
@ctypedef xmlXPathContext Void
@ctypedef xmlXPathContextPtr Ptr{:xmlXPathContext}
@ctypedef xmlXPathParserContext Void
@ctypedef xmlXPathParserContextPtr Ptr{:xmlXPathParserContext}
# enum xmlXPathError
@ctypedef xmlXPathError Uint32
const XPATH_EXPRESSION_OK = 0
const XPATH_NUMBER_ERROR = 1
const XPATH_UNFINISHED_LITERAL_ERROR = 2
const XPATH_START_LITERAL_ERROR = 3
const XPATH_VARIABLE_REF_ERROR = 4
const XPATH_UNDEF_VARIABLE_ERROR = 5
const XPATH_INVALID_PREDICATE_ERROR = 6
const XPATH_EXPR_ERROR = 7
const XPATH_UNCLOSED_ERROR = 8
const XPATH_UNKNOWN_FUNC_ERROR = 9
const XPATH_INVALID_OPERAND = 10
const XPATH_INVALID_TYPE = 11
const XPATH_INVALID_ARITY = 12
const XPATH_INVALID_CTXT_SIZE = 13
const XPATH_INVALID_CTXT_POSITION = 14
const XPATH_MEMORY_ERROR = 15
const XPTR_SYNTAX_ERROR = 16
const XPTR_RESOURCE_ERROR = 17
const XPTR_SUB_RESOURCE_ERROR = 18
const XPATH_UNDEF_PREFIX_ERROR = 19
const XPATH_ENCODING_ERROR = 20
const XPATH_INVALID_CHAR_ERROR = 21
const XPATH_INVALID_CTXT = 22
const XPATH_STACK_ERROR = 23
# end
@ctypedef xmlNodeSet Void
@ctypedef xmlNodeSetPtr Ptr{:xmlNodeSet}
# enum xmlXPathObjectType
@ctypedef xmlXPathObjectType Uint32
const XPATH_UNDEFINED = 0
const XPATH_NODESET = 1
const XPATH_BOOLEAN = 2
const XPATH_NUMBER = 3
const XPATH_STRING = 4
const XPATH_POINT = 5
const XPATH_RANGE = 6
const XPATH_LOCATIONSET = 7
const XPATH_USERS = 8
const XPATH_XSLT_TREE = 9
# end
@ctypedef xmlXPathObject Void
@ctypedef xmlXPathObjectPtr Ptr{:xmlXPathObject}
@ctypedef xmlXPathConvertFunc Ptr{:Void}
@ctypedef xmlXPathType Void
@ctypedef xmlXPathTypePtr Ptr{:xmlXPathType}
@ctypedef xmlXPathVariable Void
@ctypedef xmlXPathVariablePtr Ptr{:xmlXPathVariable}
@ctypedef xmlXPathEvalFunc Ptr{:Void}
@ctypedef xmlXPathFunct Void
@ctypedef xmlXPathFuncPtr Ptr{:xmlXPathFunct}
@ctypedef xmlXPathAxisFunc Ptr{:Void}
@ctypedef xmlXPathAxis Void
@ctypedef xmlXPathAxisPtr Ptr{:xmlXPathAxis}
@ctypedef xmlXPathFunction Ptr{:Void}
@ctypedef xmlXPathVariableLookupFunc Ptr{:Void}
@ctypedef xmlXPathFuncLookupFunc Ptr{:Void}
@ctypedef xmlXPathCompExpr Void
@ctypedef xmlXPathCompExprPtr Ptr{:xmlXPathCompExpr}
@c None xmlXPathFreeObject (:xmlXPathObjectPtr,) shlib
@c xmlNodeSetPtr xmlXPathNodeSetCreate (:xmlNodePtr,) shlib
@c None xmlXPathFreeNodeSetList (:xmlXPathObjectPtr,) shlib
@c None xmlXPathFreeNodeSet (:xmlNodeSetPtr,) shlib
@c xmlXPathObjectPtr xmlXPathObjectCopy (:xmlXPathObjectPtr,) shlib
@c Int32 xmlXPathCmpNodes (:xmlNodePtr,:xmlNodePtr) shlib
@c Int32 xmlXPathCastNumberToBoolean (:Float64,) shlib
@c Int32 xmlXPathCastStringToBoolean (Ptr{:xmlChar},) shlib
@c Int32 xmlXPathCastNodeSetToBoolean (:xmlNodeSetPtr,) shlib
@c Int32 xmlXPathCastToBoolean (:xmlXPathObjectPtr,) shlib
@c Float64 xmlXPathCastBooleanToNumber (:Int32,) shlib
@c Float64 xmlXPathCastStringToNumber (Ptr{:xmlChar},) shlib
@c Float64 xmlXPathCastNodeToNumber (:xmlNodePtr,) shlib
@c Float64 xmlXPathCastNodeSetToNumber (:xmlNodeSetPtr,) shlib
@c Float64 xmlXPathCastToNumber (:xmlXPathObjectPtr,) shlib
@c Ptr{:xmlChar} xmlXPathCastBooleanToString (:Int32,) shlib
@c Ptr{:xmlChar} xmlXPathCastNumberToString (:Float64,) shlib
@c Ptr{:xmlChar} xmlXPathCastNodeToString (:xmlNodePtr,) shlib
@c Ptr{:xmlChar} xmlXPathCastNodeSetToString (:xmlNodeSetPtr,) shlib
@c Ptr{:xmlChar} xmlXPathCastToString (:xmlXPathObjectPtr,) shlib
@c xmlXPathObjectPtr xmlXPathConvertBoolean (:xmlXPathObjectPtr,) shlib
@c xmlXPathObjectPtr xmlXPathConvertNumber (:xmlXPathObjectPtr,) shlib
@c xmlXPathObjectPtr xmlXPathConvertString (:xmlXPathObjectPtr,) shlib
@c xmlXPathContextPtr xmlXPathNewContext (:xmlDocPtr,) shlib
@c None xmlXPathFreeContext (:xmlXPathContextPtr,) shlib
@c Int32 xmlXPathContextSetCache (:xmlXPathContextPtr,:Int32,:Int32,:Int32) shlib
@c Int64 xmlXPathOrderDocElems (:xmlDocPtr,) shlib
@c xmlXPathObjectPtr xmlXPathEval (Ptr{:xmlChar},:xmlXPathContextPtr) shlib
@c xmlXPathObjectPtr xmlXPathEvalExpression (Ptr{:xmlChar},:xmlXPathContextPtr) shlib
@c Int32 xmlXPathEvalPredicate (:xmlXPathContextPtr,:xmlXPathObjectPtr) shlib
@c xmlXPathCompExprPtr xmlXPathCompile (Ptr{:xmlChar},) shlib
@c xmlXPathCompExprPtr xmlXPathCtxtCompile (:xmlXPathContextPtr,Ptr{:xmlChar}) shlib
@c xmlXPathObjectPtr xmlXPathCompiledEval (:xmlXPathCompExprPtr,:xmlXPathContextPtr) shlib
@c Int32 xmlXPathCompiledEvalToBoolean (:xmlXPathCompExprPtr,:xmlXPathContextPtr) shlib
@c None xmlXPathFreeCompExpr (:xmlXPathCompExprPtr,) shlib
@c None xmlXPathInit () shlib
@c Int32 xmlXPathIsNaN (:Float64,) shlib
@c Int32 xmlXPathIsInf (:Float64,) shlib
@c None xmlDebugDumpString (Ptr{:FILE},Ptr{:xmlChar}) shlib
@c None xmlDebugDumpAttr (Ptr{:FILE},:xmlAttrPtr,:Int32) shlib
@c None xmlDebugDumpAttrList (Ptr{:FILE},:xmlAttrPtr,:Int32) shlib
@c None xmlDebugDumpOneNode (Ptr{:FILE},:xmlNodePtr,:Int32) shlib
@c None xmlDebugDumpNode (Ptr{:FILE},:xmlNodePtr,:Int32) shlib
@c None xmlDebugDumpNodeList (Ptr{:FILE},:xmlNodePtr,:Int32) shlib
@c None xmlDebugDumpDocumentHead (Ptr{:FILE},:xmlDocPtr) shlib
@c None xmlDebugDumpDocument (Ptr{:FILE},:xmlDocPtr) shlib
@c None xmlDebugDumpDTD (Ptr{:FILE},:xmlDtdPtr) shlib
@c None xmlDebugDumpEntities (Ptr{:FILE},:xmlDocPtr) shlib
@c Int32 xmlDebugCheckDocument (Ptr{:FILE},:xmlDocPtr) shlib
@c None xmlLsOneNode (Ptr{:FILE},:xmlNodePtr) shlib
@c Int32 xmlLsCountNode (:xmlNodePtr,) shlib
@c Ptr{:Uint8} xmlBoolToText (:Int32,) shlib
@ctypedef xmlShellReadlineFunc Ptr{:Void}
@ctypedef xmlShellCtxt Void
@ctypedef xmlShellCtxtPtr Ptr{:xmlShellCtxt}
@ctypedef xmlShellCmd Ptr{:Void}
@c None xmlShellPrintXPathError (:Int32,Ptr{:Uint8}) shlib
@c None xmlShellPrintXPathResult (:xmlXPathObjectPtr,) shlib
@c Int32 xmlShellList (:xmlShellCtxtPtr,Ptr{:Uint8},:xmlNodePtr,:xmlNodePtr) shlib
@c Int32 xmlShellBase (:xmlShellCtxtPtr,Ptr{:Uint8},:xmlNodePtr,:xmlNodePtr) shlib
@c Int32 xmlShellDir (:xmlShellCtxtPtr,Ptr{:Uint8},:xmlNodePtr,:xmlNodePtr) shlib
@c Int32 xmlShellLoad (:xmlShellCtxtPtr,Ptr{:Uint8},:xmlNodePtr,:xmlNodePtr) shlib
@c None xmlShellPrintNode (:xmlNodePtr,) shlib
@c Int32 xmlShellCat (:xmlShellCtxtPtr,Ptr{:Uint8},:xmlNodePtr,:xmlNodePtr) shlib
@c Int32 xmlShellWrite (:xmlShellCtxtPtr,Ptr{:Uint8},:xmlNodePtr,:xmlNodePtr) shlib
@c Int32 xmlShellSave (:xmlShellCtxtPtr,Ptr{:Uint8},:xmlNodePtr,:xmlNodePtr) shlib
@c Int32 xmlShellValidate (:xmlShellCtxtPtr,Ptr{:Uint8},:xmlNodePtr,:xmlNodePtr) shlib
@c Int32 xmlShellDu (:xmlShellCtxtPtr,Ptr{:Uint8},:xmlNodePtr,:xmlNodePtr) shlib
@c Int32 xmlShellPwd (:xmlShellCtxtPtr,Ptr{:Uint8},:xmlNodePtr,:xmlNodePtr) shlib
@c None xmlShell (:xmlDocPtr,Ptr{:Uint8},:xmlShellReadlineFunc,Ptr{:FILE}) shlib

# header: /usr/include/libxml2/libxml/dict.h
@c xmlExpCtxtPtr xmlExpNewCtxt (:Int32,:Int32) shlib
@c xmlHashTablePtr xmlHashCreateDict (:Int32,:Int32) shlib

# header: /usr/include/libxml2/libxml/DOCBparser.h
@ctypedef htmlParserCtxt xmlParserCtxt
@ctypedef htmlParserCtxtPtr xmlParserCtxtPtr
@ctypedef htmlParserNodeInfo xmlParserNodeInfo
@ctypedef htmlSAXHandler xmlSAXHandler
@ctypedef htmlSAXHandlerPtr xmlSAXHandlerPtr
@ctypedef htmlParserInput xmlParserInput
@ctypedef htmlParserInputPtr xmlParserInputPtr
@ctypedef htmlDocPtr xmlDocPtr
@ctypedef htmlNodePtr xmlNodePtr
@ctypedef htmlElemDesc Void
@ctypedef htmlElemDescPtr Ptr{:htmlElemDesc}
@ctypedef htmlEntityDesc Void
@ctypedef htmlEntityDescPtr Ptr{:htmlEntityDesc}
@c Ptr{:htmlElemDesc} htmlTagLookup (Ptr{:xmlChar},) shlib
@c Ptr{:htmlEntityDesc} htmlEntityLookup (Ptr{:xmlChar},) shlib
@c Ptr{:htmlEntityDesc} htmlEntityValueLookup (:Uint32,) shlib
@c Int32 htmlIsAutoClosed (:htmlDocPtr,:htmlNodePtr) shlib
@c Int32 htmlAutoCloseTag (:htmlDocPtr,Ptr{:xmlChar},:htmlNodePtr) shlib
@c Ptr{:htmlEntityDesc} htmlParseEntityRef (:htmlParserCtxtPtr,Ptr{Ptr{:xmlChar}}) shlib
@c Int32 htmlParseCharRef (:htmlParserCtxtPtr,) shlib
@c None htmlParseElement (:htmlParserCtxtPtr,) shlib
@c htmlParserCtxtPtr htmlNewParserCtxt () shlib
@c htmlParserCtxtPtr htmlCreateMemoryParserCtxt (Ptr{:Uint8},:Int32) shlib
@c Int32 htmlParseDocument (:htmlParserCtxtPtr,) shlib
@c htmlDocPtr htmlSAXParseDoc (Ptr{:xmlChar},Ptr{:Uint8},:htmlSAXHandlerPtr,Ptr{:None}) shlib
@c htmlDocPtr htmlParseDoc (Ptr{:xmlChar},Ptr{:Uint8}) shlib
@c htmlDocPtr htmlSAXParseFile (Ptr{:Uint8},Ptr{:Uint8},:htmlSAXHandlerPtr,Ptr{:None}) shlib
@c htmlDocPtr htmlParseFile (Ptr{:Uint8},Ptr{:Uint8}) shlib
@c Int32 UTF8ToHtml (Ptr{:Uint8},Ptr{:Int32},Ptr{:Uint8},Ptr{:Int32}) shlib
@c Int32 htmlEncodeEntities (Ptr{:Uint8},Ptr{:Int32},Ptr{:Uint8},Ptr{:Int32},:Int32) shlib
@c Int32 htmlIsScriptAttribute (Ptr{:xmlChar},) shlib
@c Int32 htmlHandleOmittedElem (:Int32,) shlib
@c htmlParserCtxtPtr htmlCreatePushParserCtxt (:htmlSAXHandlerPtr,Ptr{:None},Ptr{:Uint8},:Int32,Ptr{:Uint8},:xmlCharEncoding) shlib
@c Int32 htmlParseChunk (:htmlParserCtxtPtr,Ptr{:Uint8},:Int32,:Int32) shlib
@c None htmlFreeParserCtxt (:htmlParserCtxtPtr,) shlib
# enum htmlParserOption
@ctypedef htmlParserOption Uint32
const HTML_PARSE_RECOVER = 1
const HTML_PARSE_NODEFDTD = 4
const HTML_PARSE_NOERROR = 32
const HTML_PARSE_NOWARNING = 64
const HTML_PARSE_PEDANTIC = 128
const HTML_PARSE_NOBLANKS = 256
const HTML_PARSE_NONET = 2048
const HTML_PARSE_NOIMPLIED = 8192
const HTML_PARSE_COMPACT = 65536
# end
@c None htmlCtxtReset (:htmlParserCtxtPtr,) shlib
@c Int32 htmlCtxtUseOptions (:htmlParserCtxtPtr,:Int32) shlib
@c htmlDocPtr htmlReadDoc (Ptr{:xmlChar},Ptr{:Uint8},Ptr{:Uint8},:Int32) shlib
@c htmlDocPtr htmlReadFile (Ptr{:Uint8},Ptr{:Uint8},:Int32) shlib
@c htmlDocPtr htmlReadMemory (Ptr{:Uint8},:Int32,Ptr{:Uint8},Ptr{:Uint8},:Int32) shlib
@c htmlDocPtr htmlReadFd (:Int32,Ptr{:Uint8},Ptr{:Uint8},:Int32) shlib
@c htmlDocPtr htmlReadIO (:xmlInputReadCallback,:xmlInputCloseCallback,Ptr{:None},Ptr{:Uint8},Ptr{:Uint8},:Int32) shlib
@c htmlDocPtr htmlCtxtReadDoc (:xmlParserCtxtPtr,Ptr{:xmlChar},Ptr{:Uint8},Ptr{:Uint8},:Int32) shlib
@c htmlDocPtr htmlCtxtReadFile (:xmlParserCtxtPtr,Ptr{:Uint8},Ptr{:Uint8},:Int32) shlib
@c htmlDocPtr htmlCtxtReadMemory (:xmlParserCtxtPtr,Ptr{:Uint8},:Int32,Ptr{:Uint8},Ptr{:Uint8},:Int32) shlib
@c htmlDocPtr htmlCtxtReadFd (:xmlParserCtxtPtr,:Int32,Ptr{:Uint8},Ptr{:Uint8},:Int32) shlib
@c htmlDocPtr htmlCtxtReadIO (:xmlParserCtxtPtr,:xmlInputReadCallback,:xmlInputCloseCallback,Ptr{:None},Ptr{:Uint8},Ptr{:Uint8},:Int32) shlib
# enum htmlStatus
@ctypedef htmlStatus Uint32
const HTML_NA = 0
const HTML_INVALID = 1
const HTML_DEPRECATED = 2
const HTML_VALID = 4
const HTML_REQUIRED = 12
# end
@c htmlStatus htmlAttrAllowed (Ptr{:htmlElemDesc},Ptr{:xmlChar},:Int32) shlib
@c Int32 htmlElementAllowedHere (Ptr{:htmlElemDesc},Ptr{:xmlChar}) shlib
@c htmlStatus htmlElementStatusHere (Ptr{:htmlElemDesc},Ptr{:htmlElemDesc}) shlib
@c htmlStatus htmlNodeStatus (:htmlNodePtr,:Int32) shlib
@c Int32 xmlIsLetter (:Int32,) shlib
@c xmlParserCtxtPtr xmlCreateFileParserCtxt (Ptr{:Uint8},) shlib
@c xmlParserCtxtPtr xmlCreateURLParserCtxt (Ptr{:Uint8},:Int32) shlib
@c xmlParserCtxtPtr xmlCreateMemoryParserCtxt (Ptr{:Uint8},:Int32) shlib
@c xmlParserCtxtPtr xmlCreateEntityParserCtxt (Ptr{:xmlChar},Ptr{:xmlChar},Ptr{:xmlChar}) shlib
@c Int32 xmlSwitchEncoding (:xmlParserCtxtPtr,:xmlCharEncoding) shlib
@c Int32 xmlSwitchToEncoding (:xmlParserCtxtPtr,:xmlCharEncodingHandlerPtr) shlib
@c Int32 xmlSwitchInputEncoding (:xmlParserCtxtPtr,:xmlParserInputPtr,:xmlCharEncodingHandlerPtr) shlib
@c xmlParserInputPtr xmlNewStringInputStream (:xmlParserCtxtPtr,Ptr{:xmlChar}) shlib
@c xmlParserInputPtr xmlNewEntityInputStream (:xmlParserCtxtPtr,:xmlEntityPtr) shlib
@c Int32 xmlPushInput (:xmlParserCtxtPtr,:xmlParserInputPtr) shlib
@c xmlChar xmlPopInput (:xmlParserCtxtPtr,) shlib
@c None xmlFreeInputStream (:xmlParserInputPtr,) shlib
@c xmlParserInputPtr xmlNewInputFromFile (:xmlParserCtxtPtr,Ptr{:Uint8}) shlib
@c xmlParserInputPtr xmlNewInputStream (:xmlParserCtxtPtr,) shlib
@c Ptr{:xmlChar} xmlSplitQName (:xmlParserCtxtPtr,Ptr{:xmlChar},Ptr{Ptr{:xmlChar}}) shlib
@c Ptr{:xmlChar} xmlParseName (:xmlParserCtxtPtr,) shlib
@c Ptr{:xmlChar} xmlParseNmtoken (:xmlParserCtxtPtr,) shlib
@c Ptr{:xmlChar} xmlParseEntityValue (:xmlParserCtxtPtr,Ptr{Ptr{:xmlChar}}) shlib
@c Ptr{:xmlChar} xmlParseAttValue (:xmlParserCtxtPtr,) shlib
@c Ptr{:xmlChar} xmlParseSystemLiteral (:xmlParserCtxtPtr,) shlib
@c Ptr{:xmlChar} xmlParsePubidLiteral (:xmlParserCtxtPtr,) shlib
@c None xmlParseCharData (:xmlParserCtxtPtr,:Int32) shlib
@c Ptr{:xmlChar} xmlParseExternalID (:xmlParserCtxtPtr,Ptr{Ptr{:xmlChar}},:Int32) shlib
@c None xmlParseComment (:xmlParserCtxtPtr,) shlib
@c Ptr{:xmlChar} xmlParsePITarget (:xmlParserCtxtPtr,) shlib
@c None xmlParsePI (:xmlParserCtxtPtr,) shlib
@c None xmlParseNotationDecl (:xmlParserCtxtPtr,) shlib
@c None xmlParseEntityDecl (:xmlParserCtxtPtr,) shlib
@c Int32 xmlParseDefaultDecl (:xmlParserCtxtPtr,Ptr{Ptr{:xmlChar}}) shlib
@c xmlEnumerationPtr xmlParseNotationType (:xmlParserCtxtPtr,) shlib
@c xmlEnumerationPtr xmlParseEnumerationType (:xmlParserCtxtPtr,) shlib
@c Int32 xmlParseEnumeratedType (:xmlParserCtxtPtr,Ptr{:xmlEnumerationPtr}) shlib
@c Int32 xmlParseAttributeType (:xmlParserCtxtPtr,Ptr{:xmlEnumerationPtr}) shlib
@c None xmlParseAttributeListDecl (:xmlParserCtxtPtr,) shlib
@c xmlElementContentPtr xmlParseElementMixedContentDecl (:xmlParserCtxtPtr,:Int32) shlib
@c xmlElementContentPtr xmlParseElementChildrenContentDecl (:xmlParserCtxtPtr,:Int32) shlib
@c Int32 xmlParseElementContentDecl (:xmlParserCtxtPtr,Ptr{:xmlChar},Ptr{:xmlElementContentPtr}) shlib
@c Int32 xmlParseElementDecl (:xmlParserCtxtPtr,) shlib
@c None xmlParseMarkupDecl (:xmlParserCtxtPtr,) shlib
@c Int32 xmlParseCharRef (:xmlParserCtxtPtr,) shlib
@c xmlEntityPtr xmlParseEntityRef (:xmlParserCtxtPtr,) shlib
@c None xmlParseReference (:xmlParserCtxtPtr,) shlib
@c None xmlParsePEReference (:xmlParserCtxtPtr,) shlib
@c None xmlParseDocTypeDecl (:xmlParserCtxtPtr,) shlib
@c Ptr{:xmlChar} xmlParseAttribute (:xmlParserCtxtPtr,Ptr{Ptr{:xmlChar}}) shlib
@c Ptr{:xmlChar} xmlParseStartTag (:xmlParserCtxtPtr,) shlib
@c None xmlParseEndTag (:xmlParserCtxtPtr,) shlib
@c None xmlParseCDSect (:xmlParserCtxtPtr,) shlib
@c None xmlParseContent (:xmlParserCtxtPtr,) shlib
@c None xmlParseElement (:xmlParserCtxtPtr,) shlib
@c Ptr{:xmlChar} xmlParseVersionNum (:xmlParserCtxtPtr,) shlib
@c Ptr{:xmlChar} xmlParseVersionInfo (:xmlParserCtxtPtr,) shlib
@c Ptr{:xmlChar} xmlParseEncName (:xmlParserCtxtPtr,) shlib
@c Ptr{:xmlChar} xmlParseEncodingDecl (:xmlParserCtxtPtr,) shlib
@c Int32 xmlParseSDDecl (:xmlParserCtxtPtr,) shlib
@c None xmlParseXMLDecl (:xmlParserCtxtPtr,) shlib
@c None xmlParseTextDecl (:xmlParserCtxtPtr,) shlib
@c None xmlParseMisc (:xmlParserCtxtPtr,) shlib
@c None xmlParseExternalSubset (:xmlParserCtxtPtr,Ptr{:xmlChar},Ptr{:xmlChar}) shlib
@c Ptr{:xmlChar} xmlStringDecodeEntities (:xmlParserCtxtPtr,Ptr{:xmlChar},:Int32,:xmlChar,:xmlChar,:xmlChar) shlib
@c Ptr{:xmlChar} xmlStringLenDecodeEntities (:xmlParserCtxtPtr,Ptr{:xmlChar},:Int32,:Int32,:xmlChar,:xmlChar,:xmlChar) shlib
@c Int32 nodePush (:xmlParserCtxtPtr,:xmlNodePtr) shlib
@c xmlNodePtr nodePop (:xmlParserCtxtPtr,) shlib
@c Int32 inputPush (:xmlParserCtxtPtr,:xmlParserInputPtr) shlib
@c xmlParserInputPtr inputPop (:xmlParserCtxtPtr,) shlib
@c Ptr{:xmlChar} namePop (:xmlParserCtxtPtr,) shlib
@c Int32 namePush (:xmlParserCtxtPtr,Ptr{:xmlChar}) shlib
@c Int32 xmlSkipBlankChars (:xmlParserCtxtPtr,) shlib
@c Int32 xmlStringCurrentChar (:xmlParserCtxtPtr,Ptr{:xmlChar},Ptr{:Int32}) shlib
@c None xmlParserHandlePEReference (:xmlParserCtxtPtr,) shlib
@c Int32 xmlCheckLanguageID (Ptr{:xmlChar},) shlib
@c Int32 xmlCurrentChar (:xmlParserCtxtPtr,Ptr{:Int32}) shlib
@c Int32 xmlCopyCharMultiByte (Ptr{:xmlChar},:Int32) shlib
@c Int32 xmlCopyChar (:Int32,Ptr{:xmlChar},:Int32) shlib
@c None xmlNextChar (:xmlParserCtxtPtr,) shlib
@c None xmlParserInputShrink (:xmlParserInputPtr,) shlib
@c None htmlInitAutoClose () shlib
@c htmlParserCtxtPtr htmlCreateFileParserCtxt (Ptr{:Uint8},Ptr{:Uint8}) shlib
@ctypedef xmlEntityReferenceFunc Ptr{:Void}
@c None xmlSetEntityReferenceFunc (:xmlEntityReferenceFunc,) shlib
@c Ptr{:xmlChar} xmlParseQuotedString (:xmlParserCtxtPtr,) shlib
@c None xmlParseNamespace (:xmlParserCtxtPtr,) shlib
@c Ptr{:xmlChar} xmlNamespaceParseNSDef (:xmlParserCtxtPtr,) shlib
@c Ptr{:xmlChar} xmlScanName (:xmlParserCtxtPtr,) shlib
@c Ptr{:xmlChar} xmlNamespaceParseNCName (:xmlParserCtxtPtr,) shlib
@c None xmlParserHandleReference (:xmlParserCtxtPtr,) shlib
@c Ptr{:xmlChar} xmlNamespaceParseQName (:xmlParserCtxtPtr,Ptr{Ptr{:xmlChar}}) shlib
@c Ptr{:xmlChar} xmlDecodeEntities (:xmlParserCtxtPtr,:Int32,:Int32,:xmlChar,:xmlChar,:xmlChar) shlib
@c None xmlHandleEntity (:xmlParserCtxtPtr,:xmlEntityPtr) shlib
@ctypedef docbParserCtxt xmlParserCtxt
@ctypedef docbParserCtxtPtr xmlParserCtxtPtr
@ctypedef docbSAXHandler xmlSAXHandler
@ctypedef docbSAXHandlerPtr xmlSAXHandlerPtr
@ctypedef docbParserInput xmlParserInput
@ctypedef docbParserInputPtr xmlParserInputPtr
@ctypedef docbDocPtr xmlDocPtr
@c Int32 docbEncodeEntities (Ptr{:Uint8},Ptr{:Int32},Ptr{:Uint8},Ptr{:Int32},:Int32) shlib
@c docbDocPtr docbSAXParseDoc (Ptr{:xmlChar},Ptr{:Uint8},:docbSAXHandlerPtr,Ptr{:None}) shlib
@c docbDocPtr docbParseDoc (Ptr{:xmlChar},Ptr{:Uint8}) shlib
@c docbDocPtr docbSAXParseFile (Ptr{:Uint8},Ptr{:Uint8},:docbSAXHandlerPtr,Ptr{:None}) shlib
@c docbDocPtr docbParseFile (Ptr{:Uint8},Ptr{:Uint8}) shlib
@c None docbFreeParserCtxt (:docbParserCtxtPtr,) shlib
@c docbParserCtxtPtr docbCreatePushParserCtxt (:docbSAXHandlerPtr,Ptr{:None},Ptr{:Uint8},:Int32,Ptr{:Uint8},:xmlCharEncoding) shlib
@c Int32 docbParseChunk (:docbParserCtxtPtr,Ptr{:Uint8},:Int32,:Int32) shlib
@c docbParserCtxtPtr docbCreateFileParserCtxt (Ptr{:Uint8},Ptr{:Uint8}) shlib
@c Int32 docbParseDocument (:docbParserCtxtPtr,) shlib

# header: /usr/include/libxml2/libxml/encoding.h

# header: /usr/include/libxml2/libxml/entities.h

# header: /usr/include/libxml2/libxml/globals.h

# header: /usr/include/libxml2/libxml/hash.h

# header: /usr/include/libxml2/libxml/HTMLparser.h

# header: /usr/include/libxml2/libxml/HTMLtree.h
@c htmlDocPtr htmlNewDoc (Ptr{:xmlChar},Ptr{:xmlChar}) shlib
@c htmlDocPtr htmlNewDocNoDtD (Ptr{:xmlChar},Ptr{:xmlChar}) shlib
@c Ptr{:xmlChar} htmlGetMetaEncoding (:htmlDocPtr,) shlib
@c Int32 htmlSetMetaEncoding (:htmlDocPtr,Ptr{:xmlChar}) shlib
@c None htmlDocDumpMemory (:xmlDocPtr,Ptr{Ptr{:xmlChar}},Ptr{:Int32}) shlib
@c None htmlDocDumpMemoryFormat (:xmlDocPtr,Ptr{Ptr{:xmlChar}},Ptr{:Int32},:Int32) shlib
@c Int32 htmlDocDump (Ptr{:FILE},:xmlDocPtr) shlib
@c Int32 htmlSaveFile (Ptr{:Uint8},:xmlDocPtr) shlib
@c Int32 htmlNodeDump (:xmlBufferPtr,:xmlDocPtr,:xmlNodePtr) shlib
@c None htmlNodeDumpFile (Ptr{:FILE},:xmlDocPtr,:xmlNodePtr) shlib
@c Int32 htmlNodeDumpFileFormat (Ptr{:FILE},:xmlDocPtr,:xmlNodePtr,Ptr{:Uint8},:Int32) shlib
@c Int32 htmlSaveFileEnc (Ptr{:Uint8},:xmlDocPtr,Ptr{:Uint8}) shlib
@c Int32 htmlSaveFileFormat (Ptr{:Uint8},:xmlDocPtr,Ptr{:Uint8},:Int32) shlib
@c None htmlNodeDumpFormatOutput (:xmlOutputBufferPtr,:xmlDocPtr,:xmlNodePtr,Ptr{:Uint8},:Int32) shlib
@c None htmlDocContentDumpOutput (:xmlOutputBufferPtr,:xmlDocPtr,Ptr{:Uint8}) shlib
@c None htmlDocContentDumpFormatOutput (:xmlOutputBufferPtr,:xmlDocPtr,Ptr{:Uint8},:Int32) shlib
@c None htmlNodeDumpOutput (:xmlOutputBufferPtr,:xmlDocPtr,:xmlNodePtr,Ptr{:Uint8}) shlib
@c Int32 htmlIsBooleanAttr (Ptr{:xmlChar},) shlib

# header: /usr/include/libxml2/libxml/list.h

# header: /usr/include/libxml2/libxml/nanoftp.h
@ctypedef ftpListCallback Ptr{:Void}
@ctypedef ftpDataCallback Ptr{:Void}
@c None xmlNanoFTPInit () shlib
@c None xmlNanoFTPCleanup () shlib
@c Ptr{:None} xmlNanoFTPNewCtxt (Ptr{:Uint8},) shlib
@c None xmlNanoFTPFreeCtxt (Ptr{:None},) shlib
@c Ptr{:None} xmlNanoFTPConnectTo (Ptr{:Uint8},:Int32) shlib
@c Ptr{:None} xmlNanoFTPOpen (Ptr{:Uint8},) shlib
@c Int32 xmlNanoFTPConnect (Ptr{:None},) shlib
@c Int32 xmlNanoFTPClose (Ptr{:None},) shlib
@c Int32 xmlNanoFTPQuit (Ptr{:None},) shlib
@c None xmlNanoFTPScanProxy (Ptr{:Uint8},) shlib
@c None xmlNanoFTPProxy (Ptr{:Uint8},:Int32,Ptr{:Uint8},Ptr{:Uint8},:Int32) shlib
@c Int32 xmlNanoFTPUpdateURL (Ptr{:None},Ptr{:Uint8}) shlib
@c Int32 xmlNanoFTPGetResponse (Ptr{:None},) shlib
@c Int32 xmlNanoFTPCheckResponse (Ptr{:None},) shlib
@c Int32 xmlNanoFTPCwd (Ptr{:None},Ptr{:Uint8}) shlib
@c Int32 xmlNanoFTPDele (Ptr{:None},Ptr{:Uint8}) shlib
@c Int32 xmlNanoFTPGetConnection (Ptr{:None},) shlib
@c Int32 xmlNanoFTPCloseConnection (Ptr{:None},) shlib
@c Int32 xmlNanoFTPList (Ptr{:None},:ftpListCallback,Ptr{:None},Ptr{:Uint8}) shlib
@c Int32 xmlNanoFTPGetSocket (Ptr{:None},Ptr{:Uint8}) shlib
@c Int32 xmlNanoFTPGet (Ptr{:None},:ftpDataCallback,Ptr{:None},Ptr{:Uint8}) shlib
@c Int32 xmlNanoFTPRead (Ptr{:None},Ptr{:None},:Int32) shlib

# header: /usr/include/libxml2/libxml/nanohttp.h
@c None xmlNanoHTTPInit () shlib
@c None xmlNanoHTTPCleanup () shlib
@c None xmlNanoHTTPScanProxy (Ptr{:Uint8},) shlib
@c Int32 xmlNanoHTTPFetch (Ptr{:Uint8},Ptr{:Uint8},Ptr{Ptr{:Uint8}}) shlib
@c Ptr{:None} xmlNanoHTTPMethod (Ptr{:Uint8},Ptr{:Uint8},Ptr{:Uint8},Ptr{Ptr{:Uint8}},Ptr{:Uint8},:Int32) shlib
@c Ptr{:None} xmlNanoHTTPMethodRedir (Ptr{:Uint8},Ptr{:Uint8},Ptr{:Uint8},Ptr{Ptr{:Uint8}},Ptr{Ptr{:Uint8}},Ptr{:Uint8},:Int32) shlib
@c Ptr{:None} xmlNanoHTTPOpen (Ptr{:Uint8},Ptr{Ptr{:Uint8}}) shlib
@c Ptr{:None} xmlNanoHTTPOpenRedir (Ptr{:Uint8},Ptr{Ptr{:Uint8}},Ptr{Ptr{:Uint8}}) shlib
@c Int32 xmlNanoHTTPReturnCode (Ptr{:None},) shlib
@c Ptr{:Uint8} xmlNanoHTTPAuthHeader (Ptr{:None},) shlib
@c Ptr{:Uint8} xmlNanoHTTPRedir (Ptr{:None},) shlib
@c Int32 xmlNanoHTTPContentLength (Ptr{:None},) shlib
@c Ptr{:Uint8} xmlNanoHTTPEncoding (Ptr{:None},) shlib
@c Ptr{:Uint8} xmlNanoHTTPMimeType (Ptr{:None},) shlib
@c Int32 xmlNanoHTTPRead (Ptr{:None},Ptr{:None},:Int32) shlib
@c Int32 xmlNanoHTTPSave (Ptr{:None},Ptr{:Uint8}) shlib
@c None xmlNanoHTTPClose (Ptr{:None},) shlib

# header: /usr/include/libxml2/libxml/parser.h

# header: /usr/include/libxml2/libxml/parserInternals.h

# header: /usr/include/libxml2/libxml/pattern.h
@ctypedef xmlPattern Void
@ctypedef xmlPatternPtr Ptr{:xmlPattern}
# enum xmlPatternFlags
@ctypedef xmlPatternFlags Uint32
const XML_PATTERN_DEFAULT = 0
const XML_PATTERN_XPATH = 1
const XML_PATTERN_XSSEL = 2
const XML_PATTERN_XSFIELD = 4
# end
@c None xmlFreePattern (:xmlPatternPtr,) shlib
@c None xmlFreePatternList (:xmlPatternPtr,) shlib
@c xmlPatternPtr xmlPatterncompile (Ptr{:xmlChar},Ptr{:xmlDict},:Int32,Ptr{Ptr{:xmlChar}}) shlib
@c Int32 xmlPatternMatch (:xmlPatternPtr,:xmlNodePtr) shlib
@ctypedef xmlStreamCtxt Void
@ctypedef xmlStreamCtxtPtr Ptr{:xmlStreamCtxt}
@c Int32 xmlPatternStreamable (:xmlPatternPtr,) shlib
@c Int32 xmlPatternMaxDepth (:xmlPatternPtr,) shlib
@c Int32 xmlPatternMinDepth (:xmlPatternPtr,) shlib
@c Int32 xmlPatternFromRoot (:xmlPatternPtr,) shlib
@c xmlStreamCtxtPtr xmlPatternGetStreamCtxt (:xmlPatternPtr,) shlib
@c None xmlFreeStreamCtxt (:xmlStreamCtxtPtr,) shlib
@c Int32 xmlStreamPushNode (:xmlStreamCtxtPtr,Ptr{:xmlChar},Ptr{:xmlChar},:Int32) shlib
@c Int32 xmlStreamPush (:xmlStreamCtxtPtr,Ptr{:xmlChar},Ptr{:xmlChar}) shlib
@c Int32 xmlStreamPushAttr (:xmlStreamCtxtPtr,Ptr{:xmlChar},Ptr{:xmlChar}) shlib
@c Int32 xmlStreamPop (:xmlStreamCtxtPtr,) shlib
@c Int32 xmlStreamWantsAnyNode (:xmlStreamCtxtPtr,) shlib

# header: /usr/include/libxml2/libxml/relaxng.h
@ctypedef xmlRelaxNG Void
@ctypedef xmlRelaxNGPtr Ptr{:xmlRelaxNG}
@ctypedef xmlRelaxNGValidityErrorFunc Ptr{:Void}
@ctypedef xmlRelaxNGValidityWarningFunc Ptr{:Void}
@ctypedef xmlRelaxNGParserCtxt Void
@ctypedef xmlRelaxNGParserCtxtPtr Ptr{:xmlRelaxNGParserCtxt}
@ctypedef xmlRelaxNGValidCtxt Void
@ctypedef xmlRelaxNGValidCtxtPtr Ptr{:xmlRelaxNGValidCtxt}
# enum xmlRelaxNGValidErr
@ctypedef xmlRelaxNGValidErr Uint32
const XML_RELAXNG_OK = 0
const XML_RELAXNG_ERR_MEMORY = 1
const XML_RELAXNG_ERR_TYPE = 2
const XML_RELAXNG_ERR_TYPEVAL = 3
const XML_RELAXNG_ERR_DUPID = 4
const XML_RELAXNG_ERR_TYPECMP = 5
const XML_RELAXNG_ERR_NOSTATE = 6
const XML_RELAXNG_ERR_NODEFINE = 7
const XML_RELAXNG_ERR_LISTEXTRA = 8
const XML_RELAXNG_ERR_LISTEMPTY = 9
const XML_RELAXNG_ERR_INTERNODATA = 10
const XML_RELAXNG_ERR_INTERSEQ = 11
const XML_RELAXNG_ERR_INTEREXTRA = 12
const XML_RELAXNG_ERR_ELEMNAME = 13
const XML_RELAXNG_ERR_ATTRNAME = 14
const XML_RELAXNG_ERR_ELEMNONS = 15
const XML_RELAXNG_ERR_ATTRNONS = 16
const XML_RELAXNG_ERR_ELEMWRONGNS = 17
const XML_RELAXNG_ERR_ATTRWRONGNS = 18
const XML_RELAXNG_ERR_ELEMEXTRANS = 19
const XML_RELAXNG_ERR_ATTREXTRANS = 20
const XML_RELAXNG_ERR_ELEMNOTEMPTY = 21
const XML_RELAXNG_ERR_NOELEM = 22
const XML_RELAXNG_ERR_NOTELEM = 23
const XML_RELAXNG_ERR_ATTRVALID = 24
const XML_RELAXNG_ERR_CONTENTVALID = 25
const XML_RELAXNG_ERR_EXTRACONTENT = 26
const XML_RELAXNG_ERR_INVALIDATTR = 27
const XML_RELAXNG_ERR_DATAELEM = 28
const XML_RELAXNG_ERR_VALELEM = 29
const XML_RELAXNG_ERR_LISTELEM = 30
const XML_RELAXNG_ERR_DATATYPE = 31
const XML_RELAXNG_ERR_VALUE = 32
const XML_RELAXNG_ERR_LIST = 33
const XML_RELAXNG_ERR_NOGRAMMAR = 34
const XML_RELAXNG_ERR_EXTRADATA = 35
const XML_RELAXNG_ERR_LACKDATA = 36
const XML_RELAXNG_ERR_INTERNAL = 37
const XML_RELAXNG_ERR_ELEMWRONG = 38
const XML_RELAXNG_ERR_TEXTWRONG = 39
# end
# enum xmlRelaxNGParserFlag
@ctypedef xmlRelaxNGParserFlag Uint32
const XML_RELAXNGP_NONE = 0
const XML_RELAXNGP_FREE_DOC = 1
const XML_RELAXNGP_CRNG = 2
# end
@c Int32 xmlRelaxNGInitTypes () shlib
@c None xmlRelaxNGCleanupTypes () shlib
@c xmlRelaxNGParserCtxtPtr xmlRelaxNGNewParserCtxt (Ptr{:Uint8},) shlib
@c xmlRelaxNGParserCtxtPtr xmlRelaxNGNewMemParserCtxt (Ptr{:Uint8},:Int32) shlib
@c xmlRelaxNGParserCtxtPtr xmlRelaxNGNewDocParserCtxt (:xmlDocPtr,) shlib
@c Int32 xmlRelaxParserSetFlag (:xmlRelaxNGParserCtxtPtr,:Int32) shlib
@c None xmlRelaxNGFreeParserCtxt (:xmlRelaxNGParserCtxtPtr,) shlib
@c None xmlRelaxNGSetParserErrors (:xmlRelaxNGParserCtxtPtr,:xmlRelaxNGValidityErrorFunc,:xmlRelaxNGValidityWarningFunc,Ptr{:None}) shlib
@c Int32 xmlRelaxNGGetParserErrors (:xmlRelaxNGParserCtxtPtr,Ptr{:xmlRelaxNGValidityErrorFunc},Ptr{:xmlRelaxNGValidityWarningFunc},Ptr{Ptr{:None}}) shlib
@c None xmlRelaxNGSetParserStructuredErrors (:xmlRelaxNGParserCtxtPtr,:xmlStructuredErrorFunc,Ptr{:None}) shlib
@c xmlRelaxNGPtr xmlRelaxNGParse (:xmlRelaxNGParserCtxtPtr,) shlib
@c None xmlRelaxNGFree (:xmlRelaxNGPtr,) shlib
@c None xmlRelaxNGDump (Ptr{:FILE},:xmlRelaxNGPtr) shlib
@c None xmlRelaxNGDumpTree (Ptr{:FILE},:xmlRelaxNGPtr) shlib
@c None xmlRelaxNGSetValidErrors (:xmlRelaxNGValidCtxtPtr,:xmlRelaxNGValidityErrorFunc,:xmlRelaxNGValidityWarningFunc,Ptr{:None}) shlib
@c Int32 xmlRelaxNGGetValidErrors (:xmlRelaxNGValidCtxtPtr,Ptr{:xmlRelaxNGValidityErrorFunc},Ptr{:xmlRelaxNGValidityWarningFunc},Ptr{Ptr{:None}}) shlib
@c None xmlRelaxNGSetValidStructuredErrors (:xmlRelaxNGValidCtxtPtr,:xmlStructuredErrorFunc,Ptr{:None}) shlib
@c xmlRelaxNGValidCtxtPtr xmlRelaxNGNewValidCtxt (:xmlRelaxNGPtr,) shlib
@c None xmlRelaxNGFreeValidCtxt (:xmlRelaxNGValidCtxtPtr,) shlib
@c Int32 xmlRelaxNGValidateDoc (:xmlRelaxNGValidCtxtPtr,:xmlDocPtr) shlib
@c Int32 xmlRelaxNGValidatePushElement (:xmlRelaxNGValidCtxtPtr,:xmlDocPtr,:xmlNodePtr) shlib
@c Int32 xmlRelaxNGValidatePushCData (:xmlRelaxNGValidCtxtPtr,Ptr{:xmlChar},:Int32) shlib
@c Int32 xmlRelaxNGValidatePopElement (:xmlRelaxNGValidCtxtPtr,:xmlDocPtr,:xmlNodePtr) shlib
@c Int32 xmlRelaxNGValidateFullElement (:xmlRelaxNGValidCtxtPtr,:xmlDocPtr,:xmlNodePtr) shlib

# header: /usr/include/libxml2/libxml/SAX2.h

# header: /usr/include/libxml2/libxml/SAX.h

# header: /usr/include/libxml2/libxml/schemasInternals.h
# enum xmlSchemaValType
@ctypedef xmlSchemaValType Uint32
const XML_SCHEMAS_UNKNOWN = 0
const XML_SCHEMAS_STRING = 1
const XML_SCHEMAS_NORMSTRING = 2
const XML_SCHEMAS_DECIMAL = 3
const XML_SCHEMAS_TIME = 4
const XML_SCHEMAS_GDAY = 5
const XML_SCHEMAS_GMONTH = 6
const XML_SCHEMAS_GMONTHDAY = 7
const XML_SCHEMAS_GYEAR = 8
const XML_SCHEMAS_GYEARMONTH = 9
const XML_SCHEMAS_DATE = 10
const XML_SCHEMAS_DATETIME = 11
const XML_SCHEMAS_DURATION = 12
const XML_SCHEMAS_FLOAT = 13
const XML_SCHEMAS_DOUBLE = 14
const XML_SCHEMAS_BOOLEAN = 15
const XML_SCHEMAS_TOKEN = 16
const XML_SCHEMAS_LANGUAGE = 17
const XML_SCHEMAS_NMTOKEN = 18
const XML_SCHEMAS_NMTOKENS = 19
const XML_SCHEMAS_NAME = 20
const XML_SCHEMAS_QNAME = 21
const XML_SCHEMAS_NCNAME = 22
const XML_SCHEMAS_ID = 23
const XML_SCHEMAS_IDREF = 24
const XML_SCHEMAS_IDREFS = 25
const XML_SCHEMAS_ENTITY = 26
const XML_SCHEMAS_ENTITIES = 27
const XML_SCHEMAS_NOTATION = 28
const XML_SCHEMAS_ANYURI = 29
const XML_SCHEMAS_INTEGER = 30
const XML_SCHEMAS_NPINTEGER = 31
const XML_SCHEMAS_NINTEGER = 32
const XML_SCHEMAS_NNINTEGER = 33
const XML_SCHEMAS_PINTEGER = 34
const XML_SCHEMAS_INT = 35
const XML_SCHEMAS_UINT = 36
const XML_SCHEMAS_LONG = 37
const XML_SCHEMAS_ULONG = 38
const XML_SCHEMAS_SHORT = 39
const XML_SCHEMAS_USHORT = 40
const XML_SCHEMAS_BYTE = 41
const XML_SCHEMAS_UBYTE = 42
const XML_SCHEMAS_HEXBINARY = 43
const XML_SCHEMAS_BASE64BINARY = 44
const XML_SCHEMAS_ANYTYPE = 45
const XML_SCHEMAS_ANYSIMPLETYPE = 46
# end
# enum xmlSchemaTypeType
@ctypedef xmlSchemaTypeType Uint32
const XML_SCHEMA_TYPE_BASIC = 1
const XML_SCHEMA_TYPE_ANY = 2
const XML_SCHEMA_TYPE_FACET = 3
const XML_SCHEMA_TYPE_SIMPLE = 4
const XML_SCHEMA_TYPE_COMPLEX = 5
const XML_SCHEMA_TYPE_SEQUENCE = 6
const XML_SCHEMA_TYPE_CHOICE = 7
const XML_SCHEMA_TYPE_ALL = 8
const XML_SCHEMA_TYPE_SIMPLE_CONTENT = 9
const XML_SCHEMA_TYPE_COMPLEX_CONTENT = 10
const XML_SCHEMA_TYPE_UR = 11
const XML_SCHEMA_TYPE_RESTRICTION = 12
const XML_SCHEMA_TYPE_EXTENSION = 13
const XML_SCHEMA_TYPE_ELEMENT = 14
const XML_SCHEMA_TYPE_ATTRIBUTE = 15
const XML_SCHEMA_TYPE_ATTRIBUTEGROUP = 16
const XML_SCHEMA_TYPE_GROUP = 17
const XML_SCHEMA_TYPE_NOTATION = 18
const XML_SCHEMA_TYPE_LIST = 19
const XML_SCHEMA_TYPE_UNION = 20
const XML_SCHEMA_TYPE_ANY_ATTRIBUTE = 21
const XML_SCHEMA_TYPE_IDC_UNIQUE = 22
const XML_SCHEMA_TYPE_IDC_KEY = 23
const XML_SCHEMA_TYPE_IDC_KEYREF = 24
const XML_SCHEMA_TYPE_PARTICLE = 25
const XML_SCHEMA_TYPE_ATTRIBUTE_USE = 26
const XML_SCHEMA_FACET_MININCLUSIVE = 1000
const XML_SCHEMA_FACET_MINEXCLUSIVE = 1001
const XML_SCHEMA_FACET_MAXINCLUSIVE = 1002
const XML_SCHEMA_FACET_MAXEXCLUSIVE = 1003
const XML_SCHEMA_FACET_TOTALDIGITS = 1004
const XML_SCHEMA_FACET_FRACTIONDIGITS = 1005
const XML_SCHEMA_FACET_PATTERN = 1006
const XML_SCHEMA_FACET_ENUMERATION = 1007
const XML_SCHEMA_FACET_WHITESPACE = 1008
const XML_SCHEMA_FACET_LENGTH = 1009
const XML_SCHEMA_FACET_MAXLENGTH = 1010
const XML_SCHEMA_FACET_MINLENGTH = 1011
const XML_SCHEMA_EXTRA_QNAMEREF = 2000
const XML_SCHEMA_EXTRA_ATTR_USE_PROHIB = 2001
# end
# enum xmlSchemaContentType
@ctypedef xmlSchemaContentType Uint32
const XML_SCHEMA_CONTENT_UNKNOWN = 0
const XML_SCHEMA_CONTENT_EMPTY = 1
const XML_SCHEMA_CONTENT_ELEMENTS = 2
const XML_SCHEMA_CONTENT_MIXED = 3
const XML_SCHEMA_CONTENT_SIMPLE = 4
const XML_SCHEMA_CONTENT_MIXED_OR_ELEMENTS = 5
const XML_SCHEMA_CONTENT_BASIC = 6
const XML_SCHEMA_CONTENT_ANY = 7
# end
@ctypedef xmlSchemaVal Void
@ctypedef xmlSchemaValPtr Ptr{:xmlSchemaVal}
@ctypedef xmlSchemaType Void
@ctypedef xmlSchemaTypePtr Ptr{:xmlSchemaType}
@ctypedef xmlSchemaFacet Void
@ctypedef xmlSchemaFacetPtr Ptr{:xmlSchemaFacet}
@ctypedef xmlSchemaAnnot Void
@ctypedef xmlSchemaAnnotPtr Ptr{:xmlSchemaAnnot}
@ctypedef xmlSchemaAttribute Void
@ctypedef xmlSchemaAttributePtr Ptr{:xmlSchemaAttribute}
@ctypedef xmlSchemaAttributeLink Void
@ctypedef xmlSchemaAttributeLinkPtr Ptr{:xmlSchemaAttributeLink}
@ctypedef xmlSchemaWildcardNs Void
@ctypedef xmlSchemaWildcardNsPtr Ptr{:xmlSchemaWildcardNs}
@ctypedef xmlSchemaWildcard Void
@ctypedef xmlSchemaWildcardPtr Ptr{:xmlSchemaWildcard}
@ctypedef xmlSchemaAttributeGroup Void
@ctypedef xmlSchemaAttributeGroupPtr Ptr{:xmlSchemaAttributeGroup}
@ctypedef xmlSchemaTypeLink Void
@ctypedef xmlSchemaTypeLinkPtr Ptr{:xmlSchemaTypeLink}
@ctypedef xmlSchemaFacetLink Void
@ctypedef xmlSchemaFacetLinkPtr Ptr{:xmlSchemaFacetLink}
@ctypedef xmlSchemaElement Void
@ctypedef xmlSchemaElementPtr Ptr{:xmlSchemaElement}
@ctypedef xmlSchemaNotation Void
@ctypedef xmlSchemaNotationPtr Ptr{:xmlSchemaNotation}
@c None xmlSchemaFreeType (:xmlSchemaTypePtr,) shlib
@c None xmlSchemaFreeWildcard (:xmlSchemaWildcardPtr,) shlib

# header: /usr/include/libxml2/libxml/schematron.h
# enum xmlSchematronValidOptions
@ctypedef xmlSchematronValidOptions Uint32
const XML_SCHEMATRON_OUT_QUIET = 1
const XML_SCHEMATRON_OUT_TEXT = 2
const XML_SCHEMATRON_OUT_XML = 4
const XML_SCHEMATRON_OUT_ERROR = 8
const XML_SCHEMATRON_OUT_FILE = 256
const XML_SCHEMATRON_OUT_BUFFER = 512
const XML_SCHEMATRON_OUT_IO = 1024
# end
@ctypedef xmlSchematron Void
@ctypedef xmlSchematronPtr Ptr{:xmlSchematron}
@ctypedef xmlSchematronValidityErrorFunc Ptr{:Void}
@ctypedef xmlSchematronValidityWarningFunc Ptr{:Void}
@ctypedef xmlSchematronParserCtxt Void
@ctypedef xmlSchematronParserCtxtPtr Ptr{:xmlSchematronParserCtxt}
@ctypedef xmlSchematronValidCtxt Void
@ctypedef xmlSchematronValidCtxtPtr Ptr{:xmlSchematronValidCtxt}
@c xmlSchematronParserCtxtPtr xmlSchematronNewParserCtxt (Ptr{:Uint8},) shlib
@c xmlSchematronParserCtxtPtr xmlSchematronNewMemParserCtxt (Ptr{:Uint8},:Int32) shlib
@c xmlSchematronParserCtxtPtr xmlSchematronNewDocParserCtxt (:xmlDocPtr,) shlib
@c None xmlSchematronFreeParserCtxt (:xmlSchematronParserCtxtPtr,) shlib
@c xmlSchematronPtr xmlSchematronParse (:xmlSchematronParserCtxtPtr,) shlib
@c None xmlSchematronFree (:xmlSchematronPtr,) shlib
@c None xmlSchematronSetValidStructuredErrors (:xmlSchematronValidCtxtPtr,:xmlStructuredErrorFunc,Ptr{:None}) shlib
@c xmlSchematronValidCtxtPtr xmlSchematronNewValidCtxt (:xmlSchematronPtr,:Int32) shlib
@c None xmlSchematronFreeValidCtxt (:xmlSchematronValidCtxtPtr,) shlib
@c Int32 xmlSchematronValidateDoc (:xmlSchematronValidCtxtPtr,:xmlDocPtr) shlib

# header: /usr/include/libxml2/libxml/threads.h

# header: /usr/include/libxml2/libxml/tree.h

# header: /usr/include/libxml2/libxml/uri.h
@ctypedef xmlURI Void
@ctypedef xmlURIPtr Ptr{:xmlURI}
@c xmlURIPtr xmlCreateURI () shlib
@c Ptr{:xmlChar} xmlBuildURI (Ptr{:xmlChar},Ptr{:xmlChar}) shlib
@c Ptr{:xmlChar} xmlBuildRelativeURI (Ptr{:xmlChar},Ptr{:xmlChar}) shlib
@c xmlURIPtr xmlParseURI (Ptr{:Uint8},) shlib
@c xmlURIPtr xmlParseURIRaw (Ptr{:Uint8},:Int32) shlib
@c Int32 xmlParseURIReference (:xmlURIPtr,Ptr{:Uint8}) shlib
@c Ptr{:xmlChar} xmlSaveUri (:xmlURIPtr,) shlib
@c None xmlPrintURI (Ptr{:FILE},:xmlURIPtr) shlib
@c Ptr{:xmlChar} xmlURIEscapeStr (Ptr{:xmlChar},Ptr{:xmlChar}) shlib
@c Ptr{:Uint8} xmlURIUnescapeString (Ptr{:Uint8},:Int32,Ptr{:Uint8}) shlib
@c Int32 xmlNormalizeURIPath (Ptr{:Uint8},) shlib
@c Ptr{:xmlChar} xmlURIEscape (Ptr{:xmlChar},) shlib
@c None xmlFreeURI (:xmlURIPtr,) shlib
@c Ptr{:xmlChar} xmlCanonicPath (Ptr{:xmlChar},) shlib
@c Ptr{:xmlChar} xmlPathToURI (Ptr{:xmlChar},) shlib

# header: /usr/include/libxml2/libxml/valid.h

# header: /usr/include/libxml2/libxml/xinclude.h
@ctypedef xmlXIncludeCtxt Void
@ctypedef xmlXIncludeCtxtPtr Ptr{:xmlXIncludeCtxt}
@c Int32 xmlXIncludeProcess (:xmlDocPtr,) shlib
@c Int32 xmlXIncludeProcessFlags (:xmlDocPtr,:Int32) shlib
@c Int32 xmlXIncludeProcessFlagsData (:xmlDocPtr,:Int32,Ptr{:None}) shlib
@c Int32 xmlXIncludeProcessTreeFlagsData (:xmlNodePtr,:Int32,Ptr{:None}) shlib
@c Int32 xmlXIncludeProcessTree (:xmlNodePtr,) shlib
@c Int32 xmlXIncludeProcessTreeFlags (:xmlNodePtr,:Int32) shlib
@c xmlXIncludeCtxtPtr xmlXIncludeNewContext (:xmlDocPtr,) shlib
@c Int32 xmlXIncludeSetFlags (:xmlXIncludeCtxtPtr,:Int32) shlib
@c None xmlXIncludeFreeContext (:xmlXIncludeCtxtPtr,) shlib
@c Int32 xmlXIncludeProcessNode (:xmlXIncludeCtxtPtr,:xmlNodePtr) shlib

# header: /usr/include/libxml2/libxml/xlink.h

# header: /usr/include/libxml2/libxml/xmlautomata.h

# header: /usr/include/libxml2/libxml/xmlerror.h

# header: /usr/include/libxml2/libxml/xmlexports.h

# header: /usr/include/libxml2/libxml/xmlIO.h

# header: /usr/include/libxml2/libxml/xmlmemory.h

# header: /usr/include/libxml2/libxml/xmlmodule.h
@ctypedef xmlModule Void
@ctypedef xmlModulePtr Ptr{:xmlModule}
# enum xmlModuleOption
@ctypedef xmlModuleOption Uint32
const XML_MODULE_LAZY = 1
const XML_MODULE_LOCAL = 2
# end
@c xmlModulePtr xmlModuleOpen (Ptr{:Uint8},:Int32) shlib
@c Int32 xmlModuleSymbol (:xmlModulePtr,Ptr{:Uint8},Ptr{Ptr{:None}}) shlib
@c Int32 xmlModuleClose (:xmlModulePtr,) shlib
@c Int32 xmlModuleFree (:xmlModulePtr,) shlib

# header: /usr/include/libxml2/libxml/xmlreader.h
# enum xmlSchemaValidError
@ctypedef xmlSchemaValidError Uint32
const XML_SCHEMAS_ERR_OK = 0
const XML_SCHEMAS_ERR_NOROOT = 1
const XML_SCHEMAS_ERR_UNDECLAREDELEM = 2
const XML_SCHEMAS_ERR_NOTTOPLEVEL = 3
const XML_SCHEMAS_ERR_MISSING = 4
const XML_SCHEMAS_ERR_WRONGELEM = 5
const XML_SCHEMAS_ERR_NOTYPE = 6
const XML_SCHEMAS_ERR_NOROLLBACK = 7
const XML_SCHEMAS_ERR_ISABSTRACT = 8
const XML_SCHEMAS_ERR_NOTEMPTY = 9
const XML_SCHEMAS_ERR_ELEMCONT = 10
const XML_SCHEMAS_ERR_HAVEDEFAULT = 11
const XML_SCHEMAS_ERR_NOTNILLABLE = 12
const XML_SCHEMAS_ERR_EXTRACONTENT = 13
const XML_SCHEMAS_ERR_INVALIDATTR = 14
const XML_SCHEMAS_ERR_INVALIDELEM = 15
const XML_SCHEMAS_ERR_NOTDETERMINIST = 16
const XML_SCHEMAS_ERR_CONSTRUCT = 17
const XML_SCHEMAS_ERR_INTERNAL = 18
const XML_SCHEMAS_ERR_NOTSIMPLE = 19
const XML_SCHEMAS_ERR_ATTRUNKNOWN = 20
const XML_SCHEMAS_ERR_ATTRINVALID = 21
const XML_SCHEMAS_ERR_VALUE = 22
const XML_SCHEMAS_ERR_FACET = 23
const XML_SCHEMAS_ERR_ = 24
const XML_SCHEMAS_ERR_XXX = 25
# end
# enum xmlSchemaValidOption
@ctypedef xmlSchemaValidOption Uint32
const XML_SCHEMA_VAL_VC_I_CREATE = 1
# end
@ctypedef xmlSchema Void
@ctypedef xmlSchemaPtr Ptr{:xmlSchema}
@ctypedef xmlSchemaValidityErrorFunc Ptr{:Void}
@ctypedef xmlSchemaValidityWarningFunc Ptr{:Void}
@ctypedef xmlSchemaParserCtxt Void
@ctypedef xmlSchemaParserCtxtPtr Ptr{:xmlSchemaParserCtxt}
@ctypedef xmlSchemaValidCtxt Void
@ctypedef xmlSchemaValidCtxtPtr Ptr{:xmlSchemaValidCtxt}
@c xmlSchemaParserCtxtPtr xmlSchemaNewParserCtxt (Ptr{:Uint8},) shlib
@c xmlSchemaParserCtxtPtr xmlSchemaNewMemParserCtxt (Ptr{:Uint8},:Int32) shlib
@c xmlSchemaParserCtxtPtr xmlSchemaNewDocParserCtxt (:xmlDocPtr,) shlib
@c None xmlSchemaFreeParserCtxt (:xmlSchemaParserCtxtPtr,) shlib
@c None xmlSchemaSetParserErrors (:xmlSchemaParserCtxtPtr,:xmlSchemaValidityErrorFunc,:xmlSchemaValidityWarningFunc,Ptr{:None}) shlib
@c None xmlSchemaSetParserStructuredErrors (:xmlSchemaParserCtxtPtr,:xmlStructuredErrorFunc,Ptr{:None}) shlib
@c Int32 xmlSchemaGetParserErrors (:xmlSchemaParserCtxtPtr,Ptr{:xmlSchemaValidityErrorFunc},Ptr{:xmlSchemaValidityWarningFunc},Ptr{Ptr{:None}}) shlib
@c Int32 xmlSchemaIsValid (:xmlSchemaValidCtxtPtr,) shlib
@c xmlSchemaPtr xmlSchemaParse (:xmlSchemaParserCtxtPtr,) shlib
@c None xmlSchemaFree (:xmlSchemaPtr,) shlib
@c None xmlSchemaDump (Ptr{:FILE},:xmlSchemaPtr) shlib
@c None xmlSchemaSetValidErrors (:xmlSchemaValidCtxtPtr,:xmlSchemaValidityErrorFunc,:xmlSchemaValidityWarningFunc,Ptr{:None}) shlib
@c None xmlSchemaSetValidStructuredErrors (:xmlSchemaValidCtxtPtr,:xmlStructuredErrorFunc,Ptr{:None}) shlib
@c Int32 xmlSchemaGetValidErrors (:xmlSchemaValidCtxtPtr,Ptr{:xmlSchemaValidityErrorFunc},Ptr{:xmlSchemaValidityWarningFunc},Ptr{Ptr{:None}}) shlib
@c Int32 xmlSchemaSetValidOptions (:xmlSchemaValidCtxtPtr,:Int32) shlib
@c Int32 xmlSchemaValidCtxtGetOptions (:xmlSchemaValidCtxtPtr,) shlib
@c xmlSchemaValidCtxtPtr xmlSchemaNewValidCtxt (:xmlSchemaPtr,) shlib
@c None xmlSchemaFreeValidCtxt (:xmlSchemaValidCtxtPtr,) shlib
@c Int32 xmlSchemaValidateDoc (:xmlSchemaValidCtxtPtr,:xmlDocPtr) shlib
@c Int32 xmlSchemaValidateOneElement (:xmlSchemaValidCtxtPtr,:xmlNodePtr) shlib
@c Int32 xmlSchemaValidateStream (:xmlSchemaValidCtxtPtr,:xmlParserInputBufferPtr,:xmlCharEncoding,:xmlSAXHandlerPtr,Ptr{:None}) shlib
@c Int32 xmlSchemaValidateFile (:xmlSchemaValidCtxtPtr,Ptr{:Uint8},:Int32) shlib
@c xmlParserCtxtPtr xmlSchemaValidCtxtGetParserCtxt (:xmlSchemaValidCtxtPtr,) shlib
@ctypedef xmlSchemaSAXPlugStruct Void
@ctypedef xmlSchemaSAXPlugPtr Ptr{:xmlSchemaSAXPlugStruct}
@c xmlSchemaSAXPlugPtr xmlSchemaSAXPlug (:xmlSchemaValidCtxtPtr,Ptr{:xmlSAXHandlerPtr},Ptr{Ptr{:None}}) shlib
@c Int32 xmlSchemaSAXUnplug (:xmlSchemaSAXPlugPtr,) shlib
# enum xmlParserSeverities
@ctypedef xmlParserSeverities Uint32
const XML_PARSER_SEVERITY_VALIDITY_WARNING = 1
const XML_PARSER_SEVERITY_VALIDITY_ERROR = 2
const XML_PARSER_SEVERITY_WARNING = 3
const XML_PARSER_SEVERITY_ERROR = 4
# end
# enum xmlTextReaderMode
@ctypedef xmlTextReaderMode Uint32
const XML_TEXTREADER_MODE_INITIAL = 0
const XML_TEXTREADER_MODE_INTERACTIVE = 1
const XML_TEXTREADER_MODE_ERROR = 2
const XML_TEXTREADER_MODE_EOF = 3
const XML_TEXTREADER_MODE_CLOSED = 4
const XML_TEXTREADER_MODE_READING = 5
# end
# enum xmlParserProperties
@ctypedef xmlParserProperties Uint32
const XML_PARSER_LOADDTD = 1
const XML_PARSER_DEFAULTATTRS = 2
const XML_PARSER_VALIDATE = 3
const XML_PARSER_SUBST_ENTITIES = 4
# end
# enum xmlReaderTypes
@ctypedef xmlReaderTypes Uint32
const XML_READER_TYPE_NONE = 0
const XML_READER_TYPE_ELEMENT = 1
const XML_READER_TYPE_ATTRIBUTE = 2
const XML_READER_TYPE_TEXT = 3
const XML_READER_TYPE_CDATA = 4
const XML_READER_TYPE_ENTITY_REFERENCE = 5
const XML_READER_TYPE_ENTITY = 6
const XML_READER_TYPE_PROCESSING_INSTRUCTION = 7
const XML_READER_TYPE_COMMENT = 8
const XML_READER_TYPE_DOCUMENT = 9
const XML_READER_TYPE_DOCUMENT_TYPE = 10
const XML_READER_TYPE_DOCUMENT_FRAGMENT = 11
const XML_READER_TYPE_NOTATION = 12
const XML_READER_TYPE_WHITESPACE = 13
const XML_READER_TYPE_SIGNIFICANT_WHITESPACE = 14
const XML_READER_TYPE_END_ELEMENT = 15
const XML_READER_TYPE_END_ENTITY = 16
const XML_READER_TYPE_XML_DECLARATION = 17
# end
@ctypedef xmlTextReader Void
@ctypedef xmlTextReaderPtr Ptr{:xmlTextReader}
@c xmlTextReaderPtr xmlNewTextReader (:xmlParserInputBufferPtr,Ptr{:Uint8}) shlib
@c xmlTextReaderPtr xmlNewTextReaderFilename (Ptr{:Uint8},) shlib
@c None xmlFreeTextReader (:xmlTextReaderPtr,) shlib
@c Int32 xmlTextReaderSetup (:xmlTextReaderPtr,:xmlParserInputBufferPtr,Ptr{:Uint8},Ptr{:Uint8},:Int32) shlib
@c Int32 xmlTextReaderRead (:xmlTextReaderPtr,) shlib
@c Ptr{:xmlChar} xmlTextReaderReadInnerXml (:xmlTextReaderPtr,) shlib
@c Ptr{:xmlChar} xmlTextReaderReadOuterXml (:xmlTextReaderPtr,) shlib
@c Ptr{:xmlChar} xmlTextReaderReadString (:xmlTextReaderPtr,) shlib
@c Int32 xmlTextReaderReadAttributeValue (:xmlTextReaderPtr,) shlib
@c Int32 xmlTextReaderAttributeCount (:xmlTextReaderPtr,) shlib
@c Int32 xmlTextReaderDepth (:xmlTextReaderPtr,) shlib
@c Int32 xmlTextReaderHasAttributes (:xmlTextReaderPtr,) shlib
@c Int32 xmlTextReaderHasValue (:xmlTextReaderPtr,) shlib
@c Int32 xmlTextReaderIsDefault (:xmlTextReaderPtr,) shlib
@c Int32 xmlTextReaderIsEmptyElement (:xmlTextReaderPtr,) shlib
@c Int32 xmlTextReaderNodeType (:xmlTextReaderPtr,) shlib
@c Int32 xmlTextReaderQuoteChar (:xmlTextReaderPtr,) shlib
@c Int32 xmlTextReaderReadState (:xmlTextReaderPtr,) shlib
@c Int32 xmlTextReaderIsNamespaceDecl (:xmlTextReaderPtr,) shlib
@c Ptr{:xmlChar} xmlTextReaderConstBaseUri (:xmlTextReaderPtr,) shlib
@c Ptr{:xmlChar} xmlTextReaderConstLocalName (:xmlTextReaderPtr,) shlib
@c Ptr{:xmlChar} xmlTextReaderConstName (:xmlTextReaderPtr,) shlib
@c Ptr{:xmlChar} xmlTextReaderConstNamespaceUri (:xmlTextReaderPtr,) shlib
@c Ptr{:xmlChar} xmlTextReaderConstPrefix (:xmlTextReaderPtr,) shlib
@c Ptr{:xmlChar} xmlTextReaderConstXmlLang (:xmlTextReaderPtr,) shlib
@c Ptr{:xmlChar} xmlTextReaderConstString (:xmlTextReaderPtr,Ptr{:xmlChar}) shlib
@c Ptr{:xmlChar} xmlTextReaderConstValue (:xmlTextReaderPtr,) shlib
@c Ptr{:xmlChar} xmlTextReaderBaseUri (:xmlTextReaderPtr,) shlib
@c Ptr{:xmlChar} xmlTextReaderLocalName (:xmlTextReaderPtr,) shlib
@c Ptr{:xmlChar} xmlTextReaderName (:xmlTextReaderPtr,) shlib
@c Ptr{:xmlChar} xmlTextReaderNamespaceUri (:xmlTextReaderPtr,) shlib
@c Ptr{:xmlChar} xmlTextReaderPrefix (:xmlTextReaderPtr,) shlib
@c Ptr{:xmlChar} xmlTextReaderXmlLang (:xmlTextReaderPtr,) shlib
@c Ptr{:xmlChar} xmlTextReaderValue (:xmlTextReaderPtr,) shlib
@c Int32 xmlTextReaderClose (:xmlTextReaderPtr,) shlib
@c Ptr{:xmlChar} xmlTextReaderGetAttributeNo (:xmlTextReaderPtr,:Int32) shlib
@c Ptr{:xmlChar} xmlTextReaderGetAttribute (:xmlTextReaderPtr,Ptr{:xmlChar}) shlib
@c Ptr{:xmlChar} xmlTextReaderGetAttributeNs (:xmlTextReaderPtr,Ptr{:xmlChar},Ptr{:xmlChar}) shlib
@c xmlParserInputBufferPtr xmlTextReaderGetRemainder (:xmlTextReaderPtr,) shlib
@c Ptr{:xmlChar} xmlTextReaderLookupNamespace (:xmlTextReaderPtr,Ptr{:xmlChar}) shlib
@c Int32 xmlTextReaderMoveToAttributeNo (:xmlTextReaderPtr,:Int32) shlib
@c Int32 xmlTextReaderMoveToAttribute (:xmlTextReaderPtr,Ptr{:xmlChar}) shlib
@c Int32 xmlTextReaderMoveToAttributeNs (:xmlTextReaderPtr,Ptr{:xmlChar},Ptr{:xmlChar}) shlib
@c Int32 xmlTextReaderMoveToFirstAttribute (:xmlTextReaderPtr,) shlib
@c Int32 xmlTextReaderMoveToNextAttribute (:xmlTextReaderPtr,) shlib
@c Int32 xmlTextReaderMoveToElement (:xmlTextReaderPtr,) shlib
@c Int32 xmlTextReaderNormalization (:xmlTextReaderPtr,) shlib
@c Ptr{:xmlChar} xmlTextReaderConstEncoding (:xmlTextReaderPtr,) shlib
@c Int32 xmlTextReaderSetParserProp (:xmlTextReaderPtr,:Int32,:Int32) shlib
@c Int32 xmlTextReaderGetParserProp (:xmlTextReaderPtr,:Int32) shlib
@c xmlNodePtr xmlTextReaderCurrentNode (:xmlTextReaderPtr,) shlib
@c Int32 xmlTextReaderGetParserLineNumber (:xmlTextReaderPtr,) shlib
@c Int32 xmlTextReaderGetParserColumnNumber (:xmlTextReaderPtr,) shlib
@c xmlNodePtr xmlTextReaderPreserve (:xmlTextReaderPtr,) shlib
@c Int32 xmlTextReaderPreservePattern (:xmlTextReaderPtr,Ptr{:xmlChar},Ptr{Ptr{:xmlChar}}) shlib
@c xmlDocPtr xmlTextReaderCurrentDoc (:xmlTextReaderPtr,) shlib
@c xmlNodePtr xmlTextReaderExpand (:xmlTextReaderPtr,) shlib
@c Int32 xmlTextReaderNext (:xmlTextReaderPtr,) shlib
@c Int32 xmlTextReaderNextSibling (:xmlTextReaderPtr,) shlib
@c Int32 xmlTextReaderIsValid (:xmlTextReaderPtr,) shlib
@c Int32 xmlTextReaderRelaxNGValidate (:xmlTextReaderPtr,Ptr{:Uint8}) shlib
@c Int32 xmlTextReaderRelaxNGSetSchema (:xmlTextReaderPtr,:xmlRelaxNGPtr) shlib
@c Int32 xmlTextReaderSchemaValidate (:xmlTextReaderPtr,Ptr{:Uint8}) shlib
@c Int32 xmlTextReaderSchemaValidateCtxt (:xmlTextReaderPtr,:xmlSchemaValidCtxtPtr,:Int32) shlib
@c Int32 xmlTextReaderSetSchema (:xmlTextReaderPtr,:xmlSchemaPtr) shlib
@c Ptr{:xmlChar} xmlTextReaderConstXmlVersion (:xmlTextReaderPtr,) shlib
@c Int32 xmlTextReaderStandalone (:xmlTextReaderPtr,) shlib
@c Int64 xmlTextReaderByteConsumed (:xmlTextReaderPtr,) shlib
@c xmlTextReaderPtr xmlReaderWalker (:xmlDocPtr,) shlib
@c xmlTextReaderPtr xmlReaderForDoc (Ptr{:xmlChar},Ptr{:Uint8},Ptr{:Uint8},:Int32) shlib
@c xmlTextReaderPtr xmlReaderForFile (Ptr{:Uint8},Ptr{:Uint8},:Int32) shlib
@c xmlTextReaderPtr xmlReaderForMemory (Ptr{:Uint8},:Int32,Ptr{:Uint8},Ptr{:Uint8},:Int32) shlib
@c xmlTextReaderPtr xmlReaderForFd (:Int32,Ptr{:Uint8},Ptr{:Uint8},:Int32) shlib
@c xmlTextReaderPtr xmlReaderForIO (:xmlInputReadCallback,:xmlInputCloseCallback,Ptr{:None},Ptr{:Uint8},Ptr{:Uint8},:Int32) shlib
@c Int32 xmlReaderNewWalker (:xmlTextReaderPtr,:xmlDocPtr) shlib
@c Int32 xmlReaderNewDoc (:xmlTextReaderPtr,Ptr{:xmlChar},Ptr{:Uint8},Ptr{:Uint8},:Int32) shlib
@c Int32 xmlReaderNewFile (:xmlTextReaderPtr,Ptr{:Uint8},Ptr{:Uint8},:Int32) shlib
@c Int32 xmlReaderNewMemory (:xmlTextReaderPtr,Ptr{:Uint8},:Int32,Ptr{:Uint8},Ptr{:Uint8},:Int32) shlib
@c Int32 xmlReaderNewFd (:xmlTextReaderPtr,:Int32,Ptr{:Uint8},Ptr{:Uint8},:Int32) shlib
@c Int32 xmlReaderNewIO (:xmlTextReaderPtr,:xmlInputReadCallback,:xmlInputCloseCallback,Ptr{:None},Ptr{:Uint8},Ptr{:Uint8},:Int32) shlib
@ctypedef xmlTextReaderLocatorPtr Ptr{:None}
@ctypedef xmlTextReaderErrorFunc Ptr{:Void}
@c Int32 xmlTextReaderLocatorLineNumber (:xmlTextReaderLocatorPtr,) shlib
@c Ptr{:xmlChar} xmlTextReaderLocatorBaseURI (:xmlTextReaderLocatorPtr,) shlib
@c None xmlTextReaderSetErrorHandler (:xmlTextReaderPtr,:xmlTextReaderErrorFunc,Ptr{:None}) shlib
@c None xmlTextReaderSetStructuredErrorHandler (:xmlTextReaderPtr,:xmlStructuredErrorFunc,Ptr{:None}) shlib
@c None xmlTextReaderGetErrorHandler (:xmlTextReaderPtr,Ptr{:xmlTextReaderErrorFunc},Ptr{Ptr{:None}}) shlib

# header: /usr/include/libxml2/libxml/xmlregexp.h

# header: /usr/include/libxml2/libxml/xmlsave.h
# enum xmlSaveOption
@ctypedef xmlSaveOption Uint32
const XML_SAVE_FORMAT = 1
const XML_SAVE_NO_DECL = 2
const XML_SAVE_NO_EMPTY = 4
const XML_SAVE_NO_XHTML = 8
const XML_SAVE_XHTML = 16
const XML_SAVE_AS_XML = 32
const XML_SAVE_AS_HTML = 64
const XML_SAVE_WSNONSIG = 128
# end
@ctypedef xmlSaveCtxt Void
@ctypedef xmlSaveCtxtPtr Ptr{:xmlSaveCtxt}
@c xmlSaveCtxtPtr xmlSaveToFd (:Int32,Ptr{:Uint8},:Int32) shlib
@c xmlSaveCtxtPtr xmlSaveToFilename (Ptr{:Uint8},Ptr{:Uint8},:Int32) shlib
@c xmlSaveCtxtPtr xmlSaveToBuffer (:xmlBufferPtr,Ptr{:Uint8},:Int32) shlib
@c xmlSaveCtxtPtr xmlSaveToIO (:xmlOutputWriteCallback,:xmlOutputCloseCallback,Ptr{:None},Ptr{:Uint8},:Int32) shlib
@c Int64 xmlSaveDoc (:xmlSaveCtxtPtr,:xmlDocPtr) shlib
@c Int64 xmlSaveTree (:xmlSaveCtxtPtr,:xmlNodePtr) shlib
@c Int32 xmlSaveFlush (:xmlSaveCtxtPtr,) shlib
@c Int32 xmlSaveClose (:xmlSaveCtxtPtr,) shlib
@c Int32 xmlSaveSetEscape (:xmlSaveCtxtPtr,:xmlCharEncodingOutputFunc) shlib
@c Int32 xmlSaveSetAttrEscape (:xmlSaveCtxtPtr,:xmlCharEncodingOutputFunc) shlib

# header: /usr/include/libxml2/libxml/xmlschemas.h

# header: /usr/include/libxml2/libxml/xmlschemastypes.h
# enum xmlSchemaWhitespaceValueType
@ctypedef xmlSchemaWhitespaceValueType Uint32
const XML_SCHEMA_WHITESPACE_UNKNOWN = 0
const XML_SCHEMA_WHITESPACE_PRESERVE = 1
const XML_SCHEMA_WHITESPACE_REPLACE = 2
const XML_SCHEMA_WHITESPACE_COLLAPSE = 3
# end
@c None xmlSchemaInitTypes () shlib
@c None xmlSchemaCleanupTypes () shlib
@c xmlSchemaTypePtr xmlSchemaGetPredefinedType (Ptr{:xmlChar},Ptr{:xmlChar}) shlib
@c Int32 xmlSchemaValidatePredefinedType (:xmlSchemaTypePtr,Ptr{:xmlChar},Ptr{:xmlSchemaValPtr}) shlib
@c Int32 xmlSchemaValPredefTypeNode (:xmlSchemaTypePtr,Ptr{:xmlChar},Ptr{:xmlSchemaValPtr},:xmlNodePtr) shlib
@c Int32 xmlSchemaValidateFacet (:xmlSchemaTypePtr,:xmlSchemaFacetPtr,Ptr{:xmlChar},:xmlSchemaValPtr) shlib
@c Int32 xmlSchemaValidateFacetWhtsp (:xmlSchemaFacetPtr,:xmlSchemaWhitespaceValueType,:xmlSchemaValType,Ptr{:xmlChar},:xmlSchemaValPtr,:xmlSchemaWhitespaceValueType) shlib
@c None xmlSchemaFreeValue (:xmlSchemaValPtr,) shlib
@c xmlSchemaFacetPtr xmlSchemaNewFacet () shlib
@c Int32 xmlSchemaCheckFacet (:xmlSchemaFacetPtr,:xmlSchemaTypePtr,:xmlSchemaParserCtxtPtr,Ptr{:xmlChar}) shlib
@c None xmlSchemaFreeFacet (:xmlSchemaFacetPtr,) shlib
@c Int32 xmlSchemaCompareValues (:xmlSchemaValPtr,:xmlSchemaValPtr) shlib
@c xmlSchemaTypePtr xmlSchemaGetBuiltInListSimpleTypeItemType (:xmlSchemaTypePtr,) shlib
@c Int32 xmlSchemaValidateListSimpleTypeFacet (:xmlSchemaFacetPtr,Ptr{:xmlChar},:Uint64,Ptr{:Uint64}) shlib
@c xmlSchemaTypePtr xmlSchemaGetBuiltInType (:xmlSchemaValType,) shlib
@c Int32 xmlSchemaIsBuiltInTypeFacet (:xmlSchemaTypePtr,:Int32) shlib
@c Ptr{:xmlChar} xmlSchemaCollapseString (Ptr{:xmlChar},) shlib
@c Ptr{:xmlChar} xmlSchemaWhiteSpaceReplace (Ptr{:xmlChar},) shlib
@c Uint64 xmlSchemaGetFacetValueAsULong (:xmlSchemaFacetPtr,) shlib
@c Int32 xmlSchemaValidateLengthFacet (:xmlSchemaTypePtr,:xmlSchemaFacetPtr,Ptr{:xmlChar},:xmlSchemaValPtr,Ptr{:Uint64}) shlib
@c Int32 xmlSchemaValidateLengthFacetWhtsp (:xmlSchemaFacetPtr,:xmlSchemaValType,Ptr{:xmlChar},:xmlSchemaValPtr,Ptr{:Uint64},:xmlSchemaWhitespaceValueType) shlib
@c Int32 xmlSchemaValPredefTypeNodeNoNorm (:xmlSchemaTypePtr,Ptr{:xmlChar},Ptr{:xmlSchemaValPtr},:xmlNodePtr) shlib
@c Int32 xmlSchemaGetCanonValue (:xmlSchemaValPtr,Ptr{Ptr{:xmlChar}}) shlib
@c Int32 xmlSchemaGetCanonValueWhtsp (:xmlSchemaValPtr,Ptr{Ptr{:xmlChar}},:xmlSchemaWhitespaceValueType) shlib
@c Int32 xmlSchemaValueAppend (:xmlSchemaValPtr,:xmlSchemaValPtr) shlib
@c xmlSchemaValPtr xmlSchemaValueGetNext (:xmlSchemaValPtr,) shlib
@c Ptr{:xmlChar} xmlSchemaValueGetAsString (:xmlSchemaValPtr,) shlib
@c Int32 xmlSchemaValueGetAsBoolean (:xmlSchemaValPtr,) shlib
@c xmlSchemaValPtr xmlSchemaNewStringValue (:xmlSchemaValType,Ptr{:xmlChar}) shlib
@c xmlSchemaValPtr xmlSchemaNewNOTATIONValue (Ptr{:xmlChar},Ptr{:xmlChar}) shlib
@c xmlSchemaValPtr xmlSchemaNewQNameValue (Ptr{:xmlChar},Ptr{:xmlChar}) shlib
@c Int32 xmlSchemaCompareValuesWhtsp (:xmlSchemaValPtr,:xmlSchemaWhitespaceValueType,:xmlSchemaValPtr,:xmlSchemaWhitespaceValueType) shlib
@c xmlSchemaValPtr xmlSchemaCopyValue (:xmlSchemaValPtr,) shlib
@c xmlSchemaValType xmlSchemaGetValType (:xmlSchemaValPtr,) shlib

# header: /usr/include/libxml2/libxml/xmlstring.h

# header: /usr/include/libxml2/libxml/xmlunicode.h
@c Int32 xmlUCSIsAegeanNumbers (:Int32,) shlib
@c Int32 xmlUCSIsAlphabeticPresentationForms (:Int32,) shlib
@c Int32 xmlUCSIsArabic (:Int32,) shlib
@c Int32 xmlUCSIsArabicPresentationFormsA (:Int32,) shlib
@c Int32 xmlUCSIsArabicPresentationFormsB (:Int32,) shlib
@c Int32 xmlUCSIsArmenian (:Int32,) shlib
@c Int32 xmlUCSIsArrows (:Int32,) shlib
@c Int32 xmlUCSIsBasicLatin (:Int32,) shlib
@c Int32 xmlUCSIsBengali (:Int32,) shlib
@c Int32 xmlUCSIsBlockElements (:Int32,) shlib
@c Int32 xmlUCSIsBopomofo (:Int32,) shlib
@c Int32 xmlUCSIsBopomofoExtended (:Int32,) shlib
@c Int32 xmlUCSIsBoxDrawing (:Int32,) shlib
@c Int32 xmlUCSIsBraillePatterns (:Int32,) shlib
@c Int32 xmlUCSIsBuhid (:Int32,) shlib
@c Int32 xmlUCSIsByzantineMusicalSymbols (:Int32,) shlib
@c Int32 xmlUCSIsCJKCompatibility (:Int32,) shlib
@c Int32 xmlUCSIsCJKCompatibilityForms (:Int32,) shlib
@c Int32 xmlUCSIsCJKCompatibilityIdeographs (:Int32,) shlib
@c Int32 xmlUCSIsCJKCompatibilityIdeographsSupplement (:Int32,) shlib
@c Int32 xmlUCSIsCJKRadicalsSupplement (:Int32,) shlib
@c Int32 xmlUCSIsCJKSymbolsandPunctuation (:Int32,) shlib
@c Int32 xmlUCSIsCJKUnifiedIdeographs (:Int32,) shlib
@c Int32 xmlUCSIsCJKUnifiedIdeographsExtensionA (:Int32,) shlib
@c Int32 xmlUCSIsCJKUnifiedIdeographsExtensionB (:Int32,) shlib
@c Int32 xmlUCSIsCherokee (:Int32,) shlib
@c Int32 xmlUCSIsCombiningDiacriticalMarks (:Int32,) shlib
@c Int32 xmlUCSIsCombiningDiacriticalMarksforSymbols (:Int32,) shlib
@c Int32 xmlUCSIsCombiningHalfMarks (:Int32,) shlib
@c Int32 xmlUCSIsCombiningMarksforSymbols (:Int32,) shlib
@c Int32 xmlUCSIsControlPictures (:Int32,) shlib
@c Int32 xmlUCSIsCurrencySymbols (:Int32,) shlib
@c Int32 xmlUCSIsCypriotSyllabary (:Int32,) shlib
@c Int32 xmlUCSIsCyrillic (:Int32,) shlib
@c Int32 xmlUCSIsCyrillicSupplement (:Int32,) shlib
@c Int32 xmlUCSIsDeseret (:Int32,) shlib
@c Int32 xmlUCSIsDevanagari (:Int32,) shlib
@c Int32 xmlUCSIsDingbats (:Int32,) shlib
@c Int32 xmlUCSIsEnclosedAlphanumerics (:Int32,) shlib
@c Int32 xmlUCSIsEnclosedCJKLettersandMonths (:Int32,) shlib
@c Int32 xmlUCSIsEthiopic (:Int32,) shlib
@c Int32 xmlUCSIsGeneralPunctuation (:Int32,) shlib
@c Int32 xmlUCSIsGeometricShapes (:Int32,) shlib
@c Int32 xmlUCSIsGeorgian (:Int32,) shlib
@c Int32 xmlUCSIsGothic (:Int32,) shlib
@c Int32 xmlUCSIsGreek (:Int32,) shlib
@c Int32 xmlUCSIsGreekExtended (:Int32,) shlib
@c Int32 xmlUCSIsGreekandCoptic (:Int32,) shlib
@c Int32 xmlUCSIsGujarati (:Int32,) shlib
@c Int32 xmlUCSIsGurmukhi (:Int32,) shlib
@c Int32 xmlUCSIsHalfwidthandFullwidthForms (:Int32,) shlib
@c Int32 xmlUCSIsHangulCompatibilityJamo (:Int32,) shlib
@c Int32 xmlUCSIsHangulJamo (:Int32,) shlib
@c Int32 xmlUCSIsHangulSyllables (:Int32,) shlib
@c Int32 xmlUCSIsHanunoo (:Int32,) shlib
@c Int32 xmlUCSIsHebrew (:Int32,) shlib
@c Int32 xmlUCSIsHighPrivateUseSurrogates (:Int32,) shlib
@c Int32 xmlUCSIsHighSurrogates (:Int32,) shlib
@c Int32 xmlUCSIsHiragana (:Int32,) shlib
@c Int32 xmlUCSIsIPAExtensions (:Int32,) shlib
@c Int32 xmlUCSIsIdeographicDescriptionCharacters (:Int32,) shlib
@c Int32 xmlUCSIsKanbun (:Int32,) shlib
@c Int32 xmlUCSIsKangxiRadicals (:Int32,) shlib
@c Int32 xmlUCSIsKannada (:Int32,) shlib
@c Int32 xmlUCSIsKatakana (:Int32,) shlib
@c Int32 xmlUCSIsKatakanaPhoneticExtensions (:Int32,) shlib
@c Int32 xmlUCSIsKhmer (:Int32,) shlib
@c Int32 xmlUCSIsKhmerSymbols (:Int32,) shlib
@c Int32 xmlUCSIsLao (:Int32,) shlib
@c Int32 xmlUCSIsLatin1Supplement (:Int32,) shlib
@c Int32 xmlUCSIsLatinExtendedA (:Int32,) shlib
@c Int32 xmlUCSIsLatinExtendedB (:Int32,) shlib
@c Int32 xmlUCSIsLatinExtendedAdditional (:Int32,) shlib
@c Int32 xmlUCSIsLetterlikeSymbols (:Int32,) shlib
@c Int32 xmlUCSIsLimbu (:Int32,) shlib
@c Int32 xmlUCSIsLinearBIdeograms (:Int32,) shlib
@c Int32 xmlUCSIsLinearBSyllabary (:Int32,) shlib
@c Int32 xmlUCSIsLowSurrogates (:Int32,) shlib
@c Int32 xmlUCSIsMalayalam (:Int32,) shlib
@c Int32 xmlUCSIsMathematicalAlphanumericSymbols (:Int32,) shlib
@c Int32 xmlUCSIsMathematicalOperators (:Int32,) shlib
@c Int32 xmlUCSIsMiscellaneousMathematicalSymbolsA (:Int32,) shlib
@c Int32 xmlUCSIsMiscellaneousMathematicalSymbolsB (:Int32,) shlib
@c Int32 xmlUCSIsMiscellaneousSymbols (:Int32,) shlib
@c Int32 xmlUCSIsMiscellaneousSymbolsandArrows (:Int32,) shlib
@c Int32 xmlUCSIsMiscellaneousTechnical (:Int32,) shlib
@c Int32 xmlUCSIsMongolian (:Int32,) shlib
@c Int32 xmlUCSIsMusicalSymbols (:Int32,) shlib
@c Int32 xmlUCSIsMyanmar (:Int32,) shlib
@c Int32 xmlUCSIsNumberForms (:Int32,) shlib
@c Int32 xmlUCSIsOgham (:Int32,) shlib
@c Int32 xmlUCSIsOldItalic (:Int32,) shlib
@c Int32 xmlUCSIsOpticalCharacterRecognition (:Int32,) shlib
@c Int32 xmlUCSIsOriya (:Int32,) shlib
@c Int32 xmlUCSIsOsmanya (:Int32,) shlib
@c Int32 xmlUCSIsPhoneticExtensions (:Int32,) shlib
@c Int32 xmlUCSIsPrivateUse (:Int32,) shlib
@c Int32 xmlUCSIsPrivateUseArea (:Int32,) shlib
@c Int32 xmlUCSIsRunic (:Int32,) shlib
@c Int32 xmlUCSIsShavian (:Int32,) shlib
@c Int32 xmlUCSIsSinhala (:Int32,) shlib
@c Int32 xmlUCSIsSmallFormVariants (:Int32,) shlib
@c Int32 xmlUCSIsSpacingModifierLetters (:Int32,) shlib
@c Int32 xmlUCSIsSpecials (:Int32,) shlib
@c Int32 xmlUCSIsSuperscriptsandSubscripts (:Int32,) shlib
@c Int32 xmlUCSIsSupplementalArrowsA (:Int32,) shlib
@c Int32 xmlUCSIsSupplementalArrowsB (:Int32,) shlib
@c Int32 xmlUCSIsSupplementalMathematicalOperators (:Int32,) shlib
@c Int32 xmlUCSIsSupplementaryPrivateUseAreaA (:Int32,) shlib
@c Int32 xmlUCSIsSupplementaryPrivateUseAreaB (:Int32,) shlib
@c Int32 xmlUCSIsSyriac (:Int32,) shlib
@c Int32 xmlUCSIsTagalog (:Int32,) shlib
@c Int32 xmlUCSIsTagbanwa (:Int32,) shlib
@c Int32 xmlUCSIsTags (:Int32,) shlib
@c Int32 xmlUCSIsTaiLe (:Int32,) shlib
@c Int32 xmlUCSIsTaiXuanJingSymbols (:Int32,) shlib
@c Int32 xmlUCSIsTamil (:Int32,) shlib
@c Int32 xmlUCSIsTelugu (:Int32,) shlib
@c Int32 xmlUCSIsThaana (:Int32,) shlib
@c Int32 xmlUCSIsThai (:Int32,) shlib
@c Int32 xmlUCSIsTibetan (:Int32,) shlib
@c Int32 xmlUCSIsUgaritic (:Int32,) shlib
@c Int32 xmlUCSIsUnifiedCanadianAboriginalSyllabics (:Int32,) shlib
@c Int32 xmlUCSIsVariationSelectors (:Int32,) shlib
@c Int32 xmlUCSIsVariationSelectorsSupplement (:Int32,) shlib
@c Int32 xmlUCSIsYiRadicals (:Int32,) shlib
@c Int32 xmlUCSIsYiSyllables (:Int32,) shlib
@c Int32 xmlUCSIsYijingHexagramSymbols (:Int32,) shlib
@c Int32 xmlUCSIsBlock (:Int32,Ptr{:Uint8}) shlib
@c Int32 xmlUCSIsCatC (:Int32,) shlib
@c Int32 xmlUCSIsCatCc (:Int32,) shlib
@c Int32 xmlUCSIsCatCf (:Int32,) shlib
@c Int32 xmlUCSIsCatCo (:Int32,) shlib
@c Int32 xmlUCSIsCatCs (:Int32,) shlib
@c Int32 xmlUCSIsCatL (:Int32,) shlib
@c Int32 xmlUCSIsCatLl (:Int32,) shlib
@c Int32 xmlUCSIsCatLm (:Int32,) shlib
@c Int32 xmlUCSIsCatLo (:Int32,) shlib
@c Int32 xmlUCSIsCatLt (:Int32,) shlib
@c Int32 xmlUCSIsCatLu (:Int32,) shlib
@c Int32 xmlUCSIsCatM (:Int32,) shlib
@c Int32 xmlUCSIsCatMc (:Int32,) shlib
@c Int32 xmlUCSIsCatMe (:Int32,) shlib
@c Int32 xmlUCSIsCatMn (:Int32,) shlib
@c Int32 xmlUCSIsCatN (:Int32,) shlib
@c Int32 xmlUCSIsCatNd (:Int32,) shlib
@c Int32 xmlUCSIsCatNl (:Int32,) shlib
@c Int32 xmlUCSIsCatNo (:Int32,) shlib
@c Int32 xmlUCSIsCatP (:Int32,) shlib
@c Int32 xmlUCSIsCatPc (:Int32,) shlib
@c Int32 xmlUCSIsCatPd (:Int32,) shlib
@c Int32 xmlUCSIsCatPe (:Int32,) shlib
@c Int32 xmlUCSIsCatPf (:Int32,) shlib
@c Int32 xmlUCSIsCatPi (:Int32,) shlib
@c Int32 xmlUCSIsCatPo (:Int32,) shlib
@c Int32 xmlUCSIsCatPs (:Int32,) shlib
@c Int32 xmlUCSIsCatS (:Int32,) shlib
@c Int32 xmlUCSIsCatSc (:Int32,) shlib
@c Int32 xmlUCSIsCatSk (:Int32,) shlib
@c Int32 xmlUCSIsCatSm (:Int32,) shlib
@c Int32 xmlUCSIsCatSo (:Int32,) shlib
@c Int32 xmlUCSIsCatZ (:Int32,) shlib
@c Int32 xmlUCSIsCatZl (:Int32,) shlib
@c Int32 xmlUCSIsCatZp (:Int32,) shlib
@c Int32 xmlUCSIsCatZs (:Int32,) shlib
@c Int32 xmlUCSIsCat (:Int32,Ptr{:Uint8}) shlib

# header: /usr/include/libxml2/libxml/xmlversion.h

# header: /usr/include/libxml2/libxml/xmlwriter.h
@ctypedef xmlTextWriter Void
@ctypedef xmlTextWriterPtr Ptr{:xmlTextWriter}
@c xmlTextWriterPtr xmlNewTextWriter (:xmlOutputBufferPtr,) shlib
@c xmlTextWriterPtr xmlNewTextWriterFilename (Ptr{:Uint8},:Int32) shlib
@c xmlTextWriterPtr xmlNewTextWriterMemory (:xmlBufferPtr,:Int32) shlib
@c xmlTextWriterPtr xmlNewTextWriterPushParser (:xmlParserCtxtPtr,:Int32) shlib
@c xmlTextWriterPtr xmlNewTextWriterDoc (Ptr{:xmlDocPtr},:Int32) shlib
@c xmlTextWriterPtr xmlNewTextWriterTree (:xmlDocPtr,:xmlNodePtr,:Int32) shlib
@c None xmlFreeTextWriter (:xmlTextWriterPtr,) shlib
@c Int32 xmlTextWriterStartDocument (:xmlTextWriterPtr,Ptr{:Uint8},Ptr{:Uint8},Ptr{:Uint8}) shlib
@c Int32 xmlTextWriterEndDocument (:xmlTextWriterPtr,) shlib
@c Int32 xmlTextWriterStartComment (:xmlTextWriterPtr,) shlib
@c Int32 xmlTextWriterEndComment (:xmlTextWriterPtr,) shlib
@c Int32 xmlTextWriterWriteFormatComment (:xmlTextWriterPtr,Ptr{:Uint8}) shlib
@c Int32 xmlTextWriterWriteVFormatComment (:xmlTextWriterPtr,Ptr{:Uint8},Ptr{:__va_list_tag}) shlib
@c Int32 xmlTextWriterWriteComment (:xmlTextWriterPtr,Ptr{:xmlChar}) shlib
@c Int32 xmlTextWriterStartElement (:xmlTextWriterPtr,Ptr{:xmlChar}) shlib
@c Int32 xmlTextWriterStartElementNS (:xmlTextWriterPtr,Ptr{:xmlChar},Ptr{:xmlChar},Ptr{:xmlChar}) shlib
@c Int32 xmlTextWriterEndElement (:xmlTextWriterPtr,) shlib
@c Int32 xmlTextWriterFullEndElement (:xmlTextWriterPtr,) shlib
@c Int32 xmlTextWriterWriteFormatElement (:xmlTextWriterPtr,Ptr{:xmlChar},Ptr{:Uint8}) shlib
@c Int32 xmlTextWriterWriteVFormatElement (:xmlTextWriterPtr,Ptr{:xmlChar},Ptr{:Uint8},Ptr{:__va_list_tag}) shlib
@c Int32 xmlTextWriterWriteElement (:xmlTextWriterPtr,Ptr{:xmlChar},Ptr{:xmlChar}) shlib
@c Int32 xmlTextWriterWriteFormatElementNS (:xmlTextWriterPtr,Ptr{:xmlChar},Ptr{:xmlChar},Ptr{:xmlChar},Ptr{:Uint8}) shlib
@c Int32 xmlTextWriterWriteVFormatElementNS (:xmlTextWriterPtr,Ptr{:xmlChar},Ptr{:xmlChar},Ptr{:xmlChar},Ptr{:Uint8},Ptr{:__va_list_tag}) shlib
@c Int32 xmlTextWriterWriteElementNS (:xmlTextWriterPtr,Ptr{:xmlChar},Ptr{:xmlChar},Ptr{:xmlChar},Ptr{:xmlChar}) shlib
@c Int32 xmlTextWriterWriteFormatRaw (:xmlTextWriterPtr,Ptr{:Uint8}) shlib
@c Int32 xmlTextWriterWriteVFormatRaw (:xmlTextWriterPtr,Ptr{:Uint8},Ptr{:__va_list_tag}) shlib
@c Int32 xmlTextWriterWriteRawLen (:xmlTextWriterPtr,Ptr{:xmlChar},:Int32) shlib
@c Int32 xmlTextWriterWriteRaw (:xmlTextWriterPtr,Ptr{:xmlChar}) shlib
@c Int32 xmlTextWriterWriteFormatString (:xmlTextWriterPtr,Ptr{:Uint8}) shlib
@c Int32 xmlTextWriterWriteVFormatString (:xmlTextWriterPtr,Ptr{:Uint8},Ptr{:__va_list_tag}) shlib
@c Int32 xmlTextWriterWriteString (:xmlTextWriterPtr,Ptr{:xmlChar}) shlib
@c Int32 xmlTextWriterWriteBase64 (:xmlTextWriterPtr,Ptr{:Uint8},:Int32,:Int32) shlib
@c Int32 xmlTextWriterWriteBinHex (:xmlTextWriterPtr,Ptr{:Uint8},:Int32,:Int32) shlib
@c Int32 xmlTextWriterStartAttribute (:xmlTextWriterPtr,Ptr{:xmlChar}) shlib
@c Int32 xmlTextWriterStartAttributeNS (:xmlTextWriterPtr,Ptr{:xmlChar},Ptr{:xmlChar},Ptr{:xmlChar}) shlib
@c Int32 xmlTextWriterEndAttribute (:xmlTextWriterPtr,) shlib
@c Int32 xmlTextWriterWriteFormatAttribute (:xmlTextWriterPtr,Ptr{:xmlChar},Ptr{:Uint8}) shlib
@c Int32 xmlTextWriterWriteVFormatAttribute (:xmlTextWriterPtr,Ptr{:xmlChar},Ptr{:Uint8},Ptr{:__va_list_tag}) shlib
@c Int32 xmlTextWriterWriteAttribute (:xmlTextWriterPtr,Ptr{:xmlChar},Ptr{:xmlChar}) shlib
@c Int32 xmlTextWriterWriteFormatAttributeNS (:xmlTextWriterPtr,Ptr{:xmlChar},Ptr{:xmlChar},Ptr{:xmlChar},Ptr{:Uint8}) shlib
@c Int32 xmlTextWriterWriteVFormatAttributeNS (:xmlTextWriterPtr,Ptr{:xmlChar},Ptr{:xmlChar},Ptr{:xmlChar},Ptr{:Uint8},Ptr{:__va_list_tag}) shlib
@c Int32 xmlTextWriterWriteAttributeNS (:xmlTextWriterPtr,Ptr{:xmlChar},Ptr{:xmlChar},Ptr{:xmlChar},Ptr{:xmlChar}) shlib
@c Int32 xmlTextWriterStartPI (:xmlTextWriterPtr,Ptr{:xmlChar}) shlib
@c Int32 xmlTextWriterEndPI (:xmlTextWriterPtr,) shlib
@c Int32 xmlTextWriterWriteFormatPI (:xmlTextWriterPtr,Ptr{:xmlChar},Ptr{:Uint8}) shlib
@c Int32 xmlTextWriterWriteVFormatPI (:xmlTextWriterPtr,Ptr{:xmlChar},Ptr{:Uint8},Ptr{:__va_list_tag}) shlib
@c Int32 xmlTextWriterWritePI (:xmlTextWriterPtr,Ptr{:xmlChar},Ptr{:xmlChar}) shlib
@c Int32 xmlTextWriterStartCDATA (:xmlTextWriterPtr,) shlib
@c Int32 xmlTextWriterEndCDATA (:xmlTextWriterPtr,) shlib
@c Int32 xmlTextWriterWriteFormatCDATA (:xmlTextWriterPtr,Ptr{:Uint8}) shlib
@c Int32 xmlTextWriterWriteVFormatCDATA (:xmlTextWriterPtr,Ptr{:Uint8},Ptr{:__va_list_tag}) shlib
@c Int32 xmlTextWriterWriteCDATA (:xmlTextWriterPtr,Ptr{:xmlChar}) shlib
@c Int32 xmlTextWriterStartDTD (:xmlTextWriterPtr,Ptr{:xmlChar},Ptr{:xmlChar},Ptr{:xmlChar}) shlib
@c Int32 xmlTextWriterEndDTD (:xmlTextWriterPtr,) shlib
@c Int32 xmlTextWriterWriteFormatDTD (:xmlTextWriterPtr,Ptr{:xmlChar},Ptr{:xmlChar},Ptr{:xmlChar},Ptr{:Uint8}) shlib
@c Int32 xmlTextWriterWriteVFormatDTD (:xmlTextWriterPtr,Ptr{:xmlChar},Ptr{:xmlChar},Ptr{:xmlChar},Ptr{:Uint8},Ptr{:__va_list_tag}) shlib
@c Int32 xmlTextWriterWriteDTD (:xmlTextWriterPtr,Ptr{:xmlChar},Ptr{:xmlChar},Ptr{:xmlChar},Ptr{:xmlChar}) shlib
@c Int32 xmlTextWriterStartDTDElement (:xmlTextWriterPtr,Ptr{:xmlChar}) shlib
@c Int32 xmlTextWriterEndDTDElement (:xmlTextWriterPtr,) shlib
@c Int32 xmlTextWriterWriteFormatDTDElement (:xmlTextWriterPtr,Ptr{:xmlChar},Ptr{:Uint8}) shlib
@c Int32 xmlTextWriterWriteVFormatDTDElement (:xmlTextWriterPtr,Ptr{:xmlChar},Ptr{:Uint8},Ptr{:__va_list_tag}) shlib
@c Int32 xmlTextWriterWriteDTDElement (:xmlTextWriterPtr,Ptr{:xmlChar},Ptr{:xmlChar}) shlib
@c Int32 xmlTextWriterStartDTDAttlist (:xmlTextWriterPtr,Ptr{:xmlChar}) shlib
@c Int32 xmlTextWriterEndDTDAttlist (:xmlTextWriterPtr,) shlib
@c Int32 xmlTextWriterWriteFormatDTDAttlist (:xmlTextWriterPtr,Ptr{:xmlChar},Ptr{:Uint8}) shlib
@c Int32 xmlTextWriterWriteVFormatDTDAttlist (:xmlTextWriterPtr,Ptr{:xmlChar},Ptr{:Uint8},Ptr{:__va_list_tag}) shlib
@c Int32 xmlTextWriterWriteDTDAttlist (:xmlTextWriterPtr,Ptr{:xmlChar},Ptr{:xmlChar}) shlib
@c Int32 xmlTextWriterStartDTDEntity (:xmlTextWriterPtr,:Int32,Ptr{:xmlChar}) shlib
@c Int32 xmlTextWriterEndDTDEntity (:xmlTextWriterPtr,) shlib
@c Int32 xmlTextWriterWriteFormatDTDInternalEntity (:xmlTextWriterPtr,:Int32,Ptr{:xmlChar},Ptr{:Uint8}) shlib
@c Int32 xmlTextWriterWriteVFormatDTDInternalEntity (:xmlTextWriterPtr,:Int32,Ptr{:xmlChar},Ptr{:Uint8},Ptr{:__va_list_tag}) shlib
@c Int32 xmlTextWriterWriteDTDInternalEntity (:xmlTextWriterPtr,:Int32,Ptr{:xmlChar},Ptr{:xmlChar}) shlib
@c Int32 xmlTextWriterWriteDTDExternalEntity (:xmlTextWriterPtr,:Int32,Ptr{:xmlChar},Ptr{:xmlChar},Ptr{:xmlChar},Ptr{:xmlChar}) shlib
@c Int32 xmlTextWriterWriteDTDExternalEntityContents (:xmlTextWriterPtr,Ptr{:xmlChar},Ptr{:xmlChar},Ptr{:xmlChar}) shlib
@c Int32 xmlTextWriterWriteDTDEntity (:xmlTextWriterPtr,:Int32,Ptr{:xmlChar},Ptr{:xmlChar},Ptr{:xmlChar},Ptr{:xmlChar},Ptr{:xmlChar}) shlib
@c Int32 xmlTextWriterWriteDTDNotation (:xmlTextWriterPtr,Ptr{:xmlChar},Ptr{:xmlChar},Ptr{:xmlChar}) shlib
@c Int32 xmlTextWriterSetIndent (:xmlTextWriterPtr,:Int32) shlib
@c Int32 xmlTextWriterSetIndentString (:xmlTextWriterPtr,Ptr{:xmlChar}) shlib
@c Int32 xmlTextWriterFlush (:xmlTextWriterPtr,) shlib

# header: /usr/include/libxml2/libxml/xpath.h

# header: /usr/include/libxml2/libxml/xpathInternals.h
@c Int32 xmlXPathPopBoolean (:xmlXPathParserContextPtr,) shlib
@c Float64 xmlXPathPopNumber (:xmlXPathParserContextPtr,) shlib
@c Ptr{:xmlChar} xmlXPathPopString (:xmlXPathParserContextPtr,) shlib
@c xmlNodeSetPtr xmlXPathPopNodeSet (:xmlXPathParserContextPtr,) shlib
@c Ptr{:None} xmlXPathPopExternal (:xmlXPathParserContextPtr,) shlib
@c None xmlXPathRegisterVariableLookup (:xmlXPathContextPtr,:xmlXPathVariableLookupFunc,Ptr{:None}) shlib
@c None xmlXPathRegisterFuncLookup (:xmlXPathContextPtr,:xmlXPathFuncLookupFunc,Ptr{:None}) shlib
@c None xmlXPatherror (:xmlXPathParserContextPtr,Ptr{:Uint8},:Int32,:Int32) shlib
@c None xmlXPathErr (:xmlXPathParserContextPtr,:Int32) shlib
@c None xmlXPathDebugDumpObject (Ptr{:FILE},:xmlXPathObjectPtr,:Int32) shlib
@c None xmlXPathDebugDumpCompExpr (Ptr{:FILE},:xmlXPathCompExprPtr,:Int32) shlib
@c Int32 xmlXPathNodeSetContains (:xmlNodeSetPtr,:xmlNodePtr) shlib
@c xmlNodeSetPtr xmlXPathDifference (:xmlNodeSetPtr,:xmlNodeSetPtr) shlib
@c xmlNodeSetPtr xmlXPathIntersection (:xmlNodeSetPtr,:xmlNodeSetPtr) shlib
@c xmlNodeSetPtr xmlXPathDistinctSorted (:xmlNodeSetPtr,) shlib
@c xmlNodeSetPtr xmlXPathDistinct (:xmlNodeSetPtr,) shlib
@c Int32 xmlXPathHasSameNodes (:xmlNodeSetPtr,:xmlNodeSetPtr) shlib
@c xmlNodeSetPtr xmlXPathNodeLeadingSorted (:xmlNodeSetPtr,:xmlNodePtr) shlib
@c xmlNodeSetPtr xmlXPathLeadingSorted (:xmlNodeSetPtr,:xmlNodeSetPtr) shlib
@c xmlNodeSetPtr xmlXPathNodeLeading (:xmlNodeSetPtr,:xmlNodePtr) shlib
@c xmlNodeSetPtr xmlXPathLeading (:xmlNodeSetPtr,:xmlNodeSetPtr) shlib
@c xmlNodeSetPtr xmlXPathNodeTrailingSorted (:xmlNodeSetPtr,:xmlNodePtr) shlib
@c xmlNodeSetPtr xmlXPathTrailingSorted (:xmlNodeSetPtr,:xmlNodeSetPtr) shlib
@c xmlNodeSetPtr xmlXPathNodeTrailing (:xmlNodeSetPtr,:xmlNodePtr) shlib
@c xmlNodeSetPtr xmlXPathTrailing (:xmlNodeSetPtr,:xmlNodeSetPtr) shlib
@c Int32 xmlXPathRegisterNs (:xmlXPathContextPtr,Ptr{:xmlChar},Ptr{:xmlChar}) shlib
@c Ptr{:xmlChar} xmlXPathNsLookup (:xmlXPathContextPtr,Ptr{:xmlChar}) shlib
@c None xmlXPathRegisteredNsCleanup (:xmlXPathContextPtr,) shlib
@c Int32 xmlXPathRegisterFunc (:xmlXPathContextPtr,Ptr{:xmlChar},:xmlXPathFunction) shlib
@c Int32 xmlXPathRegisterFuncNS (:xmlXPathContextPtr,Ptr{:xmlChar},Ptr{:xmlChar},:xmlXPathFunction) shlib
@c Int32 xmlXPathRegisterVariable (:xmlXPathContextPtr,Ptr{:xmlChar},:xmlXPathObjectPtr) shlib
@c Int32 xmlXPathRegisterVariableNS (:xmlXPathContextPtr,Ptr{:xmlChar},Ptr{:xmlChar},:xmlXPathObjectPtr) shlib
@c xmlXPathFunction xmlXPathFunctionLookup (:xmlXPathContextPtr,Ptr{:xmlChar}) shlib
@c xmlXPathFunction xmlXPathFunctionLookupNS (:xmlXPathContextPtr,Ptr{:xmlChar},Ptr{:xmlChar}) shlib
@c None xmlXPathRegisteredFuncsCleanup (:xmlXPathContextPtr,) shlib
@c xmlXPathObjectPtr xmlXPathVariableLookup (:xmlXPathContextPtr,Ptr{:xmlChar}) shlib
@c xmlXPathObjectPtr xmlXPathVariableLookupNS (:xmlXPathContextPtr,Ptr{:xmlChar},Ptr{:xmlChar}) shlib
@c None xmlXPathRegisteredVariablesCleanup (:xmlXPathContextPtr,) shlib
@c xmlXPathParserContextPtr xmlXPathNewParserContext (Ptr{:xmlChar},:xmlXPathContextPtr) shlib
@c None xmlXPathFreeParserContext (:xmlXPathParserContextPtr,) shlib
@c xmlXPathObjectPtr valuePop (:xmlXPathParserContextPtr,) shlib
@c Int32 valuePush (:xmlXPathParserContextPtr,:xmlXPathObjectPtr) shlib
@c xmlXPathObjectPtr xmlXPathNewString (Ptr{:xmlChar},) shlib
@c xmlXPathObjectPtr xmlXPathNewCString (Ptr{:Uint8},) shlib
@c xmlXPathObjectPtr xmlXPathWrapString (Ptr{:xmlChar},) shlib
@c xmlXPathObjectPtr xmlXPathWrapCString (Ptr{:Uint8},) shlib
@c xmlXPathObjectPtr xmlXPathNewFloat (:Float64,) shlib
@c xmlXPathObjectPtr xmlXPathNewBoolean (:Int32,) shlib
@c xmlXPathObjectPtr xmlXPathNewNodeSet (:xmlNodePtr,) shlib
@c xmlXPathObjectPtr xmlXPathNewValueTree (:xmlNodePtr,) shlib
@c None xmlXPathNodeSetAdd (:xmlNodeSetPtr,:xmlNodePtr) shlib
@c None xmlXPathNodeSetAddUnique (:xmlNodeSetPtr,:xmlNodePtr) shlib
@c None xmlXPathNodeSetAddNs (:xmlNodeSetPtr,:xmlNodePtr,:xmlNsPtr) shlib
@c None xmlXPathNodeSetSort (:xmlNodeSetPtr,) shlib
@c None xmlXPathRoot (:xmlXPathParserContextPtr,) shlib
@c None xmlXPathEvalExpr (:xmlXPathParserContextPtr,) shlib
@c Ptr{:xmlChar} xmlXPathParseName (:xmlXPathParserContextPtr,) shlib
@c Ptr{:xmlChar} xmlXPathParseNCName (:xmlXPathParserContextPtr,) shlib
@c Float64 xmlXPathStringEvalNumber (Ptr{:xmlChar},) shlib
@c Int32 xmlXPathEvaluatePredicateResult (:xmlXPathParserContextPtr,:xmlXPathObjectPtr) shlib
@c None xmlXPathRegisterAllFunctions (:xmlXPathContextPtr,) shlib
@c xmlNodeSetPtr xmlXPathNodeSetMerge (:xmlNodeSetPtr,:xmlNodeSetPtr) shlib
@c None xmlXPathNodeSetDel (:xmlNodeSetPtr,:xmlNodePtr) shlib
@c None xmlXPathNodeSetRemove (:xmlNodeSetPtr,:Int32) shlib
@c xmlXPathObjectPtr xmlXPathNewNodeSetList (:xmlNodeSetPtr,) shlib
@c xmlXPathObjectPtr xmlXPathWrapNodeSet (:xmlNodeSetPtr,) shlib
@c xmlXPathObjectPtr xmlXPathWrapExternal (Ptr{:None},) shlib
@c Int32 xmlXPathEqualValues (:xmlXPathParserContextPtr,) shlib
@c Int32 xmlXPathNotEqualValues (:xmlXPathParserContextPtr,) shlib
@c Int32 xmlXPathCompareValues (:xmlXPathParserContextPtr,:Int32,:Int32) shlib
@c None xmlXPathValueFlipSign (:xmlXPathParserContextPtr,) shlib
@c None xmlXPathAddValues (:xmlXPathParserContextPtr,) shlib
@c None xmlXPathSubValues (:xmlXPathParserContextPtr,) shlib
@c None xmlXPathMultValues (:xmlXPathParserContextPtr,) shlib
@c None xmlXPathDivValues (:xmlXPathParserContextPtr,) shlib
@c None xmlXPathModValues (:xmlXPathParserContextPtr,) shlib
@c Int32 xmlXPathIsNodeType (Ptr{:xmlChar},) shlib
@c xmlNodePtr xmlXPathNextSelf (:xmlXPathParserContextPtr,:xmlNodePtr) shlib
@c xmlNodePtr xmlXPathNextChild (:xmlXPathParserContextPtr,:xmlNodePtr) shlib
@c xmlNodePtr xmlXPathNextDescendant (:xmlXPathParserContextPtr,:xmlNodePtr) shlib
@c xmlNodePtr xmlXPathNextDescendantOrSelf (:xmlXPathParserContextPtr,:xmlNodePtr) shlib
@c xmlNodePtr xmlXPathNextParent (:xmlXPathParserContextPtr,:xmlNodePtr) shlib
@c xmlNodePtr xmlXPathNextAncestorOrSelf (:xmlXPathParserContextPtr,:xmlNodePtr) shlib
@c xmlNodePtr xmlXPathNextFollowingSibling (:xmlXPathParserContextPtr,:xmlNodePtr) shlib
@c xmlNodePtr xmlXPathNextFollowing (:xmlXPathParserContextPtr,:xmlNodePtr) shlib
@c xmlNodePtr xmlXPathNextNamespace (:xmlXPathParserContextPtr,:xmlNodePtr) shlib
@c xmlNodePtr xmlXPathNextAttribute (:xmlXPathParserContextPtr,:xmlNodePtr) shlib
@c xmlNodePtr xmlXPathNextPreceding (:xmlXPathParserContextPtr,:xmlNodePtr) shlib
@c xmlNodePtr xmlXPathNextAncestor (:xmlXPathParserContextPtr,:xmlNodePtr) shlib
@c xmlNodePtr xmlXPathNextPrecedingSibling (:xmlXPathParserContextPtr,:xmlNodePtr) shlib
@c None xmlXPathLastFunction (:xmlXPathParserContextPtr,:Int32) shlib
@c None xmlXPathPositionFunction (:xmlXPathParserContextPtr,:Int32) shlib
@c None xmlXPathCountFunction (:xmlXPathParserContextPtr,:Int32) shlib
@c None xmlXPathIdFunction (:xmlXPathParserContextPtr,:Int32) shlib
@c None xmlXPathLocalNameFunction (:xmlXPathParserContextPtr,:Int32) shlib
@c None xmlXPathNamespaceURIFunction (:xmlXPathParserContextPtr,:Int32) shlib
@c None xmlXPathStringFunction (:xmlXPathParserContextPtr,:Int32) shlib
@c None xmlXPathStringLengthFunction (:xmlXPathParserContextPtr,:Int32) shlib
@c None xmlXPathConcatFunction (:xmlXPathParserContextPtr,:Int32) shlib
@c None xmlXPathContainsFunction (:xmlXPathParserContextPtr,:Int32) shlib
@c None xmlXPathStartsWithFunction (:xmlXPathParserContextPtr,:Int32) shlib
@c None xmlXPathSubstringFunction (:xmlXPathParserContextPtr,:Int32) shlib
@c None xmlXPathSubstringBeforeFunction (:xmlXPathParserContextPtr,:Int32) shlib
@c None xmlXPathSubstringAfterFunction (:xmlXPathParserContextPtr,:Int32) shlib
@c None xmlXPathNormalizeFunction (:xmlXPathParserContextPtr,:Int32) shlib
@c None xmlXPathTranslateFunction (:xmlXPathParserContextPtr,:Int32) shlib
@c None xmlXPathNotFunction (:xmlXPathParserContextPtr,:Int32) shlib
@c None xmlXPathTrueFunction (:xmlXPathParserContextPtr,:Int32) shlib
@c None xmlXPathFalseFunction (:xmlXPathParserContextPtr,:Int32) shlib
@c None xmlXPathLangFunction (:xmlXPathParserContextPtr,:Int32) shlib
@c None xmlXPathNumberFunction (:xmlXPathParserContextPtr,:Int32) shlib
@c None xmlXPathSumFunction (:xmlXPathParserContextPtr,:Int32) shlib
@c None xmlXPathFloorFunction (:xmlXPathParserContextPtr,:Int32) shlib
@c None xmlXPathCeilingFunction (:xmlXPathParserContextPtr,:Int32) shlib
@c None xmlXPathRoundFunction (:xmlXPathParserContextPtr,:Int32) shlib
@c None xmlXPathBooleanFunction (:xmlXPathParserContextPtr,:Int32) shlib
@c None xmlXPathNodeSetFreeNs (:xmlNsPtr,) shlib

# header: /usr/include/libxml2/libxml/xpointer.h
@ctypedef xmlLocationSet Void
@ctypedef xmlLocationSetPtr Ptr{:xmlLocationSet}
@c xmlLocationSetPtr xmlXPtrLocationSetCreate (:xmlXPathObjectPtr,) shlib
@c None xmlXPtrFreeLocationSet (:xmlLocationSetPtr,) shlib
@c xmlLocationSetPtr xmlXPtrLocationSetMerge (:xmlLocationSetPtr,:xmlLocationSetPtr) shlib
@c xmlXPathObjectPtr xmlXPtrNewRange (:xmlNodePtr,:Int32,:xmlNodePtr,:Int32) shlib
@c xmlXPathObjectPtr xmlXPtrNewRangePoints (:xmlXPathObjectPtr,:xmlXPathObjectPtr) shlib
@c xmlXPathObjectPtr xmlXPtrNewRangeNodePoint (:xmlNodePtr,:xmlXPathObjectPtr) shlib
@c xmlXPathObjectPtr xmlXPtrNewRangePointNode (:xmlXPathObjectPtr,:xmlNodePtr) shlib
@c xmlXPathObjectPtr xmlXPtrNewRangeNodes (:xmlNodePtr,:xmlNodePtr) shlib
@c xmlXPathObjectPtr xmlXPtrNewLocationSetNodes (:xmlNodePtr,:xmlNodePtr) shlib
@c xmlXPathObjectPtr xmlXPtrNewLocationSetNodeSet (:xmlNodeSetPtr,) shlib
@c xmlXPathObjectPtr xmlXPtrNewRangeNodeObject (:xmlNodePtr,:xmlXPathObjectPtr) shlib
@c xmlXPathObjectPtr xmlXPtrNewCollapsedRange (:xmlNodePtr,) shlib
@c None xmlXPtrLocationSetAdd (:xmlLocationSetPtr,:xmlXPathObjectPtr) shlib
@c xmlXPathObjectPtr xmlXPtrWrapLocationSet (:xmlLocationSetPtr,) shlib
@c None xmlXPtrLocationSetDel (:xmlLocationSetPtr,:xmlXPathObjectPtr) shlib
@c None xmlXPtrLocationSetRemove (:xmlLocationSetPtr,:Int32) shlib
@c xmlXPathContextPtr xmlXPtrNewContext (:xmlDocPtr,:xmlNodePtr,:xmlNodePtr) shlib
@c xmlXPathObjectPtr xmlXPtrEval (Ptr{:xmlChar},:xmlXPathContextPtr) shlib
@c None xmlXPtrRangeToFunction (:xmlXPathParserContextPtr,:Int32) shlib
@c xmlNodePtr xmlXPtrBuildNodeList (:xmlXPathObjectPtr,) shlib
@c None xmlXPtrEvalRangePredicate (:xmlXPathParserContextPtr,) shlib

