
module lxml

export xmlDoc, xmlNode

include("libXML2.jl")

macro xfree(wrf, rlf)
    @gensym _p
    @gensym _t
    quote
        $_p = $(rlf)
        $_t = $(wrf)($(_p))
        #xmlFree($_p) TODO
        return $_t
    end
end

abstract Node

# Helper functions (for now)
convert(::Type{Ptr{xmlNode}}, N::Node) = N.ptr

xname(n)   =   bytestring(ccall( (:getNodeName, "libxml2helper"), Ptr{Cuchar}, (Ptr{xmlNode},), n))
xchildren(n)=  ccall( (:getNodeChildrenPtr, "libxml2helper"), Ptr{xmlNode}, (Ptr{xmlNode},), n)
xlast(n)   =   ccall( (:getNodeLast, "libxml2helper"), Ptr{xmlNode}, (Ptr{xmlNode},), n)
xparent(n) =   ccall( (:getNodeParent, "libxml2helper"), Ptr{xmlNode}, (Ptr{xmlNode},), n)
xnext(n)   =   ccall( (:getNodeNext, "libxml2helper"), Ptr{xmlNode}, (Ptr{xmlNode},), n)
xprev(n)   =   ccall( (:getNodePrev, "libxml2helper"), Ptr{xmlNode}, (Ptr{xmlNode},), n)
xdoc(n)    =   ccall( (:getNodeDoc, "libxml2helper"), Ptr{xmlNode}, (Ptr{xmlNode},), n)
xtype(n)   =   ccall( (:getNodeType, "libxml2helper"), Cint, (Ptr{xmlNode},), n)
xattr(n)   =   ccall( (:getNodeAttrs, "libxml2helper"), Ptr{xmlNode}, (Ptr{xmlNode},), n)

xfindtag(n,tn) = ccall( (:findNodeByTag, "libxml2helper"), Ptr{xmlNode}, (Ptr{xmlNode},Ptr{Uint8}), n, tn)

xprop(n) = xprop(n, xname(n))
xprop(n, attrName) = @xfree bytestring lxml.xmlGetProp(n, attrName)

xnodestring(n) = @xfree bytestring lxml.xmlNodeListGetString(xdoc(n), n, 0)

childNodes(node) = begin
    nn = Ptr{xmlNode}[]
    next = lxml.xchildren(node)
    while ( next != C_NULL )
        push!(nn, next)
        next = lxml.xnext(next)
    end
    nn
    end

function parseString(xmlstrdoc)
    d = xmlParseMemory(xmlstrdoc, length(xmlstrdoc))
    if (d != C_NULL) return d
    else error("Unable to parse string") end
end
    

function parseFile(fname)
    d = xmlReadFile(fname, C_NULL, 0)
    if(d != C_NULL) return d
    else error("Unable to parse file: $fname") 
    end
end

function docRoot(doc::Ptr{xmlDoc})
  r = xmlDocGetRootElement(doc)
  (r == C_NULL) && error("No root element for document!")
  return r
end

nodeName(n::Ptr{xmlNode}) = (n==C_NULL) ? error("Null node pointer") : bytestring(xname(n))
findTag(n::Ptr{xmlNode}, tn::ASCIIString) = xfindtag(n,tn) 

function searchcb(d::Any, n::Ptr{Void})
    l = unsafe_pointer_to_objref(d)
    push!(l, n)
    return
end 
searchcf = cfunction(searchcb, Void, (Ptr{Void}, Ptr{Void}))

function xsearch(n, tag, findfirst)
  list = Ptr{xmlNode}[]
  _findfirst = (findfirst ? 0 : 1)
  ccall( (:nodeDFS, "libxml2helper"), Void, (Ptr{Void}, Ptr{Uint8}, Any, Ptr{Void}, Cint), n, tag, list, searchcf, _findfirst)
  list
end

end # lxml
