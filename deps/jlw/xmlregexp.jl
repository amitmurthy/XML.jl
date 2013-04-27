# Julia wrapper for header: /usr/include/libxml2/libxml/xmlregexp.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

@c xmlRegexpPtr xmlRegexpCompile (Ptr{xmlChar},) libxml2
@c None xmlRegFreeRegexp (xmlRegexpPtr,) libxml2
@c Int32 xmlRegexpExec (xmlRegexpPtr, Ptr{xmlChar}) libxml2
@c None xmlRegexpPrint (Ptr{FILE}, xmlRegexpPtr) libxml2
@c Int32 xmlRegexpIsDeterminist (xmlRegexpPtr,) libxml2
@c xmlRegExecCtxtPtr xmlRegNewExecCtxt (xmlRegexpPtr, xmlRegExecCallbacks, Ptr{None}) libxml2
@c None xmlRegFreeExecCtxt (xmlRegExecCtxtPtr,) libxml2
@c Int32 xmlRegExecPushString (xmlRegExecCtxtPtr, Ptr{xmlChar}, Ptr{None}) libxml2
@c Int32 xmlRegExecPushString2 (xmlRegExecCtxtPtr, Ptr{xmlChar}, Ptr{xmlChar}, Ptr{None}) libxml2
@c Int32 xmlRegExecNextValues (xmlRegExecCtxtPtr, Ptr{Int32}, Ptr{Int32}, Ptr{Ptr{xmlChar}}, Ptr{Int32}) libxml2
@c Int32 xmlRegExecErrInfo (xmlRegExecCtxtPtr, Ptr{Ptr{xmlChar}}, Ptr{Int32}, Ptr{Int32}, Ptr{Ptr{xmlChar}}, Ptr{Int32}) libxml2
@c None xmlExpFreeCtxt (xmlExpCtxtPtr,) libxml2
@c xmlExpCtxtPtr xmlExpNewCtxt (Int32, xmlDictPtr) libxml2
@c Int32 xmlExpCtxtNbNodes (xmlExpCtxtPtr,) libxml2
@c Int32 xmlExpCtxtNbCons (xmlExpCtxtPtr,) libxml2
@c None xmlExpFree (xmlExpCtxtPtr, xmlExpNodePtr) libxml2
@c None xmlExpRef (xmlExpNodePtr,) libxml2
@c xmlExpNodePtr xmlExpParse (xmlExpCtxtPtr, Ptr{Uint8}) libxml2
@c xmlExpNodePtr xmlExpNewAtom (xmlExpCtxtPtr, Ptr{xmlChar}, Int32) libxml2
@c xmlExpNodePtr xmlExpNewOr (xmlExpCtxtPtr, xmlExpNodePtr, xmlExpNodePtr) libxml2
@c xmlExpNodePtr xmlExpNewSeq (xmlExpCtxtPtr, xmlExpNodePtr, xmlExpNodePtr) libxml2
@c xmlExpNodePtr xmlExpNewRange (xmlExpCtxtPtr, xmlExpNodePtr, Int32, Int32) libxml2
@c Int32 xmlExpIsNillable (xmlExpNodePtr,) libxml2
@c Int32 xmlExpMaxToken (xmlExpNodePtr,) libxml2
@c Int32 xmlExpGetLanguage (xmlExpCtxtPtr, xmlExpNodePtr, Ptr{Ptr{xmlChar}}, Int32) libxml2
@c Int32 xmlExpGetStart (xmlExpCtxtPtr, xmlExpNodePtr, Ptr{Ptr{xmlChar}}, Int32) libxml2
@c xmlExpNodePtr xmlExpStringDerive (xmlExpCtxtPtr, xmlExpNodePtr, Ptr{xmlChar}, Int32) libxml2
@c xmlExpNodePtr xmlExpExpDerive (xmlExpCtxtPtr, xmlExpNodePtr, xmlExpNodePtr) libxml2
@c Int32 xmlExpSubsume (xmlExpCtxtPtr, xmlExpNodePtr, xmlExpNodePtr) libxml2
@c None xmlExpDump (xmlBufferPtr, xmlExpNodePtr) libxml2

