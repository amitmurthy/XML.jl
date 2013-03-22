# Julia wrapper for header: /usr/include/libxml2/libxml/xmlIO.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

@c None xmlCleanupInputCallbacks () libxml2
@c Int32 xmlPopInputCallbacks () libxml2
@c None xmlRegisterDefaultInputCallbacks () libxml2
@c xmlParserInputBufferPtr xmlAllocParserInputBuffer (xmlCharEncoding,) libxml2
@c xmlParserInputBufferPtr xmlParserInputBufferCreateFilename (Ptr{Uint8}, xmlCharEncoding) libxml2
@c xmlParserInputBufferPtr xmlParserInputBufferCreateFile (Ptr{FILE}, xmlCharEncoding) libxml2
@c xmlParserInputBufferPtr xmlParserInputBufferCreateFd (Int32, xmlCharEncoding) libxml2
@c xmlParserInputBufferPtr xmlParserInputBufferCreateMem (Ptr{Uint8}, Int32, xmlCharEncoding) libxml2
@c xmlParserInputBufferPtr xmlParserInputBufferCreateStatic (Ptr{Uint8}, Int32, xmlCharEncoding) libxml2
@c xmlParserInputBufferPtr xmlParserInputBufferCreateIO (xmlInputReadCallback, xmlInputCloseCallback, Ptr{None}, xmlCharEncoding) libxml2
@c Int32 xmlParserInputBufferRead (xmlParserInputBufferPtr, Int32) libxml2
@c Int32 xmlParserInputBufferGrow (xmlParserInputBufferPtr, Int32) libxml2
@c Int32 xmlParserInputBufferPush (xmlParserInputBufferPtr, Int32, Ptr{Uint8}) libxml2
@c None xmlFreeParserInputBuffer (xmlParserInputBufferPtr,) libxml2
@c Ptr{Uint8} xmlParserGetDirectory (Ptr{Uint8},) libxml2
@c Int32 xmlRegisterInputCallbacks (xmlInputMatchCallback, xmlInputOpenCallback, xmlInputReadCallback, xmlInputCloseCallback) libxml2
@c xmlParserInputBufferPtr __xmlParserInputBufferCreateFilename (Ptr{Uint8}, xmlCharEncoding) libxml2
@c None xmlCleanupOutputCallbacks () libxml2
@c None xmlRegisterDefaultOutputCallbacks () libxml2
@c xmlOutputBufferPtr xmlAllocOutputBuffer (xmlCharEncodingHandlerPtr,) libxml2
@c xmlOutputBufferPtr xmlOutputBufferCreateFilename (Ptr{Uint8}, xmlCharEncodingHandlerPtr, Int32) libxml2
@c xmlOutputBufferPtr xmlOutputBufferCreateFile (Ptr{FILE}, xmlCharEncodingHandlerPtr) libxml2
@c xmlOutputBufferPtr xmlOutputBufferCreateBuffer (xmlBufferPtr, xmlCharEncodingHandlerPtr) libxml2
@c xmlOutputBufferPtr xmlOutputBufferCreateFd (Int32, xmlCharEncodingHandlerPtr) libxml2
@c xmlOutputBufferPtr xmlOutputBufferCreateIO (xmlOutputWriteCallback, xmlOutputCloseCallback, Ptr{None}, xmlCharEncodingHandlerPtr) libxml2
@c Int32 xmlOutputBufferWrite (xmlOutputBufferPtr, Int32, Ptr{Uint8}) libxml2
@c Int32 xmlOutputBufferWriteString (xmlOutputBufferPtr, Ptr{Uint8}) libxml2
@c Int32 xmlOutputBufferWriteEscape (xmlOutputBufferPtr, Ptr{xmlChar}, xmlCharEncodingOutputFunc) libxml2
@c Int32 xmlOutputBufferFlush (xmlOutputBufferPtr,) libxml2
@c Int32 xmlOutputBufferClose (xmlOutputBufferPtr,) libxml2
@c Int32 xmlRegisterOutputCallbacks (xmlOutputMatchCallback, xmlOutputOpenCallback, xmlOutputWriteCallback, xmlOutputCloseCallback) libxml2
@c xmlOutputBufferPtr __xmlOutputBufferCreateFilename (Ptr{Uint8}, xmlCharEncodingHandlerPtr, Int32) libxml2
@c None xmlRegisterHTTPPostCallbacks () libxml2
@c xmlParserInputPtr xmlCheckHTTPInput (xmlParserCtxtPtr, xmlParserInputPtr) libxml2
@c xmlParserInputPtr xmlNoNetExternalEntityLoader (Ptr{Uint8}, Ptr{Uint8}, xmlParserCtxtPtr) libxml2
@c Ptr{xmlChar} xmlNormalizeWindowsPath (Ptr{xmlChar},) libxml2
@c Int32 xmlCheckFilename (Ptr{Uint8},) libxml2
@c Int32 xmlFileMatch (Ptr{Uint8},) libxml2
@c Ptr{None} xmlFileOpen (Ptr{Uint8},) libxml2
@c Int32 xmlFileRead (Ptr{None}, Ptr{Uint8}, Int32) libxml2
@c Int32 xmlFileClose (Ptr{None},) libxml2
@c Int32 xmlIOHTTPMatch (Ptr{Uint8},) libxml2
@c Ptr{None} xmlIOHTTPOpen (Ptr{Uint8},) libxml2
@c Ptr{None} xmlIOHTTPOpenW (Ptr{Uint8}, Int32) libxml2
@c Int32 xmlIOHTTPRead (Ptr{None}, Ptr{Uint8}, Int32) libxml2
@c Int32 xmlIOHTTPClose (Ptr{None},) libxml2
@c Int32 xmlIOFTPMatch (Ptr{Uint8},) libxml2
@c Ptr{None} xmlIOFTPOpen (Ptr{Uint8},) libxml2
@c Int32 xmlIOFTPRead (Ptr{None}, Ptr{Uint8}, Int32) libxml2
@c Int32 xmlIOFTPClose (Ptr{None},) libxml2

