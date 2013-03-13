# Julia wrapper for header: /usr/include/libxml2/libxml/encoding.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

@c None xmlInitCharEncodingHandlers () shlib
@c None xmlCleanupCharEncodingHandlers () shlib
@c None xmlRegisterCharEncodingHandler (:xmlCharEncodingHandlerPtr,) shlib
@c xmlCharEncodingHandlerPtr xmlGetCharEncodingHandler (:xmlCharEncoding,) shlib
@c xmlCharEncodingHandlerPtr xmlFindCharEncodingHandler (Ptr{:Uint8},) shlib
@c xmlCharEncodingHandlerPtr xmlNewCharEncodingHandler (Ptr{:Uint8},:xmlCharEncodingInputFunc,:xmlCharEncodingOutputFunc) shlib
@c Int32 xmlAddEncodingAlias (Ptr{:Uint8},Ptr{:Uint8}) shlib
@c Int32 xmlDelEncodingAlias (Ptr{:Uint8},) shlib
@c Ptr{:Uint8} xmlGetEncodingAlias (Ptr{:Uint8},) shlib
@c None xmlCleanupEncodingAliases () shlib
@c xmlCharEncoding xmlParseCharEncoding (Ptr{:Uint8},) shlib
@c Ptr{:Uint8} xmlGetCharEncodingName (:xmlCharEncoding,) shlib
@c xmlCharEncoding xmlDetectCharEncoding (Ptr{:Uint8},:Int32) shlib
@c Int32 xmlCharEncOutFunc (Ptr{:xmlCharEncodingHandler},:xmlBufferPtr,:xmlBufferPtr) shlib
@c Int32 xmlCharEncInFunc (Ptr{:xmlCharEncodingHandler},:xmlBufferPtr,:xmlBufferPtr) shlib
@c Int32 xmlCharEncFirstLine (Ptr{:xmlCharEncodingHandler},:xmlBufferPtr,:xmlBufferPtr) shlib
@c Int32 xmlCharEncCloseFunc (Ptr{:xmlCharEncodingHandler},) shlib
@c Int32 UTF8Toisolat1 (Ptr{:Uint8},Ptr{:Int32},Ptr{:Uint8},Ptr{:Int32}) shlib
@c Int32 isolat1ToUTF8 (Ptr{:Uint8},Ptr{:Int32},Ptr{:Uint8},Ptr{:Int32}) shlib

