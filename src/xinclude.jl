# Julia wrapper for header: /usr/include/libxml2/libxml/xinclude.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

@c Int32 xmlXIncludeProcess (xmlDocPtr,) libxml2
@c Int32 xmlXIncludeProcessFlags (xmlDocPtr, Int32) libxml2
@c Int32 xmlXIncludeProcessFlagsData (xmlDocPtr, Int32, Ptr{None}) libxml2
@c Int32 xmlXIncludeProcessTreeFlagsData (xmlNodePtr, Int32, Ptr{None}) libxml2
@c Int32 xmlXIncludeProcessTree (xmlNodePtr,) libxml2
@c Int32 xmlXIncludeProcessTreeFlags (xmlNodePtr, Int32) libxml2
@c xmlXIncludeCtxtPtr xmlXIncludeNewContext (xmlDocPtr,) libxml2
@c Int32 xmlXIncludeSetFlags (xmlXIncludeCtxtPtr, Int32) libxml2
@c None xmlXIncludeFreeContext (xmlXIncludeCtxtPtr,) libxml2
@c Int32 xmlXIncludeProcessNode (xmlXIncludeCtxtPtr, xmlNodePtr) libxml2

