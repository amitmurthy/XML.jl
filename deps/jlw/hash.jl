# Julia wrapper for header: /usr/include/libxml2/libxml/hash.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

@c xmlHashTablePtr xmlHashCreate (Int32,) libxml2
@c xmlHashTablePtr xmlHashCreateDict (Int32, xmlDictPtr) libxml2
@c None xmlHashFree (xmlHashTablePtr, xmlHashDeallocator) libxml2
@c Int32 xmlHashAddEntry (xmlHashTablePtr, Ptr{xmlChar}, Ptr{None}) libxml2
@c Int32 xmlHashUpdateEntry (xmlHashTablePtr, Ptr{xmlChar}, Ptr{None}, xmlHashDeallocator) libxml2
@c Int32 xmlHashAddEntry2 (xmlHashTablePtr, Ptr{xmlChar}, Ptr{xmlChar}, Ptr{None}) libxml2
@c Int32 xmlHashUpdateEntry2 (xmlHashTablePtr, Ptr{xmlChar}, Ptr{xmlChar}, Ptr{None}, xmlHashDeallocator) libxml2
@c Int32 xmlHashAddEntry3 (xmlHashTablePtr, Ptr{xmlChar}, Ptr{xmlChar}, Ptr{xmlChar}, Ptr{None}) libxml2
@c Int32 xmlHashUpdateEntry3 (xmlHashTablePtr, Ptr{xmlChar}, Ptr{xmlChar}, Ptr{xmlChar}, Ptr{None}, xmlHashDeallocator) libxml2
@c Int32 xmlHashRemoveEntry (xmlHashTablePtr, Ptr{xmlChar}, xmlHashDeallocator) libxml2
@c Int32 xmlHashRemoveEntry2 (xmlHashTablePtr, Ptr{xmlChar}, Ptr{xmlChar}, xmlHashDeallocator) libxml2
@c Int32 xmlHashRemoveEntry3 (xmlHashTablePtr, Ptr{xmlChar}, Ptr{xmlChar}, Ptr{xmlChar}, xmlHashDeallocator) libxml2
@c Ptr{None} xmlHashLookup (xmlHashTablePtr, Ptr{xmlChar}) libxml2
@c Ptr{None} xmlHashLookup2 (xmlHashTablePtr, Ptr{xmlChar}, Ptr{xmlChar}) libxml2
@c Ptr{None} xmlHashLookup3 (xmlHashTablePtr, Ptr{xmlChar}, Ptr{xmlChar}, Ptr{xmlChar}) libxml2
@c Ptr{None} xmlHashQLookup (xmlHashTablePtr, Ptr{xmlChar}, Ptr{xmlChar}) libxml2
@c Ptr{None} xmlHashQLookup2 (xmlHashTablePtr, Ptr{xmlChar}, Ptr{xmlChar}, Ptr{xmlChar}, Ptr{xmlChar}) libxml2
@c Ptr{None} xmlHashQLookup3 (xmlHashTablePtr, Ptr{xmlChar}, Ptr{xmlChar}, Ptr{xmlChar}, Ptr{xmlChar}, Ptr{xmlChar}, Ptr{xmlChar}) libxml2
@c xmlHashTablePtr xmlHashCopy (xmlHashTablePtr, xmlHashCopier) libxml2
@c Int32 xmlHashSize (xmlHashTablePtr,) libxml2
@c None xmlHashScan (xmlHashTablePtr, xmlHashScanner, Ptr{None}) libxml2
@c None xmlHashScan3 (xmlHashTablePtr, Ptr{xmlChar}, Ptr{xmlChar}, Ptr{xmlChar}, xmlHashScanner, Ptr{None}) libxml2
@c None xmlHashScanFull (xmlHashTablePtr, xmlHashScannerFull, Ptr{None}) libxml2
@c None xmlHashScanFull3 (xmlHashTablePtr, Ptr{xmlChar}, Ptr{xmlChar}, Ptr{xmlChar}, xmlHashScannerFull, Ptr{None}) libxml2

