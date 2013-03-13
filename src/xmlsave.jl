# Julia wrapper for header: /usr/include/libxml2/libxml/xmlsave.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

@c xmlSaveCtxtPtr xmlSaveToFd (:Int32,Ptr{:Uint8},:Int32) shlib
@c xmlSaveCtxtPtr xmlSaveToFilename (Ptr{:Uint8},Ptr{:Uint8},:Int32) shlib
@c xmlSaveCtxtPtr xmlSaveToBuffer (:xmlBufferPtr,Ptr{:Uint8},:Int32) shlib
@c xmlSaveCtxtPtr xmlSaveToIO (:xmlOutputWriteCallback,:xmlOutputCloseCallback,Ptr{:None},Ptr{:Uint8},:Int32) shlib
@c Int64 xmlSaveDoc (:xmlSaveCtxtPtr,:xmlDocPtr) shlib
@c Int64 xmlSaveTree (:xmlSaveCtxtPtr,:xmlNodePtr) shlib
@c Int32 xmlSaveFlush (:xmlSaveCtxtPtr,) shlib
@c Int32 xmlSaveClose (:xmlSaveCtxtPtr,) shlib
@c Int32 xmlSaveSetEscape (:xmlSaveCtxtPtr,:xmlCharEncodingOutputFunc) shlib
@c Int32 xmlSaveSetAttrEscape (:xmlSaveCtxtPtr,:xmlCharEncodingOutputFunc) shlib

