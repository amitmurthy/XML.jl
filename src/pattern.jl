# Julia wrapper for header: /usr/include/libxml2/libxml/pattern.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

@c None xmlFreePattern (:xmlPatternPtr,) shlib
@c None xmlFreePatternList (:xmlPatternPtr,) shlib
@c xmlPatternPtr xmlPatterncompile (Ptr{:xmlChar},Ptr{:xmlDict},:Int32,Ptr{Ptr{:xmlChar}}) shlib
@c Int32 xmlPatternMatch (:xmlPatternPtr,:xmlNodePtr) shlib
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

