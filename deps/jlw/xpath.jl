# Julia wrapper for header: /usr/include/libxml2/libxml/xpath.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

@c None xmlXPathFreeObject (xmlXPathObjectPtr,) libxml2
@c xmlNodeSetPtr xmlXPathNodeSetCreate (xmlNodePtr,) libxml2
@c None xmlXPathFreeNodeSetList (xmlXPathObjectPtr,) libxml2
@c None xmlXPathFreeNodeSet (xmlNodeSetPtr,) libxml2
@c xmlXPathObjectPtr xmlXPathObjectCopy (xmlXPathObjectPtr,) libxml2
@c Int32 xmlXPathCmpNodes (xmlNodePtr, xmlNodePtr) libxml2
@c Int32 xmlXPathCastNumberToBoolean (Float64,) libxml2
@c Int32 xmlXPathCastStringToBoolean (Ptr{xmlChar},) libxml2
@c Int32 xmlXPathCastNodeSetToBoolean (xmlNodeSetPtr,) libxml2
@c Int32 xmlXPathCastToBoolean (xmlXPathObjectPtr,) libxml2
@c Float64 xmlXPathCastBooleanToNumber (Int32,) libxml2
@c Float64 xmlXPathCastStringToNumber (Ptr{xmlChar},) libxml2
@c Float64 xmlXPathCastNodeToNumber (xmlNodePtr,) libxml2
@c Float64 xmlXPathCastNodeSetToNumber (xmlNodeSetPtr,) libxml2
@c Float64 xmlXPathCastToNumber (xmlXPathObjectPtr,) libxml2
@c Ptr{xmlChar} xmlXPathCastBooleanToString (Int32,) libxml2
@c Ptr{xmlChar} xmlXPathCastNumberToString (Float64,) libxml2
@c Ptr{xmlChar} xmlXPathCastNodeToString (xmlNodePtr,) libxml2
@c Ptr{xmlChar} xmlXPathCastNodeSetToString (xmlNodeSetPtr,) libxml2
@c Ptr{xmlChar} xmlXPathCastToString (xmlXPathObjectPtr,) libxml2
@c xmlXPathObjectPtr xmlXPathConvertBoolean (xmlXPathObjectPtr,) libxml2
@c xmlXPathObjectPtr xmlXPathConvertNumber (xmlXPathObjectPtr,) libxml2
@c xmlXPathObjectPtr xmlXPathConvertString (xmlXPathObjectPtr,) libxml2
@c xmlXPathContextPtr xmlXPathNewContext (xmlDocPtr,) libxml2
@c None xmlXPathFreeContext (xmlXPathContextPtr,) libxml2
@c Int32 xmlXPathContextSetCache (xmlXPathContextPtr, Int32, Int32, Int32) libxml2
@c Int64 xmlXPathOrderDocElems (xmlDocPtr,) libxml2
@c xmlXPathObjectPtr xmlXPathEval (Ptr{xmlChar}, xmlXPathContextPtr) libxml2
@c xmlXPathObjectPtr xmlXPathEvalExpression (Ptr{xmlChar}, xmlXPathContextPtr) libxml2
@c Int32 xmlXPathEvalPredicate (xmlXPathContextPtr, xmlXPathObjectPtr) libxml2
@c xmlXPathCompExprPtr xmlXPathCompile (Ptr{xmlChar},) libxml2
@c xmlXPathCompExprPtr xmlXPathCtxtCompile (xmlXPathContextPtr, Ptr{xmlChar}) libxml2
@c xmlXPathObjectPtr xmlXPathCompiledEval (xmlXPathCompExprPtr, xmlXPathContextPtr) libxml2
@c Int32 xmlXPathCompiledEvalToBoolean (xmlXPathCompExprPtr, xmlXPathContextPtr) libxml2
@c None xmlXPathFreeCompExpr (xmlXPathCompExprPtr,) libxml2
@c None xmlXPathInit () libxml2
@c Int32 xmlXPathIsNaN (Float64,) libxml2
@c Int32 xmlXPathIsInf (Float64,) libxml2

