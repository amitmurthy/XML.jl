# Julia wrapper for header: /usr/include/libxml2/libxml/xmlregexp.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

@c xmlRegexpPtr xmlRegexpCompile (Ptr{:xmlChar},) shlib
@c None xmlRegFreeRegexp (:xmlRegexpPtr,) shlib
@c Int32 xmlRegexpExec (:xmlRegexpPtr,Ptr{:xmlChar}) shlib
@c None xmlRegexpPrint (Ptr{:FILE},:xmlRegexpPtr) shlib
@c Int32 xmlRegexpIsDeterminist (:xmlRegexpPtr,) shlib
@c xmlRegExecCtxtPtr xmlRegNewExecCtxt (:xmlRegexpPtr,:xmlRegExecCallbacks,Ptr{:None}) shlib
@c None xmlRegFreeExecCtxt (:xmlRegExecCtxtPtr,) shlib
@c Int32 xmlRegExecPushString (:xmlRegExecCtxtPtr,Ptr{:xmlChar},Ptr{:None}) shlib
@c Int32 xmlRegExecPushString2 (:xmlRegExecCtxtPtr,Ptr{:xmlChar},Ptr{:xmlChar},Ptr{:None}) shlib
@c Int32 xmlRegExecNextValues (:xmlRegExecCtxtPtr,Ptr{:Int32},Ptr{:Int32},Ptr{Ptr{:xmlChar}},Ptr{:Int32}) shlib
@c Int32 xmlRegExecErrInfo (:xmlRegExecCtxtPtr,Ptr{Ptr{:xmlChar}},Ptr{:Int32},Ptr{:Int32},Ptr{Ptr{:xmlChar}},Ptr{:Int32}) shlib
@c None xmlExpFreeCtxt (:xmlExpCtxtPtr,) shlib
@c xmlExpCtxtPtr xmlExpNewCtxt (:Int32,:xmlDictPtr) shlib
@c Int32 xmlExpCtxtNbNodes (:xmlExpCtxtPtr,) shlib
@c Int32 xmlExpCtxtNbCons (:xmlExpCtxtPtr,) shlib
@c None xmlExpFree (:xmlExpCtxtPtr,:xmlExpNodePtr) shlib
@c None xmlExpRef (:xmlExpNodePtr,) shlib
@c xmlExpNodePtr xmlExpParse (:xmlExpCtxtPtr,Ptr{:Uint8}) shlib
@c xmlExpNodePtr xmlExpNewAtom (:xmlExpCtxtPtr,Ptr{:xmlChar},:Int32) shlib
@c xmlExpNodePtr xmlExpNewOr (:xmlExpCtxtPtr,:xmlExpNodePtr,:xmlExpNodePtr) shlib
@c xmlExpNodePtr xmlExpNewSeq (:xmlExpCtxtPtr,:xmlExpNodePtr,:xmlExpNodePtr) shlib
@c xmlExpNodePtr xmlExpNewRange (:xmlExpCtxtPtr,:xmlExpNodePtr,:Int32,:Int32) shlib
@c Int32 xmlExpIsNillable (:xmlExpNodePtr,) shlib
@c Int32 xmlExpMaxToken (:xmlExpNodePtr,) shlib
@c Int32 xmlExpGetLanguage (:xmlExpCtxtPtr,:xmlExpNodePtr,Ptr{Ptr{:xmlChar}},:Int32) shlib
@c Int32 xmlExpGetStart (:xmlExpCtxtPtr,:xmlExpNodePtr,Ptr{Ptr{:xmlChar}},:Int32) shlib
@c xmlExpNodePtr xmlExpStringDerive (:xmlExpCtxtPtr,:xmlExpNodePtr,Ptr{:xmlChar},:Int32) shlib
@c xmlExpNodePtr xmlExpExpDerive (:xmlExpCtxtPtr,:xmlExpNodePtr,:xmlExpNodePtr) shlib
@c Int32 xmlExpSubsume (:xmlExpCtxtPtr,:xmlExpNodePtr,:xmlExpNodePtr) shlib
@c None xmlExpDump (:xmlBufferPtr,:xmlExpNodePtr) shlib

