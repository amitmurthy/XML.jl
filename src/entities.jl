# Julia wrapper for header: /usr/include/libxml2/libxml/entities.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

@c None xmlInitializePredefinedEntities () shlib
@c xmlEntityPtr xmlNewEntity (:xmlDocPtr,Ptr{:xmlChar},:Int32,Ptr{:xmlChar},Ptr{:xmlChar},Ptr{:xmlChar}) shlib
@c xmlEntityPtr xmlAddDocEntity (:xmlDocPtr,Ptr{:xmlChar},:Int32,Ptr{:xmlChar},Ptr{:xmlChar},Ptr{:xmlChar}) shlib
@c xmlEntityPtr xmlAddDtdEntity (:xmlDocPtr,Ptr{:xmlChar},:Int32,Ptr{:xmlChar},Ptr{:xmlChar},Ptr{:xmlChar}) shlib
@c xmlEntityPtr xmlGetPredefinedEntity (Ptr{:xmlChar},) shlib
@c xmlEntityPtr xmlGetDocEntity (:xmlDocPtr,Ptr{:xmlChar}) shlib
@c xmlEntityPtr xmlGetDtdEntity (:xmlDocPtr,Ptr{:xmlChar}) shlib
@c xmlEntityPtr xmlGetParameterEntity (:xmlDocPtr,Ptr{:xmlChar}) shlib
@c Ptr{:xmlChar} xmlEncodeEntities (:xmlDocPtr,Ptr{:xmlChar}) shlib
@c Ptr{:xmlChar} xmlEncodeEntitiesReentrant (:xmlDocPtr,Ptr{:xmlChar}) shlib
@c Ptr{:xmlChar} xmlEncodeSpecialChars (:xmlDocPtr,Ptr{:xmlChar}) shlib
@c xmlEntitiesTablePtr xmlCreateEntitiesTable () shlib
@c xmlEntitiesTablePtr xmlCopyEntitiesTable (:xmlEntitiesTablePtr,) shlib
@c None xmlFreeEntitiesTable (:xmlEntitiesTablePtr,) shlib
@c None xmlDumpEntitiesTable (:xmlBufferPtr,:xmlEntitiesTablePtr) shlib
@c None xmlDumpEntityDecl (:xmlBufferPtr,:xmlEntityPtr) shlib
@c None xmlCleanupPredefinedEntities () shlib

