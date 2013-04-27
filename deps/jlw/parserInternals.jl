# Julia wrapper for header: /usr/include/libxml2/libxml/parserInternals.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

@c Int32 xmlIsLetter (Int32,) libxml2
@c xmlParserCtxtPtr xmlCreateFileParserCtxt (Ptr{Uint8},) libxml2
@c xmlParserCtxtPtr xmlCreateURLParserCtxt (Ptr{Uint8}, Int32) libxml2
@c xmlParserCtxtPtr xmlCreateMemoryParserCtxt (Ptr{Uint8}, Int32) libxml2
@c xmlParserCtxtPtr xmlCreateEntityParserCtxt (Ptr{xmlChar}, Ptr{xmlChar}, Ptr{xmlChar}) libxml2
@c Int32 xmlSwitchEncoding (xmlParserCtxtPtr, xmlCharEncoding) libxml2
@c Int32 xmlSwitchToEncoding (xmlParserCtxtPtr, xmlCharEncodingHandlerPtr) libxml2
@c Int32 xmlSwitchInputEncoding (xmlParserCtxtPtr, xmlParserInputPtr, xmlCharEncodingHandlerPtr) libxml2
@c xmlParserInputPtr xmlNewStringInputStream (xmlParserCtxtPtr, Ptr{xmlChar}) libxml2
@c xmlParserInputPtr xmlNewEntityInputStream (xmlParserCtxtPtr, xmlEntityPtr) libxml2
@c Int32 xmlPushInput (xmlParserCtxtPtr, xmlParserInputPtr) libxml2
@c xmlChar xmlPopInput (xmlParserCtxtPtr,) libxml2
@c None xmlFreeInputStream (xmlParserInputPtr,) libxml2
@c xmlParserInputPtr xmlNewInputFromFile (xmlParserCtxtPtr, Ptr{Uint8}) libxml2
@c xmlParserInputPtr xmlNewInputStream (xmlParserCtxtPtr,) libxml2
@c Ptr{xmlChar} xmlSplitQName (xmlParserCtxtPtr, Ptr{xmlChar}, Ptr{Ptr{xmlChar}}) libxml2
@c Ptr{xmlChar} xmlParseName (xmlParserCtxtPtr,) libxml2
@c Ptr{xmlChar} xmlParseNmtoken (xmlParserCtxtPtr,) libxml2
@c Ptr{xmlChar} xmlParseEntityValue (xmlParserCtxtPtr, Ptr{Ptr{xmlChar}}) libxml2
@c Ptr{xmlChar} xmlParseAttValue (xmlParserCtxtPtr,) libxml2
@c Ptr{xmlChar} xmlParseSystemLiteral (xmlParserCtxtPtr,) libxml2
@c Ptr{xmlChar} xmlParsePubidLiteral (xmlParserCtxtPtr,) libxml2
@c None xmlParseCharData (xmlParserCtxtPtr, Int32) libxml2
@c Ptr{xmlChar} xmlParseExternalID (xmlParserCtxtPtr, Ptr{Ptr{xmlChar}}, Int32) libxml2
@c None xmlParseComment (xmlParserCtxtPtr,) libxml2
@c Ptr{xmlChar} xmlParsePITarget (xmlParserCtxtPtr,) libxml2
@c None xmlParsePI (xmlParserCtxtPtr,) libxml2
@c None xmlParseNotationDecl (xmlParserCtxtPtr,) libxml2
@c None xmlParseEntityDecl (xmlParserCtxtPtr,) libxml2
@c Int32 xmlParseDefaultDecl (xmlParserCtxtPtr, Ptr{Ptr{xmlChar}}) libxml2
@c xmlEnumerationPtr xmlParseNotationType (xmlParserCtxtPtr,) libxml2
@c xmlEnumerationPtr xmlParseEnumerationType (xmlParserCtxtPtr,) libxml2
@c Int32 xmlParseEnumeratedType (xmlParserCtxtPtr, Ptr{xmlEnumerationPtr}) libxml2
@c Int32 xmlParseAttributeType (xmlParserCtxtPtr, Ptr{xmlEnumerationPtr}) libxml2
@c None xmlParseAttributeListDecl (xmlParserCtxtPtr,) libxml2
@c xmlElementContentPtr xmlParseElementMixedContentDecl (xmlParserCtxtPtr, Int32) libxml2
@c xmlElementContentPtr xmlParseElementChildrenContentDecl (xmlParserCtxtPtr, Int32) libxml2
@c Int32 xmlParseElementContentDecl (xmlParserCtxtPtr, Ptr{xmlChar}, Ptr{xmlElementContentPtr}) libxml2
@c Int32 xmlParseElementDecl (xmlParserCtxtPtr,) libxml2
@c None xmlParseMarkupDecl (xmlParserCtxtPtr,) libxml2
@c Int32 xmlParseCharRef (xmlParserCtxtPtr,) libxml2
@c xmlEntityPtr xmlParseEntityRef (xmlParserCtxtPtr,) libxml2
@c None xmlParseReference (xmlParserCtxtPtr,) libxml2
@c None xmlParsePEReference (xmlParserCtxtPtr,) libxml2
@c None xmlParseDocTypeDecl (xmlParserCtxtPtr,) libxml2
@c Ptr{xmlChar} xmlParseAttribute (xmlParserCtxtPtr, Ptr{Ptr{xmlChar}}) libxml2
@c Ptr{xmlChar} xmlParseStartTag (xmlParserCtxtPtr,) libxml2
@c None xmlParseEndTag (xmlParserCtxtPtr,) libxml2
@c None xmlParseCDSect (xmlParserCtxtPtr,) libxml2
@c None xmlParseContent (xmlParserCtxtPtr,) libxml2
@c None xmlParseElement (xmlParserCtxtPtr,) libxml2
@c Ptr{xmlChar} xmlParseVersionNum (xmlParserCtxtPtr,) libxml2
@c Ptr{xmlChar} xmlParseVersionInfo (xmlParserCtxtPtr,) libxml2
@c Ptr{xmlChar} xmlParseEncName (xmlParserCtxtPtr,) libxml2
@c Ptr{xmlChar} xmlParseEncodingDecl (xmlParserCtxtPtr,) libxml2
@c Int32 xmlParseSDDecl (xmlParserCtxtPtr,) libxml2
@c None xmlParseXMLDecl (xmlParserCtxtPtr,) libxml2
@c None xmlParseTextDecl (xmlParserCtxtPtr,) libxml2
@c None xmlParseMisc (xmlParserCtxtPtr,) libxml2
@c None xmlParseExternalSubset (xmlParserCtxtPtr, Ptr{xmlChar}, Ptr{xmlChar}) libxml2
@c Ptr{xmlChar} xmlStringDecodeEntities (xmlParserCtxtPtr, Ptr{xmlChar}, Int32, xmlChar, xmlChar, xmlChar) libxml2
@c Ptr{xmlChar} xmlStringLenDecodeEntities (xmlParserCtxtPtr, Ptr{xmlChar}, Int32, Int32, xmlChar, xmlChar, xmlChar) libxml2
@c Int32 nodePush (xmlParserCtxtPtr, xmlNodePtr) libxml2
@c xmlNodePtr nodePop (xmlParserCtxtPtr,) libxml2
@c Int32 inputPush (xmlParserCtxtPtr, xmlParserInputPtr) libxml2
@c xmlParserInputPtr inputPop (xmlParserCtxtPtr,) libxml2
@c Ptr{xmlChar} namePop (xmlParserCtxtPtr,) libxml2
@c Int32 namePush (xmlParserCtxtPtr, Ptr{xmlChar}) libxml2
@c Int32 xmlSkipBlankChars (xmlParserCtxtPtr,) libxml2
@c Int32 xmlStringCurrentChar (xmlParserCtxtPtr, Ptr{xmlChar}, Ptr{Int32}) libxml2
@c None xmlParserHandlePEReference (xmlParserCtxtPtr,) libxml2
@c Int32 xmlCheckLanguageID (Ptr{xmlChar},) libxml2
@c Int32 xmlCurrentChar (xmlParserCtxtPtr, Ptr{Int32}) libxml2
@c Int32 xmlCopyCharMultiByte (Ptr{xmlChar}, Int32) libxml2
@c Int32 xmlCopyChar (Int32, Ptr{xmlChar}, Int32) libxml2
@c None xmlNextChar (xmlParserCtxtPtr,) libxml2
@c None xmlParserInputShrink (xmlParserInputPtr,) libxml2
@c None htmlInitAutoClose () libxml2
@c htmlParserCtxtPtr htmlCreateFileParserCtxt (Ptr{Uint8}, Ptr{Uint8}) libxml2
@c None xmlSetEntityReferenceFunc (xmlEntityReferenceFunc,) libxml2
@c Ptr{xmlChar} xmlParseQuotedString (xmlParserCtxtPtr,) libxml2
@c None xmlParseNamespace (xmlParserCtxtPtr,) libxml2
@c Ptr{xmlChar} xmlNamespaceParseNSDef (xmlParserCtxtPtr,) libxml2
@c Ptr{xmlChar} xmlScanName (xmlParserCtxtPtr,) libxml2
@c Ptr{xmlChar} xmlNamespaceParseNCName (xmlParserCtxtPtr,) libxml2
@c None xmlParserHandleReference (xmlParserCtxtPtr,) libxml2
@c Ptr{xmlChar} xmlNamespaceParseQName (xmlParserCtxtPtr, Ptr{Ptr{xmlChar}}) libxml2
@c Ptr{xmlChar} xmlDecodeEntities (xmlParserCtxtPtr, Int32, Int32, xmlChar, xmlChar, xmlChar) libxml2
@c None xmlHandleEntity (xmlParserCtxtPtr, xmlEntityPtr) libxml2

