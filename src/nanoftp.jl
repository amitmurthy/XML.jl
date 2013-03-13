# Julia wrapper for header: /usr/include/libxml2/libxml/nanoftp.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

@c None xmlNanoFTPInit () shlib
@c None xmlNanoFTPCleanup () shlib
@c Ptr{:None} xmlNanoFTPNewCtxt (Ptr{:Uint8},) shlib
@c None xmlNanoFTPFreeCtxt (Ptr{:None},) shlib
@c Ptr{:None} xmlNanoFTPConnectTo (Ptr{:Uint8},:Int32) shlib
@c Ptr{:None} xmlNanoFTPOpen (Ptr{:Uint8},) shlib
@c Int32 xmlNanoFTPConnect (Ptr{:None},) shlib
@c Int32 xmlNanoFTPClose (Ptr{:None},) shlib
@c Int32 xmlNanoFTPQuit (Ptr{:None},) shlib
@c None xmlNanoFTPScanProxy (Ptr{:Uint8},) shlib
@c None xmlNanoFTPProxy (Ptr{:Uint8},:Int32,Ptr{:Uint8},Ptr{:Uint8},:Int32) shlib
@c Int32 xmlNanoFTPUpdateURL (Ptr{:None},Ptr{:Uint8}) shlib
@c Int32 xmlNanoFTPGetResponse (Ptr{:None},) shlib
@c Int32 xmlNanoFTPCheckResponse (Ptr{:None},) shlib
@c Int32 xmlNanoFTPCwd (Ptr{:None},Ptr{:Uint8}) shlib
@c Int32 xmlNanoFTPDele (Ptr{:None},Ptr{:Uint8}) shlib
@c Int32 xmlNanoFTPGetConnection (Ptr{:None},) shlib
@c Int32 xmlNanoFTPCloseConnection (Ptr{:None},) shlib
@c Int32 xmlNanoFTPList (Ptr{:None},:ftpListCallback,Ptr{:None},Ptr{:Uint8}) shlib
@c Int32 xmlNanoFTPGetSocket (Ptr{:None},Ptr{:Uint8}) shlib
@c Int32 xmlNanoFTPGet (Ptr{:None},:ftpDataCallback,Ptr{:None},Ptr{:Uint8}) shlib
@c Int32 xmlNanoFTPRead (Ptr{:None},Ptr{:None},:Int32) shlib

