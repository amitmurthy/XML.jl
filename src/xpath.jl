# Julia wrapper for header: /usr/include/libxml2/libxml/xpath.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

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

