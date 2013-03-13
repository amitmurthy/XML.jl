# Julia wrapper for header: /usr/include/libxml2/libxml/nanohttp.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

@c None xmlNanoHTTPInit () shlib
@c None xmlNanoHTTPCleanup () shlib
@c None xmlNanoHTTPScanProxy (Ptr{:Uint8},) shlib
@c Int32 xmlNanoHTTPFetch (Ptr{:Uint8},Ptr{:Uint8},Ptr{Ptr{:Uint8}}) shlib
@c Ptr{:None} xmlNanoHTTPMethod (Ptr{:Uint8},Ptr{:Uint8},Ptr{:Uint8},Ptr{Ptr{:Uint8}},Ptr{:Uint8},:Int32) shlib
@c Ptr{:None} xmlNanoHTTPMethodRedir (Ptr{:Uint8},Ptr{:Uint8},Ptr{:Uint8},Ptr{Ptr{:Uint8}},Ptr{Ptr{:Uint8}},Ptr{:Uint8},:Int32) shlib
@c Ptr{:None} xmlNanoHTTPOpen (Ptr{:Uint8},Ptr{Ptr{:Uint8}}) shlib
@c Ptr{:None} xmlNanoHTTPOpenRedir (Ptr{:Uint8},Ptr{Ptr{:Uint8}},Ptr{Ptr{:Uint8}}) shlib
@c Int32 xmlNanoHTTPReturnCode (Ptr{:None},) shlib
@c Ptr{:Uint8} xmlNanoHTTPAuthHeader (Ptr{:None},) shlib
@c Ptr{:Uint8} xmlNanoHTTPRedir (Ptr{:None},) shlib
@c Int32 xmlNanoHTTPContentLength (Ptr{:None},) shlib
@c Ptr{:Uint8} xmlNanoHTTPEncoding (Ptr{:None},) shlib
@c Ptr{:Uint8} xmlNanoHTTPMimeType (Ptr{:None},) shlib
@c Int32 xmlNanoHTTPRead (Ptr{:None},Ptr{:None},:Int32) shlib
@c Int32 xmlNanoHTTPSave (Ptr{:None},Ptr{:Uint8}) shlib
@c None xmlNanoHTTPClose (Ptr{:None},) shlib

