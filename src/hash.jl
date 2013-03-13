# Julia wrapper for header: /usr/include/libxml2/libxml/hash.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

@c xmlHashTablePtr xmlHashCreate (:Int32,) shlib
@c xmlHashTablePtr xmlHashCreateDict (:Int32,:xmlDictPtr) shlib
@c None xmlHashFree (:xmlHashTablePtr,:xmlHashDeallocator) shlib
@c Int32 xmlHashAddEntry (:xmlHashTablePtr,Ptr{:xmlChar},Ptr{:None}) shlib
@c Int32 xmlHashUpdateEntry (:xmlHashTablePtr,Ptr{:xmlChar},Ptr{:None},:xmlHashDeallocator) shlib
@c Int32 xmlHashAddEntry2 (:xmlHashTablePtr,Ptr{:xmlChar},Ptr{:xmlChar},Ptr{:None}) shlib
@c Int32 xmlHashUpdateEntry2 (:xmlHashTablePtr,Ptr{:xmlChar},Ptr{:xmlChar},Ptr{:None},:xmlHashDeallocator) shlib
@c Int32 xmlHashAddEntry3 (:xmlHashTablePtr,Ptr{:xmlChar},Ptr{:xmlChar},Ptr{:xmlChar},Ptr{:None}) shlib
@c Int32 xmlHashUpdateEntry3 (:xmlHashTablePtr,Ptr{:xmlChar},Ptr{:xmlChar},Ptr{:xmlChar},Ptr{:None},:xmlHashDeallocator) shlib
@c Int32 xmlHashRemoveEntry (:xmlHashTablePtr,Ptr{:xmlChar},:xmlHashDeallocator) shlib
@c Int32 xmlHashRemoveEntry2 (:xmlHashTablePtr,Ptr{:xmlChar},Ptr{:xmlChar},:xmlHashDeallocator) shlib
@c Int32 xmlHashRemoveEntry3 (:xmlHashTablePtr,Ptr{:xmlChar},Ptr{:xmlChar},Ptr{:xmlChar},:xmlHashDeallocator) shlib
@c Ptr{:None} xmlHashLookup (:xmlHashTablePtr,Ptr{:xmlChar}) shlib
@c Ptr{:None} xmlHashLookup2 (:xmlHashTablePtr,Ptr{:xmlChar},Ptr{:xmlChar}) shlib
@c Ptr{:None} xmlHashLookup3 (:xmlHashTablePtr,Ptr{:xmlChar},Ptr{:xmlChar},Ptr{:xmlChar}) shlib
@c Ptr{:None} xmlHashQLookup (:xmlHashTablePtr,Ptr{:xmlChar},Ptr{:xmlChar}) shlib
@c Ptr{:None} xmlHashQLookup2 (:xmlHashTablePtr,Ptr{:xmlChar},Ptr{:xmlChar},Ptr{:xmlChar},Ptr{:xmlChar}) shlib
@c Ptr{:None} xmlHashQLookup3 (:xmlHashTablePtr,Ptr{:xmlChar},Ptr{:xmlChar},Ptr{:xmlChar},Ptr{:xmlChar},Ptr{:xmlChar},Ptr{:xmlChar}) shlib
@c xmlHashTablePtr xmlHashCopy (:xmlHashTablePtr,:xmlHashCopier) shlib
@c Int32 xmlHashSize (:xmlHashTablePtr,) shlib
@c None xmlHashScan (:xmlHashTablePtr,:xmlHashScanner,Ptr{:None}) shlib
@c None xmlHashScan3 (:xmlHashTablePtr,Ptr{:xmlChar},Ptr{:xmlChar},Ptr{:xmlChar},:xmlHashScanner,Ptr{:None}) shlib
@c None xmlHashScanFull (:xmlHashTablePtr,:xmlHashScannerFull,Ptr{:None}) shlib
@c None xmlHashScanFull3 (:xmlHashTablePtr,Ptr{:xmlChar},Ptr{:xmlChar},Ptr{:xmlChar},:xmlHashScannerFull,Ptr{:None}) shlib

