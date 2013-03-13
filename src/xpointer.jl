# Julia wrapper for header: /usr/include/libxml2/libxml/xpointer.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

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

