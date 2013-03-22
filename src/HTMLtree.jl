# Julia wrapper for header: /usr/include/libxml2/libxml/HTMLtree.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

@c htmlDocPtr htmlNewDoc (Ptr{xmlChar}, Ptr{xmlChar}) libxml2
@c htmlDocPtr htmlNewDocNoDtD (Ptr{xmlChar}, Ptr{xmlChar}) libxml2
@c Ptr{xmlChar} htmlGetMetaEncoding (htmlDocPtr,) libxml2
@c Int32 htmlSetMetaEncoding (htmlDocPtr, Ptr{xmlChar}) libxml2
@c None htmlDocDumpMemory (xmlDocPtr, Ptr{Ptr{xmlChar}}, Ptr{Int32}) libxml2
@c None htmlDocDumpMemoryFormat (xmlDocPtr, Ptr{Ptr{xmlChar}}, Ptr{Int32}, Int32) libxml2
@c Int32 htmlDocDump (Ptr{FILE}, xmlDocPtr) libxml2
@c Int32 htmlSaveFile (Ptr{Uint8}, xmlDocPtr) libxml2
@c Int32 htmlNodeDump (xmlBufferPtr, xmlDocPtr, xmlNodePtr) libxml2
@c None htmlNodeDumpFile (Ptr{FILE}, xmlDocPtr, xmlNodePtr) libxml2
@c Int32 htmlNodeDumpFileFormat (Ptr{FILE}, xmlDocPtr, xmlNodePtr, Ptr{Uint8}, Int32) libxml2
@c Int32 htmlSaveFileEnc (Ptr{Uint8}, xmlDocPtr, Ptr{Uint8}) libxml2
@c Int32 htmlSaveFileFormat (Ptr{Uint8}, xmlDocPtr, Ptr{Uint8}, Int32) libxml2
@c None htmlNodeDumpFormatOutput (xmlOutputBufferPtr, xmlDocPtr, xmlNodePtr, Ptr{Uint8}, Int32) libxml2
@c None htmlDocContentDumpOutput (xmlOutputBufferPtr, xmlDocPtr, Ptr{Uint8}) libxml2
@c None htmlDocContentDumpFormatOutput (xmlOutputBufferPtr, xmlDocPtr, Ptr{Uint8}, Int32) libxml2
@c None htmlNodeDumpOutput (xmlOutputBufferPtr, xmlDocPtr, xmlNodePtr, Ptr{Uint8}) libxml2
@c Int32 htmlIsBooleanAttr (Ptr{xmlChar},) libxml2

