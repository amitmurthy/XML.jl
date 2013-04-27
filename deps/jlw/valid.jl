# Julia wrapper for header: /usr/include/libxml2/libxml/valid.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

@c xmlNotationPtr xmlAddNotationDecl (xmlValidCtxtPtr, xmlDtdPtr, Ptr{xmlChar}, Ptr{xmlChar}, Ptr{xmlChar}) libxml2
@c xmlNotationTablePtr xmlCopyNotationTable (xmlNotationTablePtr,) libxml2
@c None xmlFreeNotationTable (xmlNotationTablePtr,) libxml2
@c None xmlDumpNotationDecl (xmlBufferPtr, xmlNotationPtr) libxml2
@c None xmlDumpNotationTable (xmlBufferPtr, xmlNotationTablePtr) libxml2
@c xmlElementContentPtr xmlNewElementContent (Ptr{xmlChar}, xmlElementContentType) libxml2
@c xmlElementContentPtr xmlCopyElementContent (xmlElementContentPtr,) libxml2
@c None xmlFreeElementContent (xmlElementContentPtr,) libxml2
@c xmlElementContentPtr xmlNewDocElementContent (xmlDocPtr, Ptr{xmlChar}, xmlElementContentType) libxml2
@c xmlElementContentPtr xmlCopyDocElementContent (xmlDocPtr, xmlElementContentPtr) libxml2
@c None xmlFreeDocElementContent (xmlDocPtr, xmlElementContentPtr) libxml2
@c None xmlSnprintfElementContent (Ptr{Uint8}, Int32, xmlElementContentPtr, Int32) libxml2
@c None xmlSprintfElementContent (Ptr{Uint8}, xmlElementContentPtr, Int32) libxml2
@c xmlElementPtr xmlAddElementDecl (xmlValidCtxtPtr, xmlDtdPtr, Ptr{xmlChar}, xmlElementTypeVal, xmlElementContentPtr) libxml2
@c xmlElementTablePtr xmlCopyElementTable (xmlElementTablePtr,) libxml2
@c None xmlFreeElementTable (xmlElementTablePtr,) libxml2
@c None xmlDumpElementTable (xmlBufferPtr, xmlElementTablePtr) libxml2
@c None xmlDumpElementDecl (xmlBufferPtr, xmlElementPtr) libxml2
@c xmlEnumerationPtr xmlCreateEnumeration (Ptr{xmlChar},) libxml2
@c None xmlFreeEnumeration (xmlEnumerationPtr,) libxml2
@c xmlEnumerationPtr xmlCopyEnumeration (xmlEnumerationPtr,) libxml2
@c xmlAttributePtr xmlAddAttributeDecl (xmlValidCtxtPtr, xmlDtdPtr, Ptr{xmlChar}, Ptr{xmlChar}, Ptr{xmlChar}, xmlAttributeType, xmlAttributeDefault, Ptr{xmlChar}, xmlEnumerationPtr) libxml2
@c xmlAttributeTablePtr xmlCopyAttributeTable (xmlAttributeTablePtr,) libxml2
@c None xmlFreeAttributeTable (xmlAttributeTablePtr,) libxml2
@c None xmlDumpAttributeTable (xmlBufferPtr, xmlAttributeTablePtr) libxml2
@c None xmlDumpAttributeDecl (xmlBufferPtr, xmlAttributePtr) libxml2
@c xmlIDPtr xmlAddID (xmlValidCtxtPtr, xmlDocPtr, Ptr{xmlChar}, xmlAttrPtr) libxml2
@c None xmlFreeIDTable (xmlIDTablePtr,) libxml2
@c xmlAttrPtr xmlGetID (xmlDocPtr, Ptr{xmlChar}) libxml2
@c Int32 xmlIsID (xmlDocPtr, xmlNodePtr, xmlAttrPtr) libxml2
@c Int32 xmlRemoveID (xmlDocPtr, xmlAttrPtr) libxml2
@c xmlRefPtr xmlAddRef (xmlValidCtxtPtr, xmlDocPtr, Ptr{xmlChar}, xmlAttrPtr) libxml2
@c None xmlFreeRefTable (xmlRefTablePtr,) libxml2
@c Int32 xmlIsRef (xmlDocPtr, xmlNodePtr, xmlAttrPtr) libxml2
@c Int32 xmlRemoveRef (xmlDocPtr, xmlAttrPtr) libxml2
@c xmlListPtr xmlGetRefs (xmlDocPtr, Ptr{xmlChar}) libxml2
@c xmlValidCtxtPtr xmlNewValidCtxt () libxml2
@c None xmlFreeValidCtxt (xmlValidCtxtPtr,) libxml2
@c Int32 xmlValidateRoot (xmlValidCtxtPtr, xmlDocPtr) libxml2
@c Int32 xmlValidateElementDecl (xmlValidCtxtPtr, xmlDocPtr, xmlElementPtr) libxml2
@c Ptr{xmlChar} xmlValidNormalizeAttributeValue (xmlDocPtr, xmlNodePtr, Ptr{xmlChar}, Ptr{xmlChar}) libxml2
@c Ptr{xmlChar} xmlValidCtxtNormalizeAttributeValue (xmlValidCtxtPtr, xmlDocPtr, xmlNodePtr, Ptr{xmlChar}, Ptr{xmlChar}) libxml2
@c Int32 xmlValidateAttributeDecl (xmlValidCtxtPtr, xmlDocPtr, xmlAttributePtr) libxml2
@c Int32 xmlValidateAttributeValue (xmlAttributeType, Ptr{xmlChar}) libxml2
@c Int32 xmlValidateNotationDecl (xmlValidCtxtPtr, xmlDocPtr, xmlNotationPtr) libxml2
@c Int32 xmlValidateDtd (xmlValidCtxtPtr, xmlDocPtr, xmlDtdPtr) libxml2
@c Int32 xmlValidateDtdFinal (xmlValidCtxtPtr, xmlDocPtr) libxml2
@c Int32 xmlValidateDocument (xmlValidCtxtPtr, xmlDocPtr) libxml2
@c Int32 xmlValidateElement (xmlValidCtxtPtr, xmlDocPtr, xmlNodePtr) libxml2
@c Int32 xmlValidateOneElement (xmlValidCtxtPtr, xmlDocPtr, xmlNodePtr) libxml2
@c Int32 xmlValidateOneAttribute (xmlValidCtxtPtr, xmlDocPtr, xmlNodePtr, xmlAttrPtr, Ptr{xmlChar}) libxml2
@c Int32 xmlValidateOneNamespace (xmlValidCtxtPtr, xmlDocPtr, xmlNodePtr, Ptr{xmlChar}, xmlNsPtr, Ptr{xmlChar}) libxml2
@c Int32 xmlValidateDocumentFinal (xmlValidCtxtPtr, xmlDocPtr) libxml2
@c Int32 xmlValidateNotationUse (xmlValidCtxtPtr, xmlDocPtr, Ptr{xmlChar}) libxml2
@c Int32 xmlIsMixedElement (xmlDocPtr, Ptr{xmlChar}) libxml2
@c xmlAttributePtr xmlGetDtdAttrDesc (xmlDtdPtr, Ptr{xmlChar}, Ptr{xmlChar}) libxml2
@c xmlAttributePtr xmlGetDtdQAttrDesc (xmlDtdPtr, Ptr{xmlChar}, Ptr{xmlChar}, Ptr{xmlChar}) libxml2
@c xmlNotationPtr xmlGetDtdNotationDesc (xmlDtdPtr, Ptr{xmlChar}) libxml2
@c xmlElementPtr xmlGetDtdQElementDesc (xmlDtdPtr, Ptr{xmlChar}, Ptr{xmlChar}) libxml2
@c xmlElementPtr xmlGetDtdElementDesc (xmlDtdPtr, Ptr{xmlChar}) libxml2
@c Int32 xmlValidGetPotentialChildren (Ptr{xmlElementContent}, Ptr{Ptr{xmlChar}}, Ptr{Int32}, Int32) libxml2
@c Int32 xmlValidGetValidElements (Ptr{xmlNode}, Ptr{xmlNode}, Ptr{Ptr{xmlChar}}, Int32) libxml2
@c Int32 xmlValidateNameValue (Ptr{xmlChar},) libxml2
@c Int32 xmlValidateNamesValue (Ptr{xmlChar},) libxml2
@c Int32 xmlValidateNmtokenValue (Ptr{xmlChar},) libxml2
@c Int32 xmlValidateNmtokensValue (Ptr{xmlChar},) libxml2
@c Int32 xmlValidBuildContentModel (xmlValidCtxtPtr, xmlElementPtr) libxml2
@c Int32 xmlValidatePushElement (xmlValidCtxtPtr, xmlDocPtr, xmlNodePtr, Ptr{xmlChar}) libxml2
@c Int32 xmlValidatePushCData (xmlValidCtxtPtr, Ptr{xmlChar}, Int32) libxml2
@c Int32 xmlValidatePopElement (xmlValidCtxtPtr, xmlDocPtr, xmlNodePtr, Ptr{xmlChar}) libxml2

