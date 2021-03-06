# Julia wrapper for header: /usr/include/libxml2/libxml/xmlwriter.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

@c xmlTextWriterPtr xmlNewTextWriter (xmlOutputBufferPtr,) libxml2
@c xmlTextWriterPtr xmlNewTextWriterFilename (Ptr{Uint8}, Int32) libxml2
@c xmlTextWriterPtr xmlNewTextWriterMemory (xmlBufferPtr, Int32) libxml2
@c xmlTextWriterPtr xmlNewTextWriterPushParser (xmlParserCtxtPtr, Int32) libxml2
@c xmlTextWriterPtr xmlNewTextWriterDoc (Ptr{xmlDocPtr}, Int32) libxml2
@c xmlTextWriterPtr xmlNewTextWriterTree (xmlDocPtr, xmlNodePtr, Int32) libxml2
@c None xmlFreeTextWriter (xmlTextWriterPtr,) libxml2
@c Int32 xmlTextWriterStartDocument (xmlTextWriterPtr, Ptr{Uint8}, Ptr{Uint8}, Ptr{Uint8}) libxml2
@c Int32 xmlTextWriterEndDocument (xmlTextWriterPtr,) libxml2
@c Int32 xmlTextWriterStartComment (xmlTextWriterPtr,) libxml2
@c Int32 xmlTextWriterEndComment (xmlTextWriterPtr,) libxml2
@c Int32 xmlTextWriterWriteFormatComment (xmlTextWriterPtr, Ptr{Uint8}) libxml2
@c Int32 xmlTextWriterWriteVFormatComment (xmlTextWriterPtr, Ptr{Uint8}, Ptr{__va_list_tag}) libxml2
@c Int32 xmlTextWriterWriteComment (xmlTextWriterPtr, Ptr{xmlChar}) libxml2
@c Int32 xmlTextWriterStartElement (xmlTextWriterPtr, Ptr{xmlChar}) libxml2
@c Int32 xmlTextWriterStartElementNS (xmlTextWriterPtr, Ptr{xmlChar}, Ptr{xmlChar}, Ptr{xmlChar}) libxml2
@c Int32 xmlTextWriterEndElement (xmlTextWriterPtr,) libxml2
@c Int32 xmlTextWriterFullEndElement (xmlTextWriterPtr,) libxml2
@c Int32 xmlTextWriterWriteFormatElement (xmlTextWriterPtr, Ptr{xmlChar}, Ptr{Uint8}) libxml2
@c Int32 xmlTextWriterWriteVFormatElement (xmlTextWriterPtr, Ptr{xmlChar}, Ptr{Uint8}, Ptr{__va_list_tag}) libxml2
@c Int32 xmlTextWriterWriteElement (xmlTextWriterPtr, Ptr{xmlChar}, Ptr{xmlChar}) libxml2
@c Int32 xmlTextWriterWriteFormatElementNS (xmlTextWriterPtr, Ptr{xmlChar}, Ptr{xmlChar}, Ptr{xmlChar}, Ptr{Uint8}) libxml2
@c Int32 xmlTextWriterWriteVFormatElementNS (xmlTextWriterPtr, Ptr{xmlChar}, Ptr{xmlChar}, Ptr{xmlChar}, Ptr{Uint8}, Ptr{__va_list_tag}) libxml2
@c Int32 xmlTextWriterWriteElementNS (xmlTextWriterPtr, Ptr{xmlChar}, Ptr{xmlChar}, Ptr{xmlChar}, Ptr{xmlChar}) libxml2
@c Int32 xmlTextWriterWriteFormatRaw (xmlTextWriterPtr, Ptr{Uint8}) libxml2
@c Int32 xmlTextWriterWriteVFormatRaw (xmlTextWriterPtr, Ptr{Uint8}, Ptr{__va_list_tag}) libxml2
@c Int32 xmlTextWriterWriteRawLen (xmlTextWriterPtr, Ptr{xmlChar}, Int32) libxml2
@c Int32 xmlTextWriterWriteRaw (xmlTextWriterPtr, Ptr{xmlChar}) libxml2
@c Int32 xmlTextWriterWriteFormatString (xmlTextWriterPtr, Ptr{Uint8}) libxml2
@c Int32 xmlTextWriterWriteVFormatString (xmlTextWriterPtr, Ptr{Uint8}, Ptr{__va_list_tag}) libxml2
@c Int32 xmlTextWriterWriteString (xmlTextWriterPtr, Ptr{xmlChar}) libxml2
@c Int32 xmlTextWriterWriteBase64 (xmlTextWriterPtr, Ptr{Uint8}, Int32, Int32) libxml2
@c Int32 xmlTextWriterWriteBinHex (xmlTextWriterPtr, Ptr{Uint8}, Int32, Int32) libxml2
@c Int32 xmlTextWriterStartAttribute (xmlTextWriterPtr, Ptr{xmlChar}) libxml2
@c Int32 xmlTextWriterStartAttributeNS (xmlTextWriterPtr, Ptr{xmlChar}, Ptr{xmlChar}, Ptr{xmlChar}) libxml2
@c Int32 xmlTextWriterEndAttribute (xmlTextWriterPtr,) libxml2
@c Int32 xmlTextWriterWriteFormatAttribute (xmlTextWriterPtr, Ptr{xmlChar}, Ptr{Uint8}) libxml2
@c Int32 xmlTextWriterWriteVFormatAttribute (xmlTextWriterPtr, Ptr{xmlChar}, Ptr{Uint8}, Ptr{__va_list_tag}) libxml2
@c Int32 xmlTextWriterWriteAttribute (xmlTextWriterPtr, Ptr{xmlChar}, Ptr{xmlChar}) libxml2
@c Int32 xmlTextWriterWriteFormatAttributeNS (xmlTextWriterPtr, Ptr{xmlChar}, Ptr{xmlChar}, Ptr{xmlChar}, Ptr{Uint8}) libxml2
@c Int32 xmlTextWriterWriteVFormatAttributeNS (xmlTextWriterPtr, Ptr{xmlChar}, Ptr{xmlChar}, Ptr{xmlChar}, Ptr{Uint8}, Ptr{__va_list_tag}) libxml2
@c Int32 xmlTextWriterWriteAttributeNS (xmlTextWriterPtr, Ptr{xmlChar}, Ptr{xmlChar}, Ptr{xmlChar}, Ptr{xmlChar}) libxml2
@c Int32 xmlTextWriterStartPI (xmlTextWriterPtr, Ptr{xmlChar}) libxml2
@c Int32 xmlTextWriterEndPI (xmlTextWriterPtr,) libxml2
@c Int32 xmlTextWriterWriteFormatPI (xmlTextWriterPtr, Ptr{xmlChar}, Ptr{Uint8}) libxml2
@c Int32 xmlTextWriterWriteVFormatPI (xmlTextWriterPtr, Ptr{xmlChar}, Ptr{Uint8}, Ptr{__va_list_tag}) libxml2
@c Int32 xmlTextWriterWritePI (xmlTextWriterPtr, Ptr{xmlChar}, Ptr{xmlChar}) libxml2
@c Int32 xmlTextWriterStartCDATA (xmlTextWriterPtr,) libxml2
@c Int32 xmlTextWriterEndCDATA (xmlTextWriterPtr,) libxml2
@c Int32 xmlTextWriterWriteFormatCDATA (xmlTextWriterPtr, Ptr{Uint8}) libxml2
@c Int32 xmlTextWriterWriteVFormatCDATA (xmlTextWriterPtr, Ptr{Uint8}, Ptr{__va_list_tag}) libxml2
@c Int32 xmlTextWriterWriteCDATA (xmlTextWriterPtr, Ptr{xmlChar}) libxml2
@c Int32 xmlTextWriterStartDTD (xmlTextWriterPtr, Ptr{xmlChar}, Ptr{xmlChar}, Ptr{xmlChar}) libxml2
@c Int32 xmlTextWriterEndDTD (xmlTextWriterPtr,) libxml2
@c Int32 xmlTextWriterWriteFormatDTD (xmlTextWriterPtr, Ptr{xmlChar}, Ptr{xmlChar}, Ptr{xmlChar}, Ptr{Uint8}) libxml2
@c Int32 xmlTextWriterWriteVFormatDTD (xmlTextWriterPtr, Ptr{xmlChar}, Ptr{xmlChar}, Ptr{xmlChar}, Ptr{Uint8}, Ptr{__va_list_tag}) libxml2
@c Int32 xmlTextWriterWriteDTD (xmlTextWriterPtr, Ptr{xmlChar}, Ptr{xmlChar}, Ptr{xmlChar}, Ptr{xmlChar}) libxml2
@c Int32 xmlTextWriterStartDTDElement (xmlTextWriterPtr, Ptr{xmlChar}) libxml2
@c Int32 xmlTextWriterEndDTDElement (xmlTextWriterPtr,) libxml2
@c Int32 xmlTextWriterWriteFormatDTDElement (xmlTextWriterPtr, Ptr{xmlChar}, Ptr{Uint8}) libxml2
@c Int32 xmlTextWriterWriteVFormatDTDElement (xmlTextWriterPtr, Ptr{xmlChar}, Ptr{Uint8}, Ptr{__va_list_tag}) libxml2
@c Int32 xmlTextWriterWriteDTDElement (xmlTextWriterPtr, Ptr{xmlChar}, Ptr{xmlChar}) libxml2
@c Int32 xmlTextWriterStartDTDAttlist (xmlTextWriterPtr, Ptr{xmlChar}) libxml2
@c Int32 xmlTextWriterEndDTDAttlist (xmlTextWriterPtr,) libxml2
@c Int32 xmlTextWriterWriteFormatDTDAttlist (xmlTextWriterPtr, Ptr{xmlChar}, Ptr{Uint8}) libxml2
@c Int32 xmlTextWriterWriteVFormatDTDAttlist (xmlTextWriterPtr, Ptr{xmlChar}, Ptr{Uint8}, Ptr{__va_list_tag}) libxml2
@c Int32 xmlTextWriterWriteDTDAttlist (xmlTextWriterPtr, Ptr{xmlChar}, Ptr{xmlChar}) libxml2
@c Int32 xmlTextWriterStartDTDEntity (xmlTextWriterPtr, Int32, Ptr{xmlChar}) libxml2
@c Int32 xmlTextWriterEndDTDEntity (xmlTextWriterPtr,) libxml2
@c Int32 xmlTextWriterWriteFormatDTDInternalEntity (xmlTextWriterPtr, Int32, Ptr{xmlChar}, Ptr{Uint8}) libxml2
@c Int32 xmlTextWriterWriteVFormatDTDInternalEntity (xmlTextWriterPtr, Int32, Ptr{xmlChar}, Ptr{Uint8}, Ptr{__va_list_tag}) libxml2
@c Int32 xmlTextWriterWriteDTDInternalEntity (xmlTextWriterPtr, Int32, Ptr{xmlChar}, Ptr{xmlChar}) libxml2
@c Int32 xmlTextWriterWriteDTDExternalEntity (xmlTextWriterPtr, Int32, Ptr{xmlChar}, Ptr{xmlChar}, Ptr{xmlChar}, Ptr{xmlChar}) libxml2
@c Int32 xmlTextWriterWriteDTDExternalEntityContents (xmlTextWriterPtr, Ptr{xmlChar}, Ptr{xmlChar}, Ptr{xmlChar}) libxml2
@c Int32 xmlTextWriterWriteDTDEntity (xmlTextWriterPtr, Int32, Ptr{xmlChar}, Ptr{xmlChar}, Ptr{xmlChar}, Ptr{xmlChar}, Ptr{xmlChar}) libxml2
@c Int32 xmlTextWriterWriteDTDNotation (xmlTextWriterPtr, Ptr{xmlChar}, Ptr{xmlChar}, Ptr{xmlChar}) libxml2
@c Int32 xmlTextWriterSetIndent (xmlTextWriterPtr, Int32) libxml2
@c Int32 xmlTextWriterSetIndentString (xmlTextWriterPtr, Ptr{xmlChar}) libxml2
@c Int32 xmlTextWriterFlush (xmlTextWriterPtr,) libxml2

