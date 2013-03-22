# Julia wrapper for header: /usr/include/libxml2/libxml/xpointer.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

@c xmlLocationSetPtr xmlXPtrLocationSetCreate (xmlXPathObjectPtr,) libxml2
@c None xmlXPtrFreeLocationSet (xmlLocationSetPtr,) libxml2
@c xmlLocationSetPtr xmlXPtrLocationSetMerge (xmlLocationSetPtr, xmlLocationSetPtr) libxml2
@c xmlXPathObjectPtr xmlXPtrNewRange (xmlNodePtr, Int32, xmlNodePtr, Int32) libxml2
@c xmlXPathObjectPtr xmlXPtrNewRangePoints (xmlXPathObjectPtr, xmlXPathObjectPtr) libxml2
@c xmlXPathObjectPtr xmlXPtrNewRangeNodePoint (xmlNodePtr, xmlXPathObjectPtr) libxml2
@c xmlXPathObjectPtr xmlXPtrNewRangePointNode (xmlXPathObjectPtr, xmlNodePtr) libxml2
@c xmlXPathObjectPtr xmlXPtrNewRangeNodes (xmlNodePtr, xmlNodePtr) libxml2
@c xmlXPathObjectPtr xmlXPtrNewLocationSetNodes (xmlNodePtr, xmlNodePtr) libxml2
@c xmlXPathObjectPtr xmlXPtrNewLocationSetNodeSet (xmlNodeSetPtr,) libxml2
@c xmlXPathObjectPtr xmlXPtrNewRangeNodeObject (xmlNodePtr, xmlXPathObjectPtr) libxml2
@c xmlXPathObjectPtr xmlXPtrNewCollapsedRange (xmlNodePtr,) libxml2
@c None xmlXPtrLocationSetAdd (xmlLocationSetPtr, xmlXPathObjectPtr) libxml2
@c xmlXPathObjectPtr xmlXPtrWrapLocationSet (xmlLocationSetPtr,) libxml2
@c None xmlXPtrLocationSetDel (xmlLocationSetPtr, xmlXPathObjectPtr) libxml2
@c None xmlXPtrLocationSetRemove (xmlLocationSetPtr, Int32) libxml2
@c xmlXPathContextPtr xmlXPtrNewContext (xmlDocPtr, xmlNodePtr, xmlNodePtr) libxml2
@c xmlXPathObjectPtr xmlXPtrEval (Ptr{xmlChar}, xmlXPathContextPtr) libxml2
@c None xmlXPtrRangeToFunction (xmlXPathParserContextPtr, Int32) libxml2
@c xmlNodePtr xmlXPtrBuildNodeList (xmlXPathObjectPtr,) libxml2
@c None xmlXPtrEvalRangePredicate (xmlXPathParserContextPtr,) libxml2

