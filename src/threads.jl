# Julia wrapper for header: /usr/include/libxml2/libxml/threads.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

@c xmlMutexPtr xmlNewMutex () libxml2
@c None xmlMutexLock (xmlMutexPtr,) libxml2
@c None xmlMutexUnlock (xmlMutexPtr,) libxml2
@c None xmlFreeMutex (xmlMutexPtr,) libxml2
@c xmlRMutexPtr xmlNewRMutex () libxml2
@c None xmlRMutexLock (xmlRMutexPtr,) libxml2
@c None xmlRMutexUnlock (xmlRMutexPtr,) libxml2
@c None xmlFreeRMutex (xmlRMutexPtr,) libxml2
@c None xmlInitThreads () libxml2
@c None xmlLockLibrary () libxml2
@c None xmlUnlockLibrary () libxml2
@c Int32 xmlGetThreadId () libxml2
@c Int32 xmlIsMainThread () libxml2
@c None xmlCleanupThreads () libxml2
@c xmlGlobalStatePtr xmlGetGlobalState () libxml2

