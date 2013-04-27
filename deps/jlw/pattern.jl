# Julia wrapper for header: /usr/include/libxml2/libxml/pattern.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

@c None xmlFreePattern (xmlPatternPtr,) libxml2
@c None xmlFreePatternList (xmlPatternPtr,) libxml2
@c xmlPatternPtr xmlPatterncompile (Ptr{xmlChar}, Ptr{xmlDict}, Int32, Ptr{Ptr{xmlChar}}) libxml2
@c Int32 xmlPatternMatch (xmlPatternPtr, xmlNodePtr) libxml2
@c Int32 xmlPatternStreamable (xmlPatternPtr,) libxml2
@c Int32 xmlPatternMaxDepth (xmlPatternPtr,) libxml2
@c Int32 xmlPatternMinDepth (xmlPatternPtr,) libxml2
@c Int32 xmlPatternFromRoot (xmlPatternPtr,) libxml2
@c xmlStreamCtxtPtr xmlPatternGetStreamCtxt (xmlPatternPtr,) libxml2
@c None xmlFreeStreamCtxt (xmlStreamCtxtPtr,) libxml2
@c Int32 xmlStreamPushNode (xmlStreamCtxtPtr, Ptr{xmlChar}, Ptr{xmlChar}, Int32) libxml2
@c Int32 xmlStreamPush (xmlStreamCtxtPtr, Ptr{xmlChar}, Ptr{xmlChar}) libxml2
@c Int32 xmlStreamPushAttr (xmlStreamCtxtPtr, Ptr{xmlChar}, Ptr{xmlChar}) libxml2
@c Int32 xmlStreamPop (xmlStreamCtxtPtr,) libxml2
@c Int32 xmlStreamWantsAnyNode (xmlStreamCtxtPtr,) libxml2

