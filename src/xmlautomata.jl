# Julia wrapper for header: /usr/include/libxml2/libxml/xmlautomata.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

@c xmlAutomataPtr xmlNewAutomata () shlib
@c None xmlFreeAutomata (:xmlAutomataPtr,) shlib
@c xmlAutomataStatePtr xmlAutomataGetInitState (:xmlAutomataPtr,) shlib
@c Int32 xmlAutomataSetFinalState (:xmlAutomataPtr,:xmlAutomataStatePtr) shlib
@c xmlAutomataStatePtr xmlAutomataNewState (:xmlAutomataPtr,) shlib
@c xmlAutomataStatePtr xmlAutomataNewTransition (:xmlAutomataPtr,:xmlAutomataStatePtr,:xmlAutomataStatePtr,Ptr{:xmlChar},Ptr{:None}) shlib
@c xmlAutomataStatePtr xmlAutomataNewTransition2 (:xmlAutomataPtr,:xmlAutomataStatePtr,:xmlAutomataStatePtr,Ptr{:xmlChar},Ptr{:xmlChar},Ptr{:None}) shlib
@c xmlAutomataStatePtr xmlAutomataNewNegTrans (:xmlAutomataPtr,:xmlAutomataStatePtr,:xmlAutomataStatePtr,Ptr{:xmlChar},Ptr{:xmlChar},Ptr{:None}) shlib
@c xmlAutomataStatePtr xmlAutomataNewCountTrans (:xmlAutomataPtr,:xmlAutomataStatePtr,:xmlAutomataStatePtr,Ptr{:xmlChar},:Int32,:Int32,Ptr{:None}) shlib
@c xmlAutomataStatePtr xmlAutomataNewCountTrans2 (:xmlAutomataPtr,:xmlAutomataStatePtr,:xmlAutomataStatePtr,Ptr{:xmlChar},Ptr{:xmlChar},:Int32,:Int32,Ptr{:None}) shlib
@c xmlAutomataStatePtr xmlAutomataNewOnceTrans (:xmlAutomataPtr,:xmlAutomataStatePtr,:xmlAutomataStatePtr,Ptr{:xmlChar},:Int32,:Int32,Ptr{:None}) shlib
@c xmlAutomataStatePtr xmlAutomataNewOnceTrans2 (:xmlAutomataPtr,:xmlAutomataStatePtr,:xmlAutomataStatePtr,Ptr{:xmlChar},Ptr{:xmlChar},:Int32,:Int32,Ptr{:None}) shlib
@c xmlAutomataStatePtr xmlAutomataNewAllTrans (:xmlAutomataPtr,:xmlAutomataStatePtr,:xmlAutomataStatePtr,:Int32) shlib
@c xmlAutomataStatePtr xmlAutomataNewEpsilon (:xmlAutomataPtr,:xmlAutomataStatePtr,:xmlAutomataStatePtr) shlib
@c xmlAutomataStatePtr xmlAutomataNewCountedTrans (:xmlAutomataPtr,:xmlAutomataStatePtr,:xmlAutomataStatePtr,:Int32) shlib
@c xmlAutomataStatePtr xmlAutomataNewCounterTrans (:xmlAutomataPtr,:xmlAutomataStatePtr,:xmlAutomataStatePtr,:Int32) shlib
@c Int32 xmlAutomataNewCounter (:xmlAutomataPtr,:Int32,:Int32) shlib
@c xmlRegexpPtr xmlAutomataCompile (:xmlAutomataPtr,) shlib
@c Int32 xmlAutomataIsDeterminist (:xmlAutomataPtr,) shlib

