# Julia wrapper for header: /usr/include/libxml2/libxml/threads.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

@c xmlMutexPtr xmlNewMutex () shlib
@c None xmlMutexLock (:xmlMutexPtr,) shlib
@c None xmlMutexUnlock (:xmlMutexPtr,) shlib
@c None xmlFreeMutex (:xmlMutexPtr,) shlib
@c xmlRMutexPtr xmlNewRMutex () shlib
@c None xmlRMutexLock (:xmlRMutexPtr,) shlib
@c None xmlRMutexUnlock (:xmlRMutexPtr,) shlib
@c None xmlFreeRMutex (:xmlRMutexPtr,) shlib
@c None xmlInitThreads () shlib
@c None xmlLockLibrary () shlib
@c None xmlUnlockLibrary () shlib
@c Int32 xmlGetThreadId () shlib
@c Int32 xmlIsMainThread () shlib
@c None xmlCleanupThreads () shlib
@c xmlGlobalStatePtr xmlGetGlobalState () shlib

