# Julia wrapper for header: /usr/include/libxml2/libxml/xmlschemastypes.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

@c None xmlSchemaInitTypes () libxml2
@c None xmlSchemaCleanupTypes () libxml2
@c xmlSchemaTypePtr xmlSchemaGetPredefinedType (Ptr{xmlChar}, Ptr{xmlChar}) libxml2
@c Int32 xmlSchemaValidatePredefinedType (xmlSchemaTypePtr, Ptr{xmlChar}, Ptr{xmlSchemaValPtr}) libxml2
@c Int32 xmlSchemaValPredefTypeNode (xmlSchemaTypePtr, Ptr{xmlChar}, Ptr{xmlSchemaValPtr}, xmlNodePtr) libxml2
@c Int32 xmlSchemaValidateFacet (xmlSchemaTypePtr, xmlSchemaFacetPtr, Ptr{xmlChar}, xmlSchemaValPtr) libxml2
@c Int32 xmlSchemaValidateFacetWhtsp (xmlSchemaFacetPtr, xmlSchemaWhitespaceValueType, xmlSchemaValType, Ptr{xmlChar}, xmlSchemaValPtr, xmlSchemaWhitespaceValueType) libxml2
@c None xmlSchemaFreeValue (xmlSchemaValPtr,) libxml2
@c xmlSchemaFacetPtr xmlSchemaNewFacet () libxml2
@c Int32 xmlSchemaCheckFacet (xmlSchemaFacetPtr, xmlSchemaTypePtr, xmlSchemaParserCtxtPtr, Ptr{xmlChar}) libxml2
@c None xmlSchemaFreeFacet (xmlSchemaFacetPtr,) libxml2
@c Int32 xmlSchemaCompareValues (xmlSchemaValPtr, xmlSchemaValPtr) libxml2
@c xmlSchemaTypePtr xmlSchemaGetBuiltInListSimpleTypeItemType (xmlSchemaTypePtr,) libxml2
@c Int32 xmlSchemaValidateListSimpleTypeFacet (xmlSchemaFacetPtr, Ptr{xmlChar}, Uint64, Ptr{Uint64}) libxml2
@c xmlSchemaTypePtr xmlSchemaGetBuiltInType (xmlSchemaValType,) libxml2
@c Int32 xmlSchemaIsBuiltInTypeFacet (xmlSchemaTypePtr, Int32) libxml2
@c Ptr{xmlChar} xmlSchemaCollapseString (Ptr{xmlChar},) libxml2
@c Ptr{xmlChar} xmlSchemaWhiteSpaceReplace (Ptr{xmlChar},) libxml2
@c Uint64 xmlSchemaGetFacetValueAsULong (xmlSchemaFacetPtr,) libxml2
@c Int32 xmlSchemaValidateLengthFacet (xmlSchemaTypePtr, xmlSchemaFacetPtr, Ptr{xmlChar}, xmlSchemaValPtr, Ptr{Uint64}) libxml2
@c Int32 xmlSchemaValidateLengthFacetWhtsp (xmlSchemaFacetPtr, xmlSchemaValType, Ptr{xmlChar}, xmlSchemaValPtr, Ptr{Uint64}, xmlSchemaWhitespaceValueType) libxml2
@c Int32 xmlSchemaValPredefTypeNodeNoNorm (xmlSchemaTypePtr, Ptr{xmlChar}, Ptr{xmlSchemaValPtr}, xmlNodePtr) libxml2
@c Int32 xmlSchemaGetCanonValue (xmlSchemaValPtr, Ptr{Ptr{xmlChar}}) libxml2
@c Int32 xmlSchemaGetCanonValueWhtsp (xmlSchemaValPtr, Ptr{Ptr{xmlChar}}, xmlSchemaWhitespaceValueType) libxml2
@c Int32 xmlSchemaValueAppend (xmlSchemaValPtr, xmlSchemaValPtr) libxml2
@c xmlSchemaValPtr xmlSchemaValueGetNext (xmlSchemaValPtr,) libxml2
@c Ptr{xmlChar} xmlSchemaValueGetAsString (xmlSchemaValPtr,) libxml2
@c Int32 xmlSchemaValueGetAsBoolean (xmlSchemaValPtr,) libxml2
@c xmlSchemaValPtr xmlSchemaNewStringValue (xmlSchemaValType, Ptr{xmlChar}) libxml2
@c xmlSchemaValPtr xmlSchemaNewNOTATIONValue (Ptr{xmlChar}, Ptr{xmlChar}) libxml2
@c xmlSchemaValPtr xmlSchemaNewQNameValue (Ptr{xmlChar}, Ptr{xmlChar}) libxml2
@c Int32 xmlSchemaCompareValuesWhtsp (xmlSchemaValPtr, xmlSchemaWhitespaceValueType, xmlSchemaValPtr, xmlSchemaWhitespaceValueType) libxml2
@c xmlSchemaValPtr xmlSchemaCopyValue (xmlSchemaValPtr,) libxml2
@c xmlSchemaValType xmlSchemaGetValType (xmlSchemaValPtr,) libxml2

