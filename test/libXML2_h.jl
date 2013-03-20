typealias htmlElemDesc Void
typealias htmlEntityDesc Void
typealias xlinkHandler Void
typealias xmlAttr Void
typealias xmlAttribute Void
typealias xmlAttributeTable Void
typealias xmlAutomata Void
typealias xmlAutomataState Void
typealias xmlBuffer Void
typealias xmlCatalog Void
typealias xmlChLRange Void
typealias xmlChRangeGroup Void
typealias xmlChSRange Void
typealias xmlChar Uint8
typealias xmlCharEncodingHandler Void
typealias xmlDOMWrapCtxt Void
typealias xmlDict Void
typealias xmlDoc Void
typealias xmlDocPtr Ptr{xmlDoc}
typealias xmlDtd Void
typealias xmlElement Void
typealias xmlElementContent Void
typealias xmlElementTable Void
typealias xmlElementType Int32
typealias xmlEntitiesTable Void
typealias xmlEntity Void
typealias xmlEnumeration Void
typealias xmlError Void
typealias xmlExpCtxt Void
typealias xmlExpNode Void
typealias xmlGlobalState Void
typealias xmlHashTable Void
typealias xmlID Void
typealias xmlIDTable Void
typealias xmlLink Void
typealias xmlList Void
typealias xmlLocationSet Void
typealias xmlModule Void
typealias xmlMutex Void
typealias xmlNode Void
typealias xmlNodePtr Ptr{xmlNode}
typealias xmlNodeSet Void
typealias xmlNotation Void
typealias xmlNotationTable Void
typealias xmlNs Void
typealias xmlOutputBuffer Void
typealias xmlParserCtxt Void
typealias xmlParserCtxtPtr Ptr{xmlParserCtxt}
typealias xmlParserInput Void
typealias xmlParserInputBuffer Void
typealias xmlParserInputPtr Ptr{xmlParserInput}
typealias xmlParserNodeInfo Void
typealias xmlParserNodeInfoSeq Void
typealias xmlPattern Void
typealias xmlRMutex Void
typealias xmlRef Void
typealias xmlRefTable Void
typealias xmlRegExecCtxt Void
typealias xmlRegexp Void
typealias xmlRelaxNG Void
typealias xmlRelaxNGParserCtxt Void
typealias xmlRelaxNGValidCtxt Void
typealias xmlSAXHandler Void
typealias xmlSAXHandlerPtr Ptr{xmlSAXHandler}
typealias xmlSAXHandlerV1 Void
typealias xmlSAXLocator Void
typealias xmlSaveCtxt Void
typealias xmlSchema Void
typealias xmlSchemaAnnot Void
typealias xmlSchemaAttribute Void
typealias xmlSchemaAttributeGroup Void
typealias xmlSchemaAttributeLink Void
typealias xmlSchemaElement Void
typealias xmlSchemaFacet Void
typealias xmlSchemaFacetLink Void
typealias xmlSchemaNotation Void
typealias xmlSchemaParserCtxt Void
typealias xmlSchemaSAXPlugStruct Void
typealias xmlSchemaType Void
typealias xmlSchemaTypeLink Void
typealias xmlSchemaVal Void
typealias xmlSchemaValidCtxt Void
typealias xmlSchemaWildcard Void
typealias xmlSchemaWildcardNs Void
typealias xmlSchematron Void
typealias xmlSchematronParserCtxt Void
typealias xmlSchematronValidCtxt Void
typealias xmlShellCtxt Void
typealias xmlStreamCtxt Void
typealias xmlTextReader Void
typealias xmlTextWriter Void
typealias xmlURI Void
typealias xmlValidCtxt Void
typealias xmlValidState Void
typealias xmlXIncludeCtxt Void
typealias xmlXPathAxis Void
typealias xmlXPathCompExpr Void
typealias xmlXPathContext Void
typealias xmlXPathFunct Void
typealias xmlXPathObject Void
typealias xmlXPathParserContext Void
typealias xmlXPathType Void
typealias xmlXPathVariable Void
# enum xmlCatalogPrefer
const XML_CATA_PREFER_NONE = 0
const XML_CATA_PREFER_PUBLIC = 1
const XML_CATA_PREFER_SYSTEM = 2
# end
typealias xmlCatalogPrefer Int32
# enum xmlCatalogAllow
const XML_CATA_ALLOW_NONE = 0
const XML_CATA_ALLOW_GLOBAL = 1
const XML_CATA_ALLOW_DOCUMENT = 2
const XML_CATA_ALLOW_ALL = 3
# end
typealias xmlCatalogAllow Int32
typealias xmlCatalogPtr Ptr{xmlCatalog}
typealias xmlChSRangePtr Ptr{xmlChSRange}
typealias xmlChLRangePtr Ptr{xmlChLRange}
typealias xmlChRangeGroupPtr Ptr{xmlChRangeGroup}
typealias xmlShellReadlineFunc Ptr{Void}
typealias xmlShellCtxtPtr Ptr{xmlShellCtxt}
typealias xmlShellCmd Ptr{Void}
typealias xmlDictPtr Ptr{xmlDict}
typealias docbParserCtxt xmlParserCtxt
typealias docbParserCtxtPtr xmlParserCtxtPtr
typealias docbSAXHandler xmlSAXHandler
typealias docbSAXHandlerPtr xmlSAXHandlerPtr
typealias docbParserInput xmlParserInput
typealias docbParserInputPtr xmlParserInputPtr
typealias docbDocPtr xmlDocPtr
# enum xmlCharEncoding
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
typealias xmlCharEncoding Int32
typealias xmlCharEncodingInputFunc Ptr{Void}
typealias xmlCharEncodingOutputFunc Ptr{Void}
typealias xmlCharEncodingHandlerPtr Ptr{xmlCharEncodingHandler}
# enum xmlEntityType
const XML_INTERNAL_GENERAL_ENTITY = 1
const XML_EXTERNAL_GENERAL_PARSED_ENTITY = 2
const XML_EXTERNAL_GENERAL_UNPARSED_ENTITY = 3
const XML_INTERNAL_PARAMETER_ENTITY = 4
const XML_EXTERNAL_PARAMETER_ENTITY = 5
const XML_INTERNAL_PREDEFINED_ENTITY = 6
# end
typealias xmlEntityType Int32
typealias xmlEntitiesTablePtr Ptr{xmlEntitiesTable}
typealias xmlParserInputBufferCreateFilenameFunc Ptr{Void}
typealias xmlOutputBufferCreateFilenameFunc Ptr{Void}
typealias xmlRegisterNodeFunc Ptr{Void}
typealias xmlDeregisterNodeFunc Ptr{Void}
typealias xmlGlobalStatePtr Ptr{xmlGlobalState}
typealias xmlHashTablePtr Ptr{xmlHashTable}
typealias xmlHashDeallocator Ptr{Void}
typealias xmlHashCopier Ptr{Void}
typealias xmlHashScanner Ptr{Void}
typealias xmlHashScannerFull Ptr{Void}
typealias htmlParserCtxt xmlParserCtxt
typealias htmlParserCtxtPtr xmlParserCtxtPtr
typealias htmlParserNodeInfo xmlParserNodeInfo
typealias htmlSAXHandler xmlSAXHandler
typealias htmlSAXHandlerPtr xmlSAXHandlerPtr
typealias htmlParserInput xmlParserInput
typealias htmlParserInputPtr xmlParserInputPtr
typealias htmlDocPtr xmlDocPtr
typealias htmlNodePtr xmlNodePtr
typealias htmlElemDescPtr Ptr{htmlElemDesc}
typealias htmlEntityDescPtr Ptr{htmlEntityDesc}
# enum htmlParserOption
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
typealias htmlParserOption Int32
# enum htmlStatus
const HTML_NA = 0
const HTML_INVALID = 1
const HTML_DEPRECATED = 2
const HTML_VALID = 4
const HTML_REQUIRED = 12
# end
typealias htmlStatus Int32
typealias xmlLinkPtr Ptr{xmlLink}
typealias xmlListPtr Ptr{xmlList}
typealias xmlListDeallocator Ptr{Void}
typealias xmlListDataCompare Ptr{Void}
typealias xmlListWalker Ptr{Void}
typealias ftpListCallback Ptr{Void}
typealias ftpDataCallback Ptr{Void}
typealias xmlParserInputDeallocate Ptr{Void}
typealias xmlParserNodeInfoPtr Ptr{xmlParserNodeInfo}
typealias xmlParserNodeInfoSeqPtr Ptr{xmlParserNodeInfoSeq}
# enum xmlParserInputState
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
typealias xmlParserInputState Int32
# enum xmlParserMode
const XML_PARSE_UNKNOWN = 0
const XML_PARSE_DOM = 1
const XML_PARSE_SAX = 2
const XML_PARSE_PUSH_DOM = 3
const XML_PARSE_PUSH_SAX = 4
const XML_PARSE_READER = 5
# end
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
typealias xmlSAXHandlerV1Ptr Ptr{xmlSAXHandlerV1}
typealias xmlExternalEntityLoader Ptr{Void}
# enum xmlParserOption
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
typealias xmlParserOption Int32
# enum xmlFeature
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
typealias xmlFeature Int32
typealias xmlEntityReferenceFunc Ptr{Void}
typealias xmlPatternPtr Ptr{xmlPattern}
# enum xmlPatternFlags
const XML_PATTERN_DEFAULT = 0
const XML_PATTERN_XPATH = 1
const XML_PATTERN_XSSEL = 2
const XML_PATTERN_XSFIELD = 4
# end
typealias xmlPatternFlags Int32
typealias xmlStreamCtxtPtr Ptr{xmlStreamCtxt}
typealias xmlRelaxNGPtr Ptr{xmlRelaxNG}
typealias xmlRelaxNGValidityErrorFunc Ptr{Void}
typealias xmlRelaxNGValidityWarningFunc Ptr{Void}
typealias xmlRelaxNGParserCtxtPtr Ptr{xmlRelaxNGParserCtxt}
typealias xmlRelaxNGValidCtxtPtr Ptr{xmlRelaxNGValidCtxt}
# enum xmlRelaxNGValidErr
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
typealias xmlRelaxNGValidErr Int32
# enum xmlRelaxNGParserFlag
const XML_RELAXNGP_NONE = 0
const XML_RELAXNGP_FREE_DOC = 1
const XML_RELAXNGP_CRNG = 2
# end
typealias xmlRelaxNGParserFlag Int32
# enum xmlSchemaValType
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
typealias xmlSchemaValType Int32
# enum xmlSchemaTypeType
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
typealias xmlSchemaTypeType Int32
# enum xmlSchemaContentType
const XML_SCHEMA_CONTENT_UNKNOWN = 0
const XML_SCHEMA_CONTENT_EMPTY = 1
const XML_SCHEMA_CONTENT_ELEMENTS = 2
const XML_SCHEMA_CONTENT_MIXED = 3
const XML_SCHEMA_CONTENT_SIMPLE = 4
const XML_SCHEMA_CONTENT_MIXED_OR_ELEMENTS = 5
const XML_SCHEMA_CONTENT_BASIC = 6
const XML_SCHEMA_CONTENT_ANY = 7
# end
typealias xmlSchemaContentType Int32
typealias xmlSchemaValPtr Ptr{xmlSchemaVal}
typealias xmlSchemaTypePtr Ptr{xmlSchemaType}
typealias xmlSchemaFacetPtr Ptr{xmlSchemaFacet}
typealias xmlSchemaAnnotPtr Ptr{xmlSchemaAnnot}
typealias xmlSchemaAttributePtr Ptr{xmlSchemaAttribute}
typealias xmlSchemaAttributeLinkPtr Ptr{xmlSchemaAttributeLink}
typealias xmlSchemaWildcardNsPtr Ptr{xmlSchemaWildcardNs}
typealias xmlSchemaWildcardPtr Ptr{xmlSchemaWildcard}
typealias xmlSchemaAttributeGroupPtr Ptr{xmlSchemaAttributeGroup}
typealias xmlSchemaTypeLinkPtr Ptr{xmlSchemaTypeLink}
typealias xmlSchemaFacetLinkPtr Ptr{xmlSchemaFacetLink}
typealias xmlSchemaElementPtr Ptr{xmlSchemaElement}
typealias xmlSchemaNotationPtr Ptr{xmlSchemaNotation}
# enum xmlSchematronValidOptions
const XML_SCHEMATRON_OUT_QUIET = 1
const XML_SCHEMATRON_OUT_TEXT = 2
const XML_SCHEMATRON_OUT_XML = 4
const XML_SCHEMATRON_OUT_ERROR = 8
const XML_SCHEMATRON_OUT_FILE = 256
const XML_SCHEMATRON_OUT_BUFFER = 512
const XML_SCHEMATRON_OUT_IO = 1024
# end
typealias xmlSchematronValidOptions Int32
typealias xmlSchematronPtr Ptr{xmlSchematron}
typealias xmlSchematronValidityErrorFunc Ptr{Void}
typealias xmlSchematronValidityWarningFunc Ptr{Void}
typealias xmlSchematronParserCtxtPtr Ptr{xmlSchematronParserCtxt}
typealias xmlSchematronValidCtxtPtr Ptr{xmlSchematronValidCtxt}
typealias xmlMutexPtr Ptr{xmlMutex}
typealias xmlRMutexPtr Ptr{xmlRMutex}
typealias xmlParserInputBufferPtr Ptr{xmlParserInputBuffer}
typealias xmlOutputBufferPtr Ptr{xmlOutputBuffer}
typealias xmlSAXLocatorPtr Ptr{xmlSAXLocator}
typealias xmlEntityPtr Ptr{xmlEntity}
# enum xmlBufferAllocationScheme
const XML_BUFFER_ALLOC_DOUBLEIT = 0
const XML_BUFFER_ALLOC_EXACT = 1
const XML_BUFFER_ALLOC_IMMUTABLE = 2
const XML_BUFFER_ALLOC_IO = 3
# end
typealias xmlBufferAllocationScheme Int32
typealias xmlBufferPtr Ptr{xmlBuffer}
# enum xmlElementType
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
typealias xmlNotationPtr Ptr{xmlNotation}
# enum xmlAttributeType
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
typealias xmlAttributeType Int32
# enum xmlAttributeDefault
const XML_ATTRIBUTE_NONE = 1
const XML_ATTRIBUTE_REQUIRED = 2
const XML_ATTRIBUTE_IMPLIED = 3
const XML_ATTRIBUTE_FIXED = 4
# end
typealias xmlAttributeDefault Int32
typealias xmlEnumerationPtr Ptr{xmlEnumeration}
typealias xmlAttributePtr Ptr{xmlAttribute}
# enum xmlElementContentType
const XML_ELEMENT_CONTENT_PCDATA = 1
const XML_ELEMENT_CONTENT_ELEMENT = 2
const XML_ELEMENT_CONTENT_SEQ = 3
const XML_ELEMENT_CONTENT_OR = 4
# end
typealias xmlElementContentType Int32
# enum xmlElementContentOccur
const XML_ELEMENT_CONTENT_ONCE = 1
const XML_ELEMENT_CONTENT_OPT = 2
const XML_ELEMENT_CONTENT_MULT = 3
const XML_ELEMENT_CONTENT_PLUS = 4
# end
typealias xmlElementContentOccur Int32
typealias xmlElementContentPtr Ptr{xmlElementContent}
# enum xmlElementTypeVal
const XML_ELEMENT_TYPE_UNDEFINED = 0
const XML_ELEMENT_TYPE_EMPTY = 1
const XML_ELEMENT_TYPE_ANY = 2
const XML_ELEMENT_TYPE_MIXED = 3
const XML_ELEMENT_TYPE_ELEMENT = 4
# end
typealias xmlElementTypeVal Int32
typealias xmlElementPtr Ptr{xmlElement}
typealias xmlNsType xmlElementType
typealias xmlNsPtr Ptr{xmlNs}
typealias xmlDtdPtr Ptr{xmlDtd}
typealias xmlAttrPtr Ptr{xmlAttr}
typealias xmlIDPtr Ptr{xmlID}
typealias xmlRefPtr Ptr{xmlRef}
# enum xmlDocProperties
const XML_DOC_WELLFORMED = 1
const XML_DOC_NSVALID = 2
const XML_DOC_OLD10 = 4
const XML_DOC_DTDVALID = 8
const XML_DOC_XINCLUDE = 16
const XML_DOC_USERBUILT = 32
const XML_DOC_INTERNAL = 64
const XML_DOC_HTML = 128
# end
typealias xmlDocProperties Int32
typealias xmlDOMWrapCtxtPtr Ptr{xmlDOMWrapCtxt}
typealias xmlDOMWrapAcquireNsFunction Ptr{Void}
typealias xmlURIPtr Ptr{xmlURI}
typealias xmlValidStatePtr Ptr{xmlValidState}
typealias xmlValidityErrorFunc Ptr{Void}
typealias xmlValidityWarningFunc Ptr{Void}
typealias xmlValidCtxtPtr Ptr{xmlValidCtxt}
typealias xmlNotationTablePtr Ptr{xmlNotationTable}
typealias xmlElementTablePtr Ptr{xmlElementTable}
typealias xmlAttributeTablePtr Ptr{xmlAttributeTable}
typealias xmlIDTablePtr Ptr{xmlIDTable}
typealias xmlRefTablePtr Ptr{xmlRefTable}
typealias xmlXIncludeCtxtPtr Ptr{xmlXIncludeCtxt}
typealias xlinkHRef Ptr{xmlChar}
typealias xlinkRole Ptr{xmlChar}
typealias xlinkTitle Ptr{xmlChar}
# enum xlinkType
const XLINK_TYPE_NONE = 0
const XLINK_TYPE_SIMPLE = 1
const XLINK_TYPE_EXTENDED = 2
const XLINK_TYPE_EXTENDED_SET = 3
# end
typealias xlinkType Int32
# enum xlinkShow
const XLINK_SHOW_NONE = 0
const XLINK_SHOW_NEW = 1
const XLINK_SHOW_EMBED = 2
const XLINK_SHOW_REPLACE = 3
# end
typealias xlinkShow Int32
# enum xlinkActuate
const XLINK_ACTUATE_NONE = 0
const XLINK_ACTUATE_AUTO = 1
const XLINK_ACTUATE_ONREQUEST = 2
# end
typealias xlinkActuate Int32
typealias xlinkNodeDetectFunc Ptr{Void}
typealias xlinkSimpleLinkFunk Ptr{Void}
typealias xlinkExtendedLinkFunk Ptr{Void}
typealias xlinkExtendedLinkSetFunk Ptr{Void}
typealias xlinkHandlerPtr Ptr{xlinkHandler}
typealias xmlAutomataPtr Ptr{xmlAutomata}
typealias xmlAutomataStatePtr Ptr{xmlAutomataState}
# enum xmlErrorLevel
const XML_ERR_NONE = 0
const XML_ERR_WARNING = 1
const XML_ERR_ERROR = 2
const XML_ERR_FATAL = 3
# end
typealias xmlErrorLevel Int32
# enum xmlErrorDomain
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
typealias xmlErrorDomain Int32
typealias xmlErrorPtr Ptr{xmlError}
# enum xmlParserErrors
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
typealias xmlParserErrors Int32
typealias xmlGenericErrorFunc Ptr{Void}
typealias xmlStructuredErrorFunc Ptr{Void}
typealias xmlInputMatchCallback Ptr{Void}
typealias xmlInputOpenCallback Ptr{Void}
typealias xmlInputReadCallback Ptr{Void}
typealias xmlInputCloseCallback Ptr{Void}
typealias xmlOutputMatchCallback Ptr{Void}
typealias xmlOutputOpenCallback Ptr{Void}
typealias xmlOutputWriteCallback Ptr{Void}
typealias xmlOutputCloseCallback Ptr{Void}
typealias xmlFreeFunc Ptr{Void}
typealias xmlMallocFunc Ptr{Void}
typealias xmlReallocFunc Ptr{Void}
typealias xmlStrdupFunc Ptr{Void}
typealias xmlModulePtr Ptr{xmlModule}
# enum xmlModuleOption
const XML_MODULE_LAZY = 1
const XML_MODULE_LOCAL = 2
# end
typealias xmlModuleOption Int32
# enum xmlParserSeverities
const XML_PARSER_SEVERITY_VALIDITY_WARNING = 1
const XML_PARSER_SEVERITY_VALIDITY_ERROR = 2
const XML_PARSER_SEVERITY_WARNING = 3
const XML_PARSER_SEVERITY_ERROR = 4
# end
typealias xmlParserSeverities Int32
# enum xmlTextReaderMode
const XML_TEXTREADER_MODE_INITIAL = 0
const XML_TEXTREADER_MODE_INTERACTIVE = 1
const XML_TEXTREADER_MODE_ERROR = 2
const XML_TEXTREADER_MODE_EOF = 3
const XML_TEXTREADER_MODE_CLOSED = 4
const XML_TEXTREADER_MODE_READING = 5
# end
typealias xmlTextReaderMode Int32
# enum xmlParserProperties
const XML_PARSER_LOADDTD = 1
const XML_PARSER_DEFAULTATTRS = 2
const XML_PARSER_VALIDATE = 3
const XML_PARSER_SUBST_ENTITIES = 4
# end
typealias xmlParserProperties Int32
# enum xmlReaderTypes
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
typealias xmlReaderTypes Int32
typealias xmlTextReaderPtr Ptr{xmlTextReader}
typealias xmlTextReaderLocatorPtr Ptr{None}
typealias xmlTextReaderErrorFunc Ptr{Void}
typealias xmlRegexpPtr Ptr{xmlRegexp}
typealias xmlRegExecCtxtPtr Ptr{xmlRegExecCtxt}
typealias xmlRegExecCallbacks Ptr{Void}
typealias xmlExpCtxtPtr Ptr{xmlExpCtxt}
typealias xmlExpNodePtr Ptr{xmlExpNode}
# enum xmlExpNodeType
const XML_EXP_EMPTY = 0
const XML_EXP_FORBID = 1
const XML_EXP_ATOM = 2
const XML_EXP_SEQ = 3
const XML_EXP_OR = 4
const XML_EXP_COUNT = 5
# end
typealias xmlExpNodeType Int32
# enum xmlSaveOption
const XML_SAVE_FORMAT = 1
const XML_SAVE_NO_DECL = 2
const XML_SAVE_NO_EMPTY = 4
const XML_SAVE_NO_XHTML = 8
const XML_SAVE_XHTML = 16
const XML_SAVE_AS_XML = 32
const XML_SAVE_AS_HTML = 64
const XML_SAVE_WSNONSIG = 128
# end
typealias xmlSaveOption Int32
typealias xmlSaveCtxtPtr Ptr{xmlSaveCtxt}
# enum xmlSchemaValidError
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
typealias xmlSchemaValidError Int32
# enum xmlSchemaValidOption
const XML_SCHEMA_VAL_VC_I_CREATE = 1
# end
typealias xmlSchemaValidOption Int32
typealias xmlSchemaPtr Ptr{xmlSchema}
typealias xmlSchemaValidityErrorFunc Ptr{Void}
typealias xmlSchemaValidityWarningFunc Ptr{Void}
typealias xmlSchemaParserCtxtPtr Ptr{xmlSchemaParserCtxt}
typealias xmlSchemaValidCtxtPtr Ptr{xmlSchemaValidCtxt}
typealias xmlSchemaSAXPlugPtr Ptr{xmlSchemaSAXPlugStruct}
# enum xmlSchemaWhitespaceValueType
const XML_SCHEMA_WHITESPACE_UNKNOWN = 0
const XML_SCHEMA_WHITESPACE_PRESERVE = 1
const XML_SCHEMA_WHITESPACE_REPLACE = 2
const XML_SCHEMA_WHITESPACE_COLLAPSE = 3
# end
typealias xmlSchemaWhitespaceValueType Int32
typealias xmlTextWriterPtr Ptr{xmlTextWriter}
typealias xmlXPathContextPtr Ptr{xmlXPathContext}
typealias xmlXPathParserContextPtr Ptr{xmlXPathParserContext}
# enum xmlXPathError
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
typealias xmlXPathError Int32
typealias xmlNodeSetPtr Ptr{xmlNodeSet}
# enum xmlXPathObjectType
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
typealias xmlXPathObjectType Int32
typealias xmlXPathObjectPtr Ptr{xmlXPathObject}
typealias xmlXPathConvertFunc Ptr{Void}
typealias xmlXPathTypePtr Ptr{xmlXPathType}
typealias xmlXPathVariablePtr Ptr{xmlXPathVariable}
typealias xmlXPathEvalFunc Ptr{Void}
typealias xmlXPathFuncPtr Ptr{xmlXPathFunct}
typealias xmlXPathAxisFunc Ptr{Void}
typealias xmlXPathAxisPtr Ptr{xmlXPathAxis}
typealias xmlXPathFunction Ptr{Void}
typealias xmlXPathVariableLookupFunc Ptr{Void}
typealias xmlXPathFuncLookupFunc Ptr{Void}
typealias xmlXPathCompExprPtr Ptr{xmlXPathCompExpr}
typealias xmlLocationSetPtr Ptr{xmlLocationSet}
