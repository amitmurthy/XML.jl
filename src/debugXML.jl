# Julia wrapper for header: /usr/include/libxml2/libxml/debugXML.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

@c None xmlDebugDumpString (Ptr{:FILE},Ptr{:xmlChar}) shlib
@c None xmlDebugDumpAttr (Ptr{:FILE},:xmlAttrPtr,:Int32) shlib
@c None xmlDebugDumpAttrList (Ptr{:FILE},:xmlAttrPtr,:Int32) shlib
@c None xmlDebugDumpOneNode (Ptr{:FILE},:xmlNodePtr,:Int32) shlib
@c None xmlDebugDumpNode (Ptr{:FILE},:xmlNodePtr,:Int32) shlib
@c None xmlDebugDumpNodeList (Ptr{:FILE},:xmlNodePtr,:Int32) shlib
@c None xmlDebugDumpDocumentHead (Ptr{:FILE},:xmlDocPtr) shlib
@c None xmlDebugDumpDocument (Ptr{:FILE},:xmlDocPtr) shlib
@c None xmlDebugDumpDTD (Ptr{:FILE},:xmlDtdPtr) shlib
@c None xmlDebugDumpEntities (Ptr{:FILE},:xmlDocPtr) shlib
@c Int32 xmlDebugCheckDocument (Ptr{:FILE},:xmlDocPtr) shlib
@c None xmlLsOneNode (Ptr{:FILE},:xmlNodePtr) shlib
@c Int32 xmlLsCountNode (:xmlNodePtr,) shlib
@c Ptr{:Uint8} xmlBoolToText (:Int32,) shlib
@c None xmlShellPrintXPathError (:Int32,Ptr{:Uint8}) shlib
@c None xmlShellPrintXPathResult (:xmlXPathObjectPtr,) shlib
@c Int32 xmlShellList (:xmlShellCtxtPtr,Ptr{:Uint8},:xmlNodePtr,:xmlNodePtr) shlib
@c Int32 xmlShellBase (:xmlShellCtxtPtr,Ptr{:Uint8},:xmlNodePtr,:xmlNodePtr) shlib
@c Int32 xmlShellDir (:xmlShellCtxtPtr,Ptr{:Uint8},:xmlNodePtr,:xmlNodePtr) shlib
@c Int32 xmlShellLoad (:xmlShellCtxtPtr,Ptr{:Uint8},:xmlNodePtr,:xmlNodePtr) shlib
@c None xmlShellPrintNode (:xmlNodePtr,) shlib
@c Int32 xmlShellCat (:xmlShellCtxtPtr,Ptr{:Uint8},:xmlNodePtr,:xmlNodePtr) shlib
@c Int32 xmlShellWrite (:xmlShellCtxtPtr,Ptr{:Uint8},:xmlNodePtr,:xmlNodePtr) shlib
@c Int32 xmlShellSave (:xmlShellCtxtPtr,Ptr{:Uint8},:xmlNodePtr,:xmlNodePtr) shlib
@c Int32 xmlShellValidate (:xmlShellCtxtPtr,Ptr{:Uint8},:xmlNodePtr,:xmlNodePtr) shlib
@c Int32 xmlShellDu (:xmlShellCtxtPtr,Ptr{:Uint8},:xmlNodePtr,:xmlNodePtr) shlib
@c Int32 xmlShellPwd (:xmlShellCtxtPtr,Ptr{:Uint8},:xmlNodePtr,:xmlNodePtr) shlib
@c None xmlShell (:xmlDocPtr,Ptr{:Uint8},:xmlShellReadlineFunc,Ptr{:FILE}) shlib

