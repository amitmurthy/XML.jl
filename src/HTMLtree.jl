# Julia wrapper for header: /usr/include/libxml2/libxml/HTMLtree.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

@c htmlDocPtr htmlNewDoc (Ptr{:xmlChar},Ptr{:xmlChar}) shlib
@c htmlDocPtr htmlNewDocNoDtD (Ptr{:xmlChar},Ptr{:xmlChar}) shlib
@c Ptr{:xmlChar} htmlGetMetaEncoding (:htmlDocPtr,) shlib
@c Int32 htmlSetMetaEncoding (:htmlDocPtr,Ptr{:xmlChar}) shlib
@c None htmlDocDumpMemory (:xmlDocPtr,Ptr{Ptr{:xmlChar}},Ptr{:Int32}) shlib
@c None htmlDocDumpMemoryFormat (:xmlDocPtr,Ptr{Ptr{:xmlChar}},Ptr{:Int32},:Int32) shlib
@c Int32 htmlDocDump (Ptr{:FILE},:xmlDocPtr) shlib
@c Int32 htmlSaveFile (Ptr{:Uint8},:xmlDocPtr) shlib
@c Int32 htmlNodeDump (:xmlBufferPtr,:xmlDocPtr,:xmlNodePtr) shlib
@c None htmlNodeDumpFile (Ptr{:FILE},:xmlDocPtr,:xmlNodePtr) shlib
@c Int32 htmlNodeDumpFileFormat (Ptr{:FILE},:xmlDocPtr,:xmlNodePtr,Ptr{:Uint8},:Int32) shlib
@c Int32 htmlSaveFileEnc (Ptr{:Uint8},:xmlDocPtr,Ptr{:Uint8}) shlib
@c Int32 htmlSaveFileFormat (Ptr{:Uint8},:xmlDocPtr,Ptr{:Uint8},:Int32) shlib
@c None htmlNodeDumpFormatOutput (:xmlOutputBufferPtr,:xmlDocPtr,:xmlNodePtr,Ptr{:Uint8},:Int32) shlib
@c None htmlDocContentDumpOutput (:xmlOutputBufferPtr,:xmlDocPtr,Ptr{:Uint8}) shlib
@c None htmlDocContentDumpFormatOutput (:xmlOutputBufferPtr,:xmlDocPtr,Ptr{:Uint8},:Int32) shlib
@c None htmlNodeDumpOutput (:xmlOutputBufferPtr,:xmlDocPtr,:xmlNodePtr,Ptr{:Uint8}) shlib
@c Int32 htmlIsBooleanAttr (Ptr{:xmlChar},) shlib

