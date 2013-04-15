module xml

    import Base.getindex, Base.setindex

    export foo #placeholder

module lxml

    using StrPack

    export xmlDoc, xmlNode
    
    abstract xmlNode
#    immutable _xmlNode
#        _private::Ptr{Void}
#        _type::Cint                 # xmlElementType, type number, must be second !
#        name::Ptr{Cchar}            # the name of the node, or the entity
#        children::Ptr{xmlNode}      # parent->childs link
#        last::Ptr{xmlNode}          # last child link
#        parent::Ptr{xmlNode}        # child->parent link
#        next::Ptr{xmlNode}          # next sibling link
#        prev::Ptr{xmlNode}          # previous sibling link
#        doc::Ptr{xmlNode}           # the containing document End of common p
#        ns::Ptr{Void}               # *xmlNs: pointer to the associated namespace
#        content::Ptr{Uint8}         # *unsigned char: the content
#        properties::Ptr{Void}       # *_xmlAttr: properties list
#        nsDef::Ptr{Void}            # namespace definitions on this node
#        psvi::Ptr{Void}             # for type/PSVI informations
#        line::Cushort               # line number
#        extra::Cushort              # extra data for XPath/XSLT
#    end

    # Helper functions (for now)
    xname(n)   =   ccall( (:getNodeName, "libxml2helper"), Ptr{Cuchar}, (Ptr{xmlNode},), n)
    xchildren(n)=  ccall( (:getNodeChildren, "libxml2helper"), Ptr{xmlNode}, (Ptr{xmlNode},), n)
    xlast(n)   =   ccall( (:getNodeLast, "libxml2helper"), Ptr{xmlNode}, (Ptr{xmlNode},), n)
    xparent(n) =   ccall( (:getNodeParent, "libxml2helper"), Ptr{xmlNode}, (Ptr{xmlNode},), n)
    xnext(n)   =   ccall( (:getNodeNext, "libxml2helper"), Ptr{xmlNode}, (Ptr{xmlNode},), n)
    xprev(n)   =   ccall( (:getNodePrev, "libxml2helper"), Ptr{xmlNode}, (Ptr{xmlNode},), n)
    xdoc(n)    =   ccall( (:getNodeDoc, "libxml2helper"), Ptr{xmlNode}, (Ptr{xmlNode},), n)
    
    include("libXML2.jl")
     
    function parseFile(fname)
        d = xmlReadFile(fname, C_NULL, 0)
        if(d != C_NULL) return d
        else error("Unable to parse file: $fname") end
    end
    function docRoot(doc::Ptr{xmlDoc})
        r = xmlDocGetRootElement(doc)
        (r == C_NULL) && error("No root element for document!")
        return r
    end

    nodeName(n::Ptr{xmlNode}) = (n==C_NULL) ? error("Null node pointer") : bytestring(xname(n))

end # lxml

using .lxml

type XMLDoc
    doc::Ptr{xmlDoc}
    root::Ptr{xmlNode}
    
    function XMLDoc(filename)
        doc = lxml.parseFile(filename)
        root = lxml.docRoot(doc)
        new(doc, root)
    end
end

parse(filename::ASCIIString) = XMLDoc(filename)
tagname(n::Ptr{xmlNode}) = lxml.nodeName(n)


end # xml
