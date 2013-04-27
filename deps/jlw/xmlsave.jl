# Julia wrapper for header: /usr/include/libxml2/libxml/xmlsave.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

@c xmlSaveCtxtPtr xmlSaveToFd (Int32, Ptr{Uint8}, Int32) libxml2
@c xmlSaveCtxtPtr xmlSaveToFilename (Ptr{Uint8}, Ptr{Uint8}, Int32) libxml2
@c xmlSaveCtxtPtr xmlSaveToBuffer (xmlBufferPtr, Ptr{Uint8}, Int32) libxml2
@c xmlSaveCtxtPtr xmlSaveToIO (xmlOutputWriteCallback, xmlOutputCloseCallback, Ptr{None}, Ptr{Uint8}, Int32) libxml2
@c Int64 xmlSaveDoc (xmlSaveCtxtPtr, xmlDocPtr) libxml2
@c Int64 xmlSaveTree (xmlSaveCtxtPtr, xmlNodePtr) libxml2
@c Int32 xmlSaveFlush (xmlSaveCtxtPtr,) libxml2
@c Int32 xmlSaveClose (xmlSaveCtxtPtr,) libxml2
@c Int32 xmlSaveSetEscape (xmlSaveCtxtPtr, xmlCharEncodingOutputFunc) libxml2
@c Int32 xmlSaveSetAttrEscape (xmlSaveCtxtPtr, xmlCharEncodingOutputFunc) libxml2

