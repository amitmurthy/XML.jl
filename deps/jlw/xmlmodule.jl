# Julia wrapper for header: /usr/include/libxml2/libxml/xmlmodule.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

@c xmlModulePtr xmlModuleOpen (Ptr{Uint8}, Int32) libxml2
@c Int32 xmlModuleSymbol (xmlModulePtr, Ptr{Uint8}, Ptr{Ptr{None}}) libxml2
@c Int32 xmlModuleClose (xmlModulePtr,) libxml2
@c Int32 xmlModuleFree (xmlModulePtr,) libxml2

