# Julia wrapper for header: /usr/include/libxml2/libxml/xinclude.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

@c Int32 xmlXIncludeProcess (:xmlDocPtr,) shlib
@c Int32 xmlXIncludeProcessFlags (:xmlDocPtr,:Int32) shlib
@c Int32 xmlXIncludeProcessFlagsData (:xmlDocPtr,:Int32,Ptr{:None}) shlib
@c Int32 xmlXIncludeProcessTreeFlagsData (:xmlNodePtr,:Int32,Ptr{:None}) shlib
@c Int32 xmlXIncludeProcessTree (:xmlNodePtr,) shlib
@c Int32 xmlXIncludeProcessTreeFlags (:xmlNodePtr,:Int32) shlib
@c xmlXIncludeCtxtPtr xmlXIncludeNewContext (:xmlDocPtr,) shlib
@c Int32 xmlXIncludeSetFlags (:xmlXIncludeCtxtPtr,:Int32) shlib
@c None xmlXIncludeFreeContext (:xmlXIncludeCtxtPtr,) shlib
@c Int32 xmlXIncludeProcessNode (:xmlXIncludeCtxtPtr,:xmlNodePtr) shlib

