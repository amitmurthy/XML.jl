# Julia wrapper for header: /usr/include/libxml2/libxml/xlink.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

@c xlinkNodeDetectFunc xlinkGetDefaultDetect () shlib
@c None xlinkSetDefaultDetect (:xlinkNodeDetectFunc,) shlib
@c xlinkHandlerPtr xlinkGetDefaultHandler () shlib
@c None xlinkSetDefaultHandler (:xlinkHandlerPtr,) shlib
@c xlinkType xlinkIsLink (:xmlDocPtr,:xmlNodePtr) shlib

