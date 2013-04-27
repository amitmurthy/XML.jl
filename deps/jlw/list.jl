# Julia wrapper for header: /usr/include/libxml2/libxml/list.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

@c xmlListPtr xmlListCreate (xmlListDeallocator, xmlListDataCompare) libxml2
@c None xmlListDelete (xmlListPtr,) libxml2
@c Ptr{None} xmlListSearch (xmlListPtr, Ptr{None}) libxml2
@c Ptr{None} xmlListReverseSearch (xmlListPtr, Ptr{None}) libxml2
@c Int32 xmlListInsert (xmlListPtr, Ptr{None}) libxml2
@c Int32 xmlListAppend (xmlListPtr, Ptr{None}) libxml2
@c Int32 xmlListRemoveFirst (xmlListPtr, Ptr{None}) libxml2
@c Int32 xmlListRemoveLast (xmlListPtr, Ptr{None}) libxml2
@c Int32 xmlListRemoveAll (xmlListPtr, Ptr{None}) libxml2
@c None xmlListClear (xmlListPtr,) libxml2
@c Int32 xmlListEmpty (xmlListPtr,) libxml2
@c xmlLinkPtr xmlListFront (xmlListPtr,) libxml2
@c xmlLinkPtr xmlListEnd (xmlListPtr,) libxml2
@c Int32 xmlListSize (xmlListPtr,) libxml2
@c None xmlListPopFront (xmlListPtr,) libxml2
@c None xmlListPopBack (xmlListPtr,) libxml2
@c Int32 xmlListPushFront (xmlListPtr, Ptr{None}) libxml2
@c Int32 xmlListPushBack (xmlListPtr, Ptr{None}) libxml2
@c None xmlListReverse (xmlListPtr,) libxml2
@c None xmlListSort (xmlListPtr,) libxml2
@c None xmlListWalk (xmlListPtr, xmlListWalker, Ptr{None}) libxml2
@c None xmlListReverseWalk (xmlListPtr, xmlListWalker, Ptr{None}) libxml2
@c None xmlListMerge (xmlListPtr, xmlListPtr) libxml2
@c xmlListPtr xmlListDup (xmlListPtr,) libxml2
@c Int32 xmlListCopy (xmlListPtr, xmlListPtr) libxml2
@c Ptr{None} xmlLinkGetData (xmlLinkPtr,) libxml2

