# Julia wrapper for header: /usr/include/libxml2/libxml/xpathInternals.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

@c Int32 xmlXPathPopBoolean (xmlXPathParserContextPtr,) libxml2
@c Float64 xmlXPathPopNumber (xmlXPathParserContextPtr,) libxml2
@c Ptr{xmlChar} xmlXPathPopString (xmlXPathParserContextPtr,) libxml2
@c xmlNodeSetPtr xmlXPathPopNodeSet (xmlXPathParserContextPtr,) libxml2
@c Ptr{None} xmlXPathPopExternal (xmlXPathParserContextPtr,) libxml2
@c None xmlXPathRegisterVariableLookup (xmlXPathContextPtr, xmlXPathVariableLookupFunc, Ptr{None}) libxml2
@c None xmlXPathRegisterFuncLookup (xmlXPathContextPtr, xmlXPathFuncLookupFunc, Ptr{None}) libxml2
@c None xmlXPatherror (xmlXPathParserContextPtr, Ptr{Uint8}, Int32, Int32) libxml2
@c None xmlXPathErr (xmlXPathParserContextPtr, Int32) libxml2
@c None xmlXPathDebugDumpObject (Ptr{FILE}, xmlXPathObjectPtr, Int32) libxml2
@c None xmlXPathDebugDumpCompExpr (Ptr{FILE}, xmlXPathCompExprPtr, Int32) libxml2
@c Int32 xmlXPathNodeSetContains (xmlNodeSetPtr, xmlNodePtr) libxml2
@c xmlNodeSetPtr xmlXPathDifference (xmlNodeSetPtr, xmlNodeSetPtr) libxml2
@c xmlNodeSetPtr xmlXPathIntersection (xmlNodeSetPtr, xmlNodeSetPtr) libxml2
@c xmlNodeSetPtr xmlXPathDistinctSorted (xmlNodeSetPtr,) libxml2
@c xmlNodeSetPtr xmlXPathDistinct (xmlNodeSetPtr,) libxml2
@c Int32 xmlXPathHasSameNodes (xmlNodeSetPtr, xmlNodeSetPtr) libxml2
@c xmlNodeSetPtr xmlXPathNodeLeadingSorted (xmlNodeSetPtr, xmlNodePtr) libxml2
@c xmlNodeSetPtr xmlXPathLeadingSorted (xmlNodeSetPtr, xmlNodeSetPtr) libxml2
@c xmlNodeSetPtr xmlXPathNodeLeading (xmlNodeSetPtr, xmlNodePtr) libxml2
@c xmlNodeSetPtr xmlXPathLeading (xmlNodeSetPtr, xmlNodeSetPtr) libxml2
@c xmlNodeSetPtr xmlXPathNodeTrailingSorted (xmlNodeSetPtr, xmlNodePtr) libxml2
@c xmlNodeSetPtr xmlXPathTrailingSorted (xmlNodeSetPtr, xmlNodeSetPtr) libxml2
@c xmlNodeSetPtr xmlXPathNodeTrailing (xmlNodeSetPtr, xmlNodePtr) libxml2
@c xmlNodeSetPtr xmlXPathTrailing (xmlNodeSetPtr, xmlNodeSetPtr) libxml2
@c Int32 xmlXPathRegisterNs (xmlXPathContextPtr, Ptr{xmlChar}, Ptr{xmlChar}) libxml2
@c Ptr{xmlChar} xmlXPathNsLookup (xmlXPathContextPtr, Ptr{xmlChar}) libxml2
@c None xmlXPathRegisteredNsCleanup (xmlXPathContextPtr,) libxml2
@c Int32 xmlXPathRegisterFunc (xmlXPathContextPtr, Ptr{xmlChar}, xmlXPathFunction) libxml2
@c Int32 xmlXPathRegisterFuncNS (xmlXPathContextPtr, Ptr{xmlChar}, Ptr{xmlChar}, xmlXPathFunction) libxml2
@c Int32 xmlXPathRegisterVariable (xmlXPathContextPtr, Ptr{xmlChar}, xmlXPathObjectPtr) libxml2
@c Int32 xmlXPathRegisterVariableNS (xmlXPathContextPtr, Ptr{xmlChar}, Ptr{xmlChar}, xmlXPathObjectPtr) libxml2
@c xmlXPathFunction xmlXPathFunctionLookup (xmlXPathContextPtr, Ptr{xmlChar}) libxml2
@c xmlXPathFunction xmlXPathFunctionLookupNS (xmlXPathContextPtr, Ptr{xmlChar}, Ptr{xmlChar}) libxml2
@c None xmlXPathRegisteredFuncsCleanup (xmlXPathContextPtr,) libxml2
@c xmlXPathObjectPtr xmlXPathVariableLookup (xmlXPathContextPtr, Ptr{xmlChar}) libxml2
@c xmlXPathObjectPtr xmlXPathVariableLookupNS (xmlXPathContextPtr, Ptr{xmlChar}, Ptr{xmlChar}) libxml2
@c None xmlXPathRegisteredVariablesCleanup (xmlXPathContextPtr,) libxml2
@c xmlXPathParserContextPtr xmlXPathNewParserContext (Ptr{xmlChar}, xmlXPathContextPtr) libxml2
@c None xmlXPathFreeParserContext (xmlXPathParserContextPtr,) libxml2
@c xmlXPathObjectPtr valuePop (xmlXPathParserContextPtr,) libxml2
@c Int32 valuePush (xmlXPathParserContextPtr, xmlXPathObjectPtr) libxml2
@c xmlXPathObjectPtr xmlXPathNewString (Ptr{xmlChar},) libxml2
@c xmlXPathObjectPtr xmlXPathNewCString (Ptr{Uint8},) libxml2
@c xmlXPathObjectPtr xmlXPathWrapString (Ptr{xmlChar},) libxml2
@c xmlXPathObjectPtr xmlXPathWrapCString (Ptr{Uint8},) libxml2
@c xmlXPathObjectPtr xmlXPathNewFloat (Float64,) libxml2
@c xmlXPathObjectPtr xmlXPathNewBoolean (Int32,) libxml2
@c xmlXPathObjectPtr xmlXPathNewNodeSet (xmlNodePtr,) libxml2
@c xmlXPathObjectPtr xmlXPathNewValueTree (xmlNodePtr,) libxml2
@c None xmlXPathNodeSetAdd (xmlNodeSetPtr, xmlNodePtr) libxml2
@c None xmlXPathNodeSetAddUnique (xmlNodeSetPtr, xmlNodePtr) libxml2
@c None xmlXPathNodeSetAddNs (xmlNodeSetPtr, xmlNodePtr, xmlNsPtr) libxml2
@c None xmlXPathNodeSetSort (xmlNodeSetPtr,) libxml2
@c None xmlXPathRoot (xmlXPathParserContextPtr,) libxml2
@c None xmlXPathEvalExpr (xmlXPathParserContextPtr,) libxml2
@c Ptr{xmlChar} xmlXPathParseName (xmlXPathParserContextPtr,) libxml2
@c Ptr{xmlChar} xmlXPathParseNCName (xmlXPathParserContextPtr,) libxml2
@c Float64 xmlXPathStringEvalNumber (Ptr{xmlChar},) libxml2
@c Int32 xmlXPathEvaluatePredicateResult (xmlXPathParserContextPtr, xmlXPathObjectPtr) libxml2
@c None xmlXPathRegisterAllFunctions (xmlXPathContextPtr,) libxml2
@c xmlNodeSetPtr xmlXPathNodeSetMerge (xmlNodeSetPtr, xmlNodeSetPtr) libxml2
@c None xmlXPathNodeSetDel (xmlNodeSetPtr, xmlNodePtr) libxml2
@c None xmlXPathNodeSetRemove (xmlNodeSetPtr, Int32) libxml2
@c xmlXPathObjectPtr xmlXPathNewNodeSetList (xmlNodeSetPtr,) libxml2
@c xmlXPathObjectPtr xmlXPathWrapNodeSet (xmlNodeSetPtr,) libxml2
@c xmlXPathObjectPtr xmlXPathWrapExternal (Ptr{None},) libxml2
@c Int32 xmlXPathEqualValues (xmlXPathParserContextPtr,) libxml2
@c Int32 xmlXPathNotEqualValues (xmlXPathParserContextPtr,) libxml2
@c Int32 xmlXPathCompareValues (xmlXPathParserContextPtr, Int32, Int32) libxml2
@c None xmlXPathValueFlipSign (xmlXPathParserContextPtr,) libxml2
@c None xmlXPathAddValues (xmlXPathParserContextPtr,) libxml2
@c None xmlXPathSubValues (xmlXPathParserContextPtr,) libxml2
@c None xmlXPathMultValues (xmlXPathParserContextPtr,) libxml2
@c None xmlXPathDivValues (xmlXPathParserContextPtr,) libxml2
@c None xmlXPathModValues (xmlXPathParserContextPtr,) libxml2
@c Int32 xmlXPathIsNodeType (Ptr{xmlChar},) libxml2
@c xmlNodePtr xmlXPathNextSelf (xmlXPathParserContextPtr, xmlNodePtr) libxml2
@c xmlNodePtr xmlXPathNextChild (xmlXPathParserContextPtr, xmlNodePtr) libxml2
@c xmlNodePtr xmlXPathNextDescendant (xmlXPathParserContextPtr, xmlNodePtr) libxml2
@c xmlNodePtr xmlXPathNextDescendantOrSelf (xmlXPathParserContextPtr, xmlNodePtr) libxml2
@c xmlNodePtr xmlXPathNextParent (xmlXPathParserContextPtr, xmlNodePtr) libxml2
@c xmlNodePtr xmlXPathNextAncestorOrSelf (xmlXPathParserContextPtr, xmlNodePtr) libxml2
@c xmlNodePtr xmlXPathNextFollowingSibling (xmlXPathParserContextPtr, xmlNodePtr) libxml2
@c xmlNodePtr xmlXPathNextFollowing (xmlXPathParserContextPtr, xmlNodePtr) libxml2
@c xmlNodePtr xmlXPathNextNamespace (xmlXPathParserContextPtr, xmlNodePtr) libxml2
@c xmlNodePtr xmlXPathNextAttribute (xmlXPathParserContextPtr, xmlNodePtr) libxml2
@c xmlNodePtr xmlXPathNextPreceding (xmlXPathParserContextPtr, xmlNodePtr) libxml2
@c xmlNodePtr xmlXPathNextAncestor (xmlXPathParserContextPtr, xmlNodePtr) libxml2
@c xmlNodePtr xmlXPathNextPrecedingSibling (xmlXPathParserContextPtr, xmlNodePtr) libxml2
@c None xmlXPathLastFunction (xmlXPathParserContextPtr, Int32) libxml2
@c None xmlXPathPositionFunction (xmlXPathParserContextPtr, Int32) libxml2
@c None xmlXPathCountFunction (xmlXPathParserContextPtr, Int32) libxml2
@c None xmlXPathIdFunction (xmlXPathParserContextPtr, Int32) libxml2
@c None xmlXPathLocalNameFunction (xmlXPathParserContextPtr, Int32) libxml2
@c None xmlXPathNamespaceURIFunction (xmlXPathParserContextPtr, Int32) libxml2
@c None xmlXPathStringFunction (xmlXPathParserContextPtr, Int32) libxml2
@c None xmlXPathStringLengthFunction (xmlXPathParserContextPtr, Int32) libxml2
@c None xmlXPathConcatFunction (xmlXPathParserContextPtr, Int32) libxml2
@c None xmlXPathContainsFunction (xmlXPathParserContextPtr, Int32) libxml2
@c None xmlXPathStartsWithFunction (xmlXPathParserContextPtr, Int32) libxml2
@c None xmlXPathSubstringFunction (xmlXPathParserContextPtr, Int32) libxml2
@c None xmlXPathSubstringBeforeFunction (xmlXPathParserContextPtr, Int32) libxml2
@c None xmlXPathSubstringAfterFunction (xmlXPathParserContextPtr, Int32) libxml2
@c None xmlXPathNormalizeFunction (xmlXPathParserContextPtr, Int32) libxml2
@c None xmlXPathTranslateFunction (xmlXPathParserContextPtr, Int32) libxml2
@c None xmlXPathNotFunction (xmlXPathParserContextPtr, Int32) libxml2
@c None xmlXPathTrueFunction (xmlXPathParserContextPtr, Int32) libxml2
@c None xmlXPathFalseFunction (xmlXPathParserContextPtr, Int32) libxml2
@c None xmlXPathLangFunction (xmlXPathParserContextPtr, Int32) libxml2
@c None xmlXPathNumberFunction (xmlXPathParserContextPtr, Int32) libxml2
@c None xmlXPathSumFunction (xmlXPathParserContextPtr, Int32) libxml2
@c None xmlXPathFloorFunction (xmlXPathParserContextPtr, Int32) libxml2
@c None xmlXPathCeilingFunction (xmlXPathParserContextPtr, Int32) libxml2
@c None xmlXPathRoundFunction (xmlXPathParserContextPtr, Int32) libxml2
@c None xmlXPathBooleanFunction (xmlXPathParserContextPtr, Int32) libxml2
@c None xmlXPathNodeSetFreeNs (xmlNsPtr,) libxml2

