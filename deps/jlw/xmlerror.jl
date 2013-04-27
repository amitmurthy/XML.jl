# Julia wrapper for header: /usr/include/libxml2/libxml/xmlerror.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

@c None xmlSetGenericErrorFunc (Ptr{None}, xmlGenericErrorFunc) libxml2
@c None initGenericErrorDefaultFunc (Ptr{xmlGenericErrorFunc},) libxml2
@c None xmlSetStructuredErrorFunc (Ptr{None}, xmlStructuredErrorFunc) libxml2
@c None xmlParserError (Ptr{None}, Ptr{Uint8}) libxml2
@c None xmlParserWarning (Ptr{None}, Ptr{Uint8}) libxml2
@c None xmlParserValidityError (Ptr{None}, Ptr{Uint8}) libxml2
@c None xmlParserValidityWarning (Ptr{None}, Ptr{Uint8}) libxml2
@c None xmlParserPrintFileInfo (xmlParserInputPtr,) libxml2
@c None xmlParserPrintFileContext (xmlParserInputPtr,) libxml2
@c xmlErrorPtr xmlGetLastError () libxml2
@c None xmlResetLastError () libxml2
@c xmlErrorPtr xmlCtxtGetLastError (Ptr{None},) libxml2
@c None xmlCtxtResetLastError (Ptr{None},) libxml2
@c None xmlResetError (xmlErrorPtr,) libxml2
@c Int32 xmlCopyError (xmlErrorPtr, xmlErrorPtr) libxml2

