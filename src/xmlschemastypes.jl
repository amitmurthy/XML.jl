# Julia wrapper for header: /usr/include/libxml2/libxml/xmlschemastypes.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

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

