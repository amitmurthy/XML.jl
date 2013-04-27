# Julia wrapper for header: /usr/include/libxml2/libxml/nanohttp.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

@c None xmlNanoHTTPInit () libxml2
@c None xmlNanoHTTPCleanup () libxml2
@c None xmlNanoHTTPScanProxy (Ptr{Uint8},) libxml2
@c Int32 xmlNanoHTTPFetch (Ptr{Uint8}, Ptr{Uint8}, Ptr{Ptr{Uint8}}) libxml2
@c Ptr{None} xmlNanoHTTPMethod (Ptr{Uint8}, Ptr{Uint8}, Ptr{Uint8}, Ptr{Ptr{Uint8}}, Ptr{Uint8}, Int32) libxml2
@c Ptr{None} xmlNanoHTTPMethodRedir (Ptr{Uint8}, Ptr{Uint8}, Ptr{Uint8}, Ptr{Ptr{Uint8}}, Ptr{Ptr{Uint8}}, Ptr{Uint8}, Int32) libxml2
@c Ptr{None} xmlNanoHTTPOpen (Ptr{Uint8}, Ptr{Ptr{Uint8}}) libxml2
@c Ptr{None} xmlNanoHTTPOpenRedir (Ptr{Uint8}, Ptr{Ptr{Uint8}}, Ptr{Ptr{Uint8}}) libxml2
@c Int32 xmlNanoHTTPReturnCode (Ptr{None},) libxml2
@c Ptr{Uint8} xmlNanoHTTPAuthHeader (Ptr{None},) libxml2
@c Ptr{Uint8} xmlNanoHTTPRedir (Ptr{None},) libxml2
@c Int32 xmlNanoHTTPContentLength (Ptr{None},) libxml2
@c Ptr{Uint8} xmlNanoHTTPEncoding (Ptr{None},) libxml2
@c Ptr{Uint8} xmlNanoHTTPMimeType (Ptr{None},) libxml2
@c Int32 xmlNanoHTTPRead (Ptr{None}, Ptr{None}, Int32) libxml2
@c Int32 xmlNanoHTTPSave (Ptr{None}, Ptr{Uint8}) libxml2
@c None xmlNanoHTTPClose (Ptr{None},) libxml2

