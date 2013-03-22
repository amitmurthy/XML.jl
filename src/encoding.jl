# Julia wrapper for header: /usr/include/libxml2/libxml/encoding.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

@c None xmlInitCharEncodingHandlers () libxml2
@c None xmlCleanupCharEncodingHandlers () libxml2
@c None xmlRegisterCharEncodingHandler (xmlCharEncodingHandlerPtr,) libxml2
@c xmlCharEncodingHandlerPtr xmlGetCharEncodingHandler (xmlCharEncoding,) libxml2
@c xmlCharEncodingHandlerPtr xmlFindCharEncodingHandler (Ptr{Uint8},) libxml2
@c xmlCharEncodingHandlerPtr xmlNewCharEncodingHandler (Ptr{Uint8}, xmlCharEncodingInputFunc, xmlCharEncodingOutputFunc) libxml2
@c Int32 xmlAddEncodingAlias (Ptr{Uint8}, Ptr{Uint8}) libxml2
@c Int32 xmlDelEncodingAlias (Ptr{Uint8},) libxml2
@c Ptr{Uint8} xmlGetEncodingAlias (Ptr{Uint8},) libxml2
@c None xmlCleanupEncodingAliases () libxml2
@c xmlCharEncoding xmlParseCharEncoding (Ptr{Uint8},) libxml2
@c Ptr{Uint8} xmlGetCharEncodingName (xmlCharEncoding,) libxml2
@c xmlCharEncoding xmlDetectCharEncoding (Ptr{Uint8}, Int32) libxml2
@c Int32 xmlCharEncOutFunc (Ptr{xmlCharEncodingHandler}, xmlBufferPtr, xmlBufferPtr) libxml2
@c Int32 xmlCharEncInFunc (Ptr{xmlCharEncodingHandler}, xmlBufferPtr, xmlBufferPtr) libxml2
@c Int32 xmlCharEncFirstLine (Ptr{xmlCharEncodingHandler}, xmlBufferPtr, xmlBufferPtr) libxml2
@c Int32 xmlCharEncCloseFunc (Ptr{xmlCharEncodingHandler},) libxml2
@c Int32 UTF8Toisolat1 (Ptr{Uint8}, Ptr{Int32}, Ptr{Uint8}, Ptr{Int32}) libxml2
@c Int32 isolat1ToUTF8 (Ptr{Uint8}, Ptr{Int32}, Ptr{Uint8}, Ptr{Int32}) libxml2

