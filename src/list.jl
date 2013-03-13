# Julia wrapper for header: /usr/include/libxml2/libxml/list.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

@c xmlListPtr xmlListCreate (:xmlListDeallocator,:xmlListDataCompare) shlib
@c None xmlListDelete (:xmlListPtr,) shlib
@c Ptr{:None} xmlListSearch (:xmlListPtr,Ptr{:None}) shlib
@c Ptr{:None} xmlListReverseSearch (:xmlListPtr,Ptr{:None}) shlib
@c Int32 xmlListInsert (:xmlListPtr,Ptr{:None}) shlib
@c Int32 xmlListAppend (:xmlListPtr,Ptr{:None}) shlib
@c Int32 xmlListRemoveFirst (:xmlListPtr,Ptr{:None}) shlib
@c Int32 xmlListRemoveLast (:xmlListPtr,Ptr{:None}) shlib
@c Int32 xmlListRemoveAll (:xmlListPtr,Ptr{:None}) shlib
@c None xmlListClear (:xmlListPtr,) shlib
@c Int32 xmlListEmpty (:xmlListPtr,) shlib
@c xmlLinkPtr xmlListFront (:xmlListPtr,) shlib
@c xmlLinkPtr xmlListEnd (:xmlListPtr,) shlib
@c Int32 xmlListSize (:xmlListPtr,) shlib
@c None xmlListPopFront (:xmlListPtr,) shlib
@c None xmlListPopBack (:xmlListPtr,) shlib
@c Int32 xmlListPushFront (:xmlListPtr,Ptr{:None}) shlib
@c Int32 xmlListPushBack (:xmlListPtr,Ptr{:None}) shlib
@c None xmlListReverse (:xmlListPtr,) shlib
@c None xmlListSort (:xmlListPtr,) shlib
@c None xmlListWalk (:xmlListPtr,:xmlListWalker,Ptr{:None}) shlib
@c None xmlListReverseWalk (:xmlListPtr,:xmlListWalker,Ptr{:None}) shlib
@c None xmlListMerge (:xmlListPtr,:xmlListPtr) shlib
@c xmlListPtr xmlListDup (:xmlListPtr,) shlib
@c Int32 xmlListCopy (:xmlListPtr,:xmlListPtr) shlib
@c Ptr{:None} xmlLinkGetData (:xmlLinkPtr,) shlib

