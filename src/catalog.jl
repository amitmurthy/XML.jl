# Julia wrapper for header: /usr/include/libxml2/libxml/catalog.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

@c xmlCatalogPtr xmlNewCatalog (:Int32,) shlib
@c xmlCatalogPtr xmlLoadACatalog (Ptr{:Uint8},) shlib
@c xmlCatalogPtr xmlLoadSGMLSuperCatalog (Ptr{:Uint8},) shlib
@c Int32 xmlConvertSGMLCatalog (:xmlCatalogPtr,) shlib
@c Int32 xmlACatalogAdd (:xmlCatalogPtr,Ptr{:xmlChar},Ptr{:xmlChar},Ptr{:xmlChar}) shlib
@c Int32 xmlACatalogRemove (:xmlCatalogPtr,Ptr{:xmlChar}) shlib
@c Ptr{:xmlChar} xmlACatalogResolve (:xmlCatalogPtr,Ptr{:xmlChar},Ptr{:xmlChar}) shlib
@c Ptr{:xmlChar} xmlACatalogResolveSystem (:xmlCatalogPtr,Ptr{:xmlChar}) shlib
@c Ptr{:xmlChar} xmlACatalogResolvePublic (:xmlCatalogPtr,Ptr{:xmlChar}) shlib
@c Ptr{:xmlChar} xmlACatalogResolveURI (:xmlCatalogPtr,Ptr{:xmlChar}) shlib
@c None xmlACatalogDump (:xmlCatalogPtr,Ptr{:FILE}) shlib
@c None xmlFreeCatalog (:xmlCatalogPtr,) shlib
@c Int32 xmlCatalogIsEmpty (:xmlCatalogPtr,) shlib
@c None xmlInitializeCatalog () shlib
@c Int32 xmlLoadCatalog (Ptr{:Uint8},) shlib
@c None xmlLoadCatalogs (Ptr{:Uint8},) shlib
@c None xmlCatalogCleanup () shlib
@c None xmlCatalogDump (Ptr{:FILE},) shlib
@c Ptr{:xmlChar} xmlCatalogResolve (Ptr{:xmlChar},Ptr{:xmlChar}) shlib
@c Ptr{:xmlChar} xmlCatalogResolveSystem (Ptr{:xmlChar},) shlib
@c Ptr{:xmlChar} xmlCatalogResolvePublic (Ptr{:xmlChar},) shlib
@c Ptr{:xmlChar} xmlCatalogResolveURI (Ptr{:xmlChar},) shlib
@c Int32 xmlCatalogAdd (Ptr{:xmlChar},Ptr{:xmlChar},Ptr{:xmlChar}) shlib
@c Int32 xmlCatalogRemove (Ptr{:xmlChar},) shlib
@c xmlDocPtr xmlParseCatalogFile (Ptr{:Uint8},) shlib
@c Int32 xmlCatalogConvert () shlib
@c None xmlCatalogFreeLocal (Ptr{:None},) shlib
@c Ptr{:None} xmlCatalogAddLocal (Ptr{:None},Ptr{:xmlChar}) shlib
@c Ptr{:xmlChar} xmlCatalogLocalResolve (Ptr{:None},Ptr{:xmlChar},Ptr{:xmlChar}) shlib
@c Ptr{:xmlChar} xmlCatalogLocalResolveURI (Ptr{:None},Ptr{:xmlChar}) shlib
@c Int32 xmlCatalogSetDebug (:Int32,) shlib
@c xmlCatalogPrefer xmlCatalogSetDefaultPrefer (:xmlCatalogPrefer,) shlib
@c None xmlCatalogSetDefaults (:xmlCatalogAllow,) shlib
@c xmlCatalogAllow xmlCatalogGetDefaults () shlib
@c Ptr{:xmlChar} xmlCatalogGetSystem (Ptr{:xmlChar},) shlib
@c Ptr{:xmlChar} xmlCatalogGetPublic (Ptr{:xmlChar},) shlib

