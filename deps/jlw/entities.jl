# Julia wrapper for header: /usr/include/libxml2/libxml/entities.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

@c None xmlInitializePredefinedEntities () libxml2
@c xmlEntityPtr xmlNewEntity (xmlDocPtr, Ptr{xmlChar}, Int32, Ptr{xmlChar}, Ptr{xmlChar}, Ptr{xmlChar}) libxml2
@c xmlEntityPtr xmlAddDocEntity (xmlDocPtr, Ptr{xmlChar}, Int32, Ptr{xmlChar}, Ptr{xmlChar}, Ptr{xmlChar}) libxml2
@c xmlEntityPtr xmlAddDtdEntity (xmlDocPtr, Ptr{xmlChar}, Int32, Ptr{xmlChar}, Ptr{xmlChar}, Ptr{xmlChar}) libxml2
@c xmlEntityPtr xmlGetPredefinedEntity (Ptr{xmlChar},) libxml2
@c xmlEntityPtr xmlGetDocEntity (xmlDocPtr, Ptr{xmlChar}) libxml2
@c xmlEntityPtr xmlGetDtdEntity (xmlDocPtr, Ptr{xmlChar}) libxml2
@c xmlEntityPtr xmlGetParameterEntity (xmlDocPtr, Ptr{xmlChar}) libxml2
@c Ptr{xmlChar} xmlEncodeEntities (xmlDocPtr, Ptr{xmlChar}) libxml2
@c Ptr{xmlChar} xmlEncodeEntitiesReentrant (xmlDocPtr, Ptr{xmlChar}) libxml2
@c Ptr{xmlChar} xmlEncodeSpecialChars (xmlDocPtr, Ptr{xmlChar}) libxml2
@c xmlEntitiesTablePtr xmlCreateEntitiesTable () libxml2
@c xmlEntitiesTablePtr xmlCopyEntitiesTable (xmlEntitiesTablePtr,) libxml2
@c None xmlFreeEntitiesTable (xmlEntitiesTablePtr,) libxml2
@c None xmlDumpEntitiesTable (xmlBufferPtr, xmlEntitiesTablePtr) libxml2
@c None xmlDumpEntityDecl (xmlBufferPtr, xmlEntityPtr) libxml2
@c None xmlCleanupPredefinedEntities () libxml2

