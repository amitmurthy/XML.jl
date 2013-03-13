# Julia wrapper for header: /usr/include/libxml2/libxml/parserInternals.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

@c Int32 xmlIsLetter (:Int32,) shlib
@c xmlParserCtxtPtr xmlCreateFileParserCtxt (Ptr{:Uint8},) shlib
@c xmlParserCtxtPtr xmlCreateURLParserCtxt (Ptr{:Uint8},:Int32) shlib
@c xmlParserCtxtPtr xmlCreateMemoryParserCtxt (Ptr{:Uint8},:Int32) shlib
@c xmlParserCtxtPtr xmlCreateEntityParserCtxt (Ptr{:xmlChar},Ptr{:xmlChar},Ptr{:xmlChar}) shlib
@c Int32 xmlSwitchEncoding (:xmlParserCtxtPtr,:xmlCharEncoding) shlib
@c Int32 xmlSwitchToEncoding (:xmlParserCtxtPtr,:xmlCharEncodingHandlerPtr) shlib
@c Int32 xmlSwitchInputEncoding (:xmlParserCtxtPtr,:xmlParserInputPtr,:xmlCharEncodingHandlerPtr) shlib
@c xmlParserInputPtr xmlNewStringInputStream (:xmlParserCtxtPtr,Ptr{:xmlChar}) shlib
@c xmlParserInputPtr xmlNewEntityInputStream (:xmlParserCtxtPtr,:xmlEntityPtr) shlib
@c Int32 xmlPushInput (:xmlParserCtxtPtr,:xmlParserInputPtr) shlib
@c xmlChar xmlPopInput (:xmlParserCtxtPtr,) shlib
@c None xmlFreeInputStream (:xmlParserInputPtr,) shlib
@c xmlParserInputPtr xmlNewInputFromFile (:xmlParserCtxtPtr,Ptr{:Uint8}) shlib
@c xmlParserInputPtr xmlNewInputStream (:xmlParserCtxtPtr,) shlib
@c Ptr{:xmlChar} xmlSplitQName (:xmlParserCtxtPtr,Ptr{:xmlChar},Ptr{Ptr{:xmlChar}}) shlib
@c Ptr{:xmlChar} xmlParseName (:xmlParserCtxtPtr,) shlib
@c Ptr{:xmlChar} xmlParseNmtoken (:xmlParserCtxtPtr,) shlib
@c Ptr{:xmlChar} xmlParseEntityValue (:xmlParserCtxtPtr,Ptr{Ptr{:xmlChar}}) shlib
@c Ptr{:xmlChar} xmlParseAttValue (:xmlParserCtxtPtr,) shlib
@c Ptr{:xmlChar} xmlParseSystemLiteral (:xmlParserCtxtPtr,) shlib
@c Ptr{:xmlChar} xmlParsePubidLiteral (:xmlParserCtxtPtr,) shlib
@c None xmlParseCharData (:xmlParserCtxtPtr,:Int32) shlib
@c Ptr{:xmlChar} xmlParseExternalID (:xmlParserCtxtPtr,Ptr{Ptr{:xmlChar}},:Int32) shlib
@c None xmlParseComment (:xmlParserCtxtPtr,) shlib
@c Ptr{:xmlChar} xmlParsePITarget (:xmlParserCtxtPtr,) shlib
@c None xmlParsePI (:xmlParserCtxtPtr,) shlib
@c None xmlParseNotationDecl (:xmlParserCtxtPtr,) shlib
@c None xmlParseEntityDecl (:xmlParserCtxtPtr,) shlib
@c Int32 xmlParseDefaultDecl (:xmlParserCtxtPtr,Ptr{Ptr{:xmlChar}}) shlib
@c xmlEnumerationPtr xmlParseNotationType (:xmlParserCtxtPtr,) shlib
@c xmlEnumerationPtr xmlParseEnumerationType (:xmlParserCtxtPtr,) shlib
@c Int32 xmlParseEnumeratedType (:xmlParserCtxtPtr,Ptr{:xmlEnumerationPtr}) shlib
@c Int32 xmlParseAttributeType (:xmlParserCtxtPtr,Ptr{:xmlEnumerationPtr}) shlib
@c None xmlParseAttributeListDecl (:xmlParserCtxtPtr,) shlib
@c xmlElementContentPtr xmlParseElementMixedContentDecl (:xmlParserCtxtPtr,:Int32) shlib
@c xmlElementContentPtr xmlParseElementChildrenContentDecl (:xmlParserCtxtPtr,:Int32) shlib
@c Int32 xmlParseElementContentDecl (:xmlParserCtxtPtr,Ptr{:xmlChar},Ptr{:xmlElementContentPtr}) shlib
@c Int32 xmlParseElementDecl (:xmlParserCtxtPtr,) shlib
@c None xmlParseMarkupDecl (:xmlParserCtxtPtr,) shlib
@c Int32 xmlParseCharRef (:xmlParserCtxtPtr,) shlib
@c xmlEntityPtr xmlParseEntityRef (:xmlParserCtxtPtr,) shlib
@c None xmlParseReference (:xmlParserCtxtPtr,) shlib
@c None xmlParsePEReference (:xmlParserCtxtPtr,) shlib
@c None xmlParseDocTypeDecl (:xmlParserCtxtPtr,) shlib
@c Ptr{:xmlChar} xmlParseAttribute (:xmlParserCtxtPtr,Ptr{Ptr{:xmlChar}}) shlib
@c Ptr{:xmlChar} xmlParseStartTag (:xmlParserCtxtPtr,) shlib
@c None xmlParseEndTag (:xmlParserCtxtPtr,) shlib
@c None xmlParseCDSect (:xmlParserCtxtPtr,) shlib
@c None xmlParseContent (:xmlParserCtxtPtr,) shlib
@c None xmlParseElement (:xmlParserCtxtPtr,) shlib
@c Ptr{:xmlChar} xmlParseVersionNum (:xmlParserCtxtPtr,) shlib
@c Ptr{:xmlChar} xmlParseVersionInfo (:xmlParserCtxtPtr,) shlib
@c Ptr{:xmlChar} xmlParseEncName (:xmlParserCtxtPtr,) shlib
@c Ptr{:xmlChar} xmlParseEncodingDecl (:xmlParserCtxtPtr,) shlib
@c Int32 xmlParseSDDecl (:xmlParserCtxtPtr,) shlib
@c None xmlParseXMLDecl (:xmlParserCtxtPtr,) shlib
@c None xmlParseTextDecl (:xmlParserCtxtPtr,) shlib
@c None xmlParseMisc (:xmlParserCtxtPtr,) shlib
@c None xmlParseExternalSubset (:xmlParserCtxtPtr,Ptr{:xmlChar},Ptr{:xmlChar}) shlib
@c Ptr{:xmlChar} xmlStringDecodeEntities (:xmlParserCtxtPtr,Ptr{:xmlChar},:Int32,:xmlChar,:xmlChar,:xmlChar) shlib
@c Ptr{:xmlChar} xmlStringLenDecodeEntities (:xmlParserCtxtPtr,Ptr{:xmlChar},:Int32,:Int32,:xmlChar,:xmlChar,:xmlChar) shlib
@c Int32 nodePush (:xmlParserCtxtPtr,:xmlNodePtr) shlib
@c xmlNodePtr nodePop (:xmlParserCtxtPtr,) shlib
@c Int32 inputPush (:xmlParserCtxtPtr,:xmlParserInputPtr) shlib
@c xmlParserInputPtr inputPop (:xmlParserCtxtPtr,) shlib
@c Ptr{:xmlChar} namePop (:xmlParserCtxtPtr,) shlib
@c Int32 namePush (:xmlParserCtxtPtr,Ptr{:xmlChar}) shlib
@c Int32 xmlSkipBlankChars (:xmlParserCtxtPtr,) shlib
@c Int32 xmlStringCurrentChar (:xmlParserCtxtPtr,Ptr{:xmlChar},Ptr{:Int32}) shlib
@c None xmlParserHandlePEReference (:xmlParserCtxtPtr,) shlib
@c Int32 xmlCheckLanguageID (Ptr{:xmlChar},) shlib
@c Int32 xmlCurrentChar (:xmlParserCtxtPtr,Ptr{:Int32}) shlib
@c Int32 xmlCopyCharMultiByte (Ptr{:xmlChar},:Int32) shlib
@c Int32 xmlCopyChar (:Int32,Ptr{:xmlChar},:Int32) shlib
@c None xmlNextChar (:xmlParserCtxtPtr,) shlib
@c None xmlParserInputShrink (:xmlParserInputPtr,) shlib
@c None htmlInitAutoClose () shlib
@c htmlParserCtxtPtr htmlCreateFileParserCtxt (Ptr{:Uint8},Ptr{:Uint8}) shlib
@c None xmlSetEntityReferenceFunc (:xmlEntityReferenceFunc,) shlib
@c Ptr{:xmlChar} xmlParseQuotedString (:xmlParserCtxtPtr,) shlib
@c None xmlParseNamespace (:xmlParserCtxtPtr,) shlib
@c Ptr{:xmlChar} xmlNamespaceParseNSDef (:xmlParserCtxtPtr,) shlib
@c Ptr{:xmlChar} xmlScanName (:xmlParserCtxtPtr,) shlib
@c Ptr{:xmlChar} xmlNamespaceParseNCName (:xmlParserCtxtPtr,) shlib
@c None xmlParserHandleReference (:xmlParserCtxtPtr,) shlib
@c Ptr{:xmlChar} xmlNamespaceParseQName (:xmlParserCtxtPtr,Ptr{Ptr{:xmlChar}}) shlib
@c Ptr{:xmlChar} xmlDecodeEntities (:xmlParserCtxtPtr,:Int32,:Int32,:xmlChar,:xmlChar,:xmlChar) shlib
@c None xmlHandleEntity (:xmlParserCtxtPtr,:xmlEntityPtr) shlib

