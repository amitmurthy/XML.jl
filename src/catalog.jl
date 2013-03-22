# Julia wrapper for header: /usr/include/libxml2/libxml/catalog.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

@c xmlCatalogPtr xmlNewCatalog (Int32,) libxml2
@c xmlCatalogPtr xmlLoadACatalog (Ptr{Uint8},) libxml2
@c xmlCatalogPtr xmlLoadSGMLSuperCatalog (Ptr{Uint8},) libxml2
@c Int32 xmlConvertSGMLCatalog (xmlCatalogPtr,) libxml2
@c Int32 xmlACatalogAdd (xmlCatalogPtr, Ptr{xmlChar}, Ptr{xmlChar}, Ptr{xmlChar}) libxml2
@c Int32 xmlACatalogRemove (xmlCatalogPtr, Ptr{xmlChar}) libxml2
@c Ptr{xmlChar} xmlACatalogResolve (xmlCatalogPtr, Ptr{xmlChar}, Ptr{xmlChar}) libxml2
@c Ptr{xmlChar} xmlACatalogResolveSystem (xmlCatalogPtr, Ptr{xmlChar}) libxml2
@c Ptr{xmlChar} xmlACatalogResolvePublic (xmlCatalogPtr, Ptr{xmlChar}) libxml2
@c Ptr{xmlChar} xmlACatalogResolveURI (xmlCatalogPtr, Ptr{xmlChar}) libxml2
@c None xmlACatalogDump (xmlCatalogPtr, Ptr{FILE}) libxml2
@c None xmlFreeCatalog (xmlCatalogPtr,) libxml2
@c Int32 xmlCatalogIsEmpty (xmlCatalogPtr,) libxml2
@c None xmlInitializeCatalog () libxml2
@c Int32 xmlLoadCatalog (Ptr{Uint8},) libxml2
@c None xmlLoadCatalogs (Ptr{Uint8},) libxml2
@c None xmlCatalogCleanup () libxml2
@c None xmlCatalogDump (Ptr{FILE},) libxml2
@c Ptr{xmlChar} xmlCatalogResolve (Ptr{xmlChar}, Ptr{xmlChar}) libxml2
@c Ptr{xmlChar} xmlCatalogResolveSystem (Ptr{xmlChar},) libxml2
@c Ptr{xmlChar} xmlCatalogResolvePublic (Ptr{xmlChar},) libxml2
@c Ptr{xmlChar} xmlCatalogResolveURI (Ptr{xmlChar},) libxml2
@c Int32 xmlCatalogAdd (Ptr{xmlChar}, Ptr{xmlChar}, Ptr{xmlChar}) libxml2
@c Int32 xmlCatalogRemove (Ptr{xmlChar},) libxml2
@c xmlDocPtr xmlParseCatalogFile (Ptr{Uint8},) libxml2
@c Int32 xmlCatalogConvert () libxml2
@c None xmlCatalogFreeLocal (Ptr{None},) libxml2
@c Ptr{None} xmlCatalogAddLocal (Ptr{None}, Ptr{xmlChar}) libxml2
@c Ptr{xmlChar} xmlCatalogLocalResolve (Ptr{None}, Ptr{xmlChar}, Ptr{xmlChar}) libxml2
@c Ptr{xmlChar} xmlCatalogLocalResolveURI (Ptr{None}, Ptr{xmlChar}) libxml2
@c Int32 xmlCatalogSetDebug (Int32,) libxml2
@c xmlCatalogPrefer xmlCatalogSetDefaultPrefer (xmlCatalogPrefer,) libxml2
@c None xmlCatalogSetDefaults (xmlCatalogAllow,) libxml2
@c xmlCatalogAllow xmlCatalogGetDefaults () libxml2
@c Ptr{xmlChar} xmlCatalogGetSystem (Ptr{xmlChar},) libxml2
@c Ptr{xmlChar} xmlCatalogGetPublic (Ptr{xmlChar},) libxml2

