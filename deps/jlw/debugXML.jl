# Julia wrapper for header: /usr/include/libxml2/libxml/debugXML.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

@c None xmlDebugDumpString (Ptr{FILE}, Ptr{xmlChar}) libxml2
@c None xmlDebugDumpAttr (Ptr{FILE}, xmlAttrPtr, Int32) libxml2
@c None xmlDebugDumpAttrList (Ptr{FILE}, xmlAttrPtr, Int32) libxml2
@c None xmlDebugDumpOneNode (Ptr{FILE}, xmlNodePtr, Int32) libxml2
@c None xmlDebugDumpNode (Ptr{FILE}, xmlNodePtr, Int32) libxml2
@c None xmlDebugDumpNodeList (Ptr{FILE}, xmlNodePtr, Int32) libxml2
@c None xmlDebugDumpDocumentHead (Ptr{FILE}, xmlDocPtr) libxml2
@c None xmlDebugDumpDocument (Ptr{FILE}, xmlDocPtr) libxml2
@c None xmlDebugDumpDTD (Ptr{FILE}, xmlDtdPtr) libxml2
@c None xmlDebugDumpEntities (Ptr{FILE}, xmlDocPtr) libxml2
@c Int32 xmlDebugCheckDocument (Ptr{FILE}, xmlDocPtr) libxml2
@c None xmlLsOneNode (Ptr{FILE}, xmlNodePtr) libxml2
@c Int32 xmlLsCountNode (xmlNodePtr,) libxml2
@c Ptr{Uint8} xmlBoolToText (Int32,) libxml2
@c None xmlShellPrintXPathError (Int32, Ptr{Uint8}) libxml2
@c None xmlShellPrintXPathResult (xmlXPathObjectPtr,) libxml2
@c Int32 xmlShellList (xmlShellCtxtPtr, Ptr{Uint8}, xmlNodePtr, xmlNodePtr) libxml2
@c Int32 xmlShellBase (xmlShellCtxtPtr, Ptr{Uint8}, xmlNodePtr, xmlNodePtr) libxml2
@c Int32 xmlShellDir (xmlShellCtxtPtr, Ptr{Uint8}, xmlNodePtr, xmlNodePtr) libxml2
@c Int32 xmlShellLoad (xmlShellCtxtPtr, Ptr{Uint8}, xmlNodePtr, xmlNodePtr) libxml2
@c None xmlShellPrintNode (xmlNodePtr,) libxml2
@c Int32 xmlShellCat (xmlShellCtxtPtr, Ptr{Uint8}, xmlNodePtr, xmlNodePtr) libxml2
@c Int32 xmlShellWrite (xmlShellCtxtPtr, Ptr{Uint8}, xmlNodePtr, xmlNodePtr) libxml2
@c Int32 xmlShellSave (xmlShellCtxtPtr, Ptr{Uint8}, xmlNodePtr, xmlNodePtr) libxml2
@c Int32 xmlShellValidate (xmlShellCtxtPtr, Ptr{Uint8}, xmlNodePtr, xmlNodePtr) libxml2
@c Int32 xmlShellDu (xmlShellCtxtPtr, Ptr{Uint8}, xmlNodePtr, xmlNodePtr) libxml2
@c Int32 xmlShellPwd (xmlShellCtxtPtr, Ptr{Uint8}, xmlNodePtr, xmlNodePtr) libxml2
@c None xmlShell (xmlDocPtr, Ptr{Uint8}, xmlShellReadlineFunc, Ptr{FILE}) libxml2

