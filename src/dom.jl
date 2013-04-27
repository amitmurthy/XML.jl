module dom

require("lxlite.jl")
using lx

###############################################################################
#                                                                             #
# DM Core Level 1 Interface Exports                                           #
#                                                                             #
###############################################################################

### Node API (flat)
export  nodeName, nodeValue, nodeType, parentNode, childNodes, firstChild,
        lastChild, previousSibling, nextSibling, attributes, ownerDocument,
        insertBefore, replaceChild, removeChild, appendChild, hasChildNodes,
        cloneNode

### Document wrapper type declaration #########################################
type XMLDoc
    doc::Ptr{xmlDoc}
    root::Ptr{xmlNode}
    
    function XMLDoc(; filename = None, xmlstring = None)
        if (filename != None && xmlstring != None)
            error("Please use only filename or xmlstring, not both")
        end
        if (filename != None)
            doc = lx.parseFile(filename)
        elseif (xmlstring != None)
            doc = lx.parseString(xmlstring)
        else
            error("Please specify filename or xmlstring keyword argument")
        end
        root = lx.docRoot(doc)
        new(doc, root)
    end
end


### ExceptionCode #############################################################

baremodule EC
INDEX_SIZE_ERR     = 1
DOMSTRING_SIZE_ERR = 2
HIERARCHY_REQUEST_ERR = 3
WRONG_DOCUMENT_ERR = 4
INVALID_CHARACTER_ERR = 5
NO_DATA_ALLOWED_ERR = 6
NO_MODIFICATION_ALLOWED_ERR = 7
NOT_FOUND_ERR = 8
NOT_SUPPORTED_ERR = 9
INUSE_ATTRIBUTE_ERR = 10
end
__ec = (Int=>Symbol)[ eval(EC.(nm)) => nm
                      for nm in setdiff(names(EC,true), [module_name(EC)]) ]
EC!(I::Int) = __ec[I]

### DOMImplementation ##########################################################

function hasFeature(feature::ASCIIString, version::ASCIIString)
  if (lowercase(feature) == "xml" && version == "1.0") return true
  else return false end
end

### Nodes and derived ##########################################################

abstract AbstractNode
abstract Document <: AbstractNode
abstract Element <: AbstractNode
abstract Attr <: AbstractNode

type Node <: AbstractNode
    ptr::Ptr{lx.xmlNode}
end

### Node Interface #############################################################

# NodeType enums
baremodule NT
const ELEMENT       = 1
const ATTRIBUTE     = 2
const TEXT          = 3
const CDATA_SECTION = 4
const ENTITY_REFERENCE = 5
const ENTITY        = 6
const PROCESSING_INSTRUCTION = 7
const COMMENT       = 8
const DOCUMENT      = 9
const DOCUMENT_TYPE = 10
const DOCUMENT_FRAGMENT = 11
const NOTATION      = 12
end
__nt = (Int=>Symbol)[ eval(NT.(nm)) => nm
                      for nm in setdiff(names(NT,true), [module_name(NT)]) ]
NT!(I::Int) = __nt[I]

nodeValue(node::Node) = begin
    nt = lx.nodeType(node)
    if (nt == NT.ATTRIBUTE)
        return lx.xprop(node)
    elseif (nt == NT.TEXT)
        return lx.xnodestring(node)
    elseif (nt == NT.CDATASECTION)
        return lx.xnodestring(node)
    elseif (nt == NT.PROCESSING_INSTRUCTION)
        error("ProcessingInstruction not yet implemented") # TODO
    elseif (nt == NT.COMMENT)
        error("Comment not yet implemented") # TODO
    end
    end

nodeName(node::Node) = begin
    nt = lx.nodeType(node.ptr)
    if (nt == NT.ELEMENT)
        return lx.xnodename(node)
    elseif (nt == NT.ATTRIBUTE)
        return lx.xnodename(node)
    elseif (nt == NT.TEXT)
        return "#text"
    elseif (nt == NT.CDATASECTION)
        return "#cdata-section"
    elseif (nt == NT.ENTITY_REFERENCE)
        return lx.xnodename(node) # TODO
    elseif (nt == NT.ENTITY)
        # TODO
    elseif (nt == NT.PROCESSING_INSTRUCTION)
        # TODO
    elseif (nt == NT.COMMENT)
        return "#comment"
    elseif (nt == NT.DOCUMENT)
        return "#document"
    elseif (nt == NT.DOCUMENT_TYPE)
        return lx.xnodename(node) # TODO
    elseif (nt == NT.DOCUMENT_FRAGMENT)
        return "#document-fragment"
    elseif (nt == NT.NOTATION)
        return lx.xnodename(node)
    else
        error("Unknown node type: $nt")
    end
    end

nodeType(node::Node) = lx.xtype(node)
parentNode(node::Node) = lx.xparent(node)
childNodes(node) = lx.childNodes(node)
firstChild(node::Node) = lx.xmlFirstElementChild(node)
lastChild(node::Node) = lx.xmlLastElementChild(node)
previousSibling(node::Node) = lx.xmlPreviousElementSibling(node)
nextSibling(node::Node) = lx.xmlNextElementSibling(node)
attributes(node::Node) = lx.xchildren(lx.xattr(node))
ownerDocument(node::Node) = lx.xdoc(node)
insertBefore(newChild::Node, refChild::Node) = lx.xmlAddPrevSibling(refChild, newChild)
replaceChild(newChild::Node, oldChild::Node) = lx.xmlReplaceNode(oldChild, newChild)
removeChild(node::Node, oldChild::Node) = begin
    lx.xmlUnlinkNode(oldChild)
    lx.xmlFreeNode(oldChild)
    end
appendChild(node::Node, newChild::Node) = begin
    (lx.xmlAddChild(node, newChild) == NULL) &&
        error("Unable to append child node")
    end
hasChildNodes(node::Node) = (lx.xchildren(node) != NULL)
cloneNode(node::Node, deep::Bool) = begin
    # TODO
    lx.xmlCopyNode(node, deep)
    end

### Document Interface ########################################################

# createElement(doc::Document, tagName::ASCIIString)
# doctype(doc::Document)
# implementation(doc::Document)
# documentElement(doc::Document)
# createDocumentFragment(doc::Document)
# createTextNode(data::ASCIIString)
# createComment(data::ASCIIString)
# createCDATASection(d::Document, data::ASCIIString)
# createProcessingInstruction(target::ASCIIString, data::ASCIIString)
# createAttribute(name::ASCIIString)
# createEntityReference(name::ASCIIString)

#getElementsByTagname(doc::Document, tagname::ASCIIString) = lx.

### NodeList Interface ########################################################

abstract NodeList
length(n::NodeList) = lx.nodelistLength(n)
item(n::NodeList, i::Culong) = lx.nodelistItem(n, i)

### Attr Interface

# abstract Attr
# 
# name(node::Attr) = name(domImpl, name)
# specified(node::Attr) = specified(domImpl, node)
# value(node::Attr) = value(domImpl, node)
# 
# ### Element Interface #########################################################
# 
# abstract Element
# 
# tagName(node::Element) = tagName(domImpl, node)
# getAttribute(node::Element, name::ASCIIString) = 
#   getAttribute(domImpl, node::Element, name::ASCIIString)
# setAttribute(node::Element, name::ASCIIString, value::ASCIIString) =
#   setAttribute(domImpl, node, name, value)
# removeAttribute(node::Element, name::ASCIIString) =
#   removeAttribute(domImpl, node, name)
# getAttributeNode(node::Element, name::ASCIIString) =
#   getAttributeNode(domImpl, node::Element, name::ASCIIString)
# setAttributeNode(node::Element, newAttr::Attr) = 
#   setAttributeNode(domImpl, node, newAttr)
# removeAttributeNode(node::Element, oldAttr) =
#   removeAttributeNode(domImpl, node, oldAttr)
# getElementsByTagName(node::Element) = getElementsByTagName(domImpl, node)
# normalize(node::Element) = normalize(domImpl, node)

### CharacterData Interface: not yet supported ################################

#interface CharacterData : Node {
#           attribute  DOMString            data;
#                                 // raises(DOMException) on setting
#                                 // raises(DOMException) on retrieval
#  readonly attribute  unsigned long        length;
#  DOMString                 substringData(in unsigned long offset, 
#                                          in unsigned long count)
#                                          raises(DOMException);
#  void                      appendData(in DOMString arg)
#                                       raises(DOMException);
#  void                      insertData(in unsigned long offset, 
#                                       in DOMString arg)
#                                       raises(DOMException);
#  void                      deleteData(in unsigned long offset, 
#                                       in unsigned long count)
#                                       raises(DOMException);
#  void                      replaceData(in unsigned long offset, 
#                                        in unsigned long count, 
#                                        in DOMString arg)
#                                        raises(DOMException);
#};


end # xml
