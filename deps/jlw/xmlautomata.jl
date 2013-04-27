# Julia wrapper for header: /usr/include/libxml2/libxml/xmlautomata.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

@c xmlAutomataPtr xmlNewAutomata () libxml2
@c None xmlFreeAutomata (xmlAutomataPtr,) libxml2
@c xmlAutomataStatePtr xmlAutomataGetInitState (xmlAutomataPtr,) libxml2
@c Int32 xmlAutomataSetFinalState (xmlAutomataPtr, xmlAutomataStatePtr) libxml2
@c xmlAutomataStatePtr xmlAutomataNewState (xmlAutomataPtr,) libxml2
@c xmlAutomataStatePtr xmlAutomataNewTransition (xmlAutomataPtr, xmlAutomataStatePtr, xmlAutomataStatePtr, Ptr{xmlChar}, Ptr{None}) libxml2
@c xmlAutomataStatePtr xmlAutomataNewTransition2 (xmlAutomataPtr, xmlAutomataStatePtr, xmlAutomataStatePtr, Ptr{xmlChar}, Ptr{xmlChar}, Ptr{None}) libxml2
@c xmlAutomataStatePtr xmlAutomataNewNegTrans (xmlAutomataPtr, xmlAutomataStatePtr, xmlAutomataStatePtr, Ptr{xmlChar}, Ptr{xmlChar}, Ptr{None}) libxml2
@c xmlAutomataStatePtr xmlAutomataNewCountTrans (xmlAutomataPtr, xmlAutomataStatePtr, xmlAutomataStatePtr, Ptr{xmlChar}, Int32, Int32, Ptr{None}) libxml2
@c xmlAutomataStatePtr xmlAutomataNewCountTrans2 (xmlAutomataPtr, xmlAutomataStatePtr, xmlAutomataStatePtr, Ptr{xmlChar}, Ptr{xmlChar}, Int32, Int32, Ptr{None}) libxml2
@c xmlAutomataStatePtr xmlAutomataNewOnceTrans (xmlAutomataPtr, xmlAutomataStatePtr, xmlAutomataStatePtr, Ptr{xmlChar}, Int32, Int32, Ptr{None}) libxml2
@c xmlAutomataStatePtr xmlAutomataNewOnceTrans2 (xmlAutomataPtr, xmlAutomataStatePtr, xmlAutomataStatePtr, Ptr{xmlChar}, Ptr{xmlChar}, Int32, Int32, Ptr{None}) libxml2
@c xmlAutomataStatePtr xmlAutomataNewAllTrans (xmlAutomataPtr, xmlAutomataStatePtr, xmlAutomataStatePtr, Int32) libxml2
@c xmlAutomataStatePtr xmlAutomataNewEpsilon (xmlAutomataPtr, xmlAutomataStatePtr, xmlAutomataStatePtr) libxml2
@c xmlAutomataStatePtr xmlAutomataNewCountedTrans (xmlAutomataPtr, xmlAutomataStatePtr, xmlAutomataStatePtr, Int32) libxml2
@c xmlAutomataStatePtr xmlAutomataNewCounterTrans (xmlAutomataPtr, xmlAutomataStatePtr, xmlAutomataStatePtr, Int32) libxml2
@c Int32 xmlAutomataNewCounter (xmlAutomataPtr, Int32, Int32) libxml2
@c xmlRegexpPtr xmlAutomataCompile (xmlAutomataPtr,) libxml2
@c Int32 xmlAutomataIsDeterminist (xmlAutomataPtr,) libxml2

