# Julia wrapper for header: /usr/include/libxml2/libxml/xmlerror.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

@c None xmlSetGenericErrorFunc (Ptr{:None},:xmlGenericErrorFunc) shlib
@c None initGenericErrorDefaultFunc (Ptr{:xmlGenericErrorFunc},) shlib
@c None xmlSetStructuredErrorFunc (Ptr{:None},:xmlStructuredErrorFunc) shlib
@c None xmlParserError (Ptr{:None},Ptr{:Uint8}) shlib
@c None xmlParserWarning (Ptr{:None},Ptr{:Uint8}) shlib
@c None xmlParserValidityError (Ptr{:None},Ptr{:Uint8}) shlib
@c None xmlParserValidityWarning (Ptr{:None},Ptr{:Uint8}) shlib
@c None xmlParserPrintFileInfo (:xmlParserInputPtr,) shlib
@c None xmlParserPrintFileContext (:xmlParserInputPtr,) shlib
@c xmlErrorPtr xmlGetLastError () shlib
@c None xmlResetLastError () shlib
@c xmlErrorPtr xmlCtxtGetLastError (Ptr{:None},) shlib
@c None xmlCtxtResetLastError (Ptr{:None},) shlib
@c None xmlResetError (:xmlErrorPtr,) shlib
@c Int32 xmlCopyError (:xmlErrorPtr,:xmlErrorPtr) shlib

