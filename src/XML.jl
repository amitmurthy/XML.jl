module dom

require("XML_impl.jl")

## Imports
using lxml

## Wrapper type declaration
type XMLDoc
    doc::Ptr{xmlDoc}
    root::Ptr{xmlNode}
    
    function XMLDoc(; filename = None, xmlstring = None)
        if (filename != None && xmlstring != None)
            error("Please use only filename or xmlstring, not both")
        end
        if (filename != None)
            doc = lxml.parseFile(filename)
        elseif (xmlstring != None)
            doc = lxml.parseString(xmlstring)
        else
            error("Please specify filename or xmlstring keyword argument")
        end
        root = lxml.docRoot(doc)
        new(doc, root)
    end
end

###############################################################################
#                                                                             #
# DOM Core Level 1 Interface                                                  #
#                                                                             #
###############################################################################

### Node API (flat)
export  nodeName, nodeValue, nodeType, parentNode, childNodes, firstChild,
        lastChild, previousSibling, nextSibling, attributes, ownerDocument,
        insertBefore, replaceChild, removeChild, appendChild, hasChildNodes,
        cloneNode

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

abstract Node
abstract Document <: Node
abstract Element <: Node
abstract Attr <: Node

type _Node <: Node
    ptr::Ptr{Void}
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
    nt = lxml.nodeType(node)
    if (nt == NT.ATTRIBUTE)
        return lxml.xprop(node)
    elseif (nt == NT.TEXT)
        return lxml.xnodestring(node)
    elseif (nt == NT.CDATASECTION)
        return lxml.xnodestring(node)
    elseif (nt == NT.PROCESSING_INSTRUCTION)
        error("ProcessingInstruction not yet implemented") # TODO
    elseif (nt == NT.COMMENT)
        error("Comment not yet implemented") # TODO
    end
    end

nodeName(node::Node) = begin
    nt = lxml.nodeType(node.ptr)
    if (nt == NT.ELEMENT)
        return lxml.xnodename(node)
    elseif (nt == NT.ATTRIBUTE)
        return lxml.xnodename(node)
    elseif (nt == NT.TEXT)
        return "#text"
    elseif (nt == NT.CDATASECTION)
        return "#cdata-section"
    elseif (nt == NT.ENTITY_REFERENCE)
        return lxml.xnodename(node) # TODO
    elseif (nt == NT.ENTITY)
        # TODO
    elseif (nt == NT.PROCESSING_INSTRUCTION)
        # TODO
    elseif (nt == NT.COMMENT)
        return "#comment"
    elseif (nt == NT.DOCUMENT)
        return "#document"
    elseif (nt == NT.DOCUMENT_TYPE)
        return lxml.xnodename(node) # TODO
    elseif (nt == NT.DOCUMENT_FRAGMENT)
        return "#document-fragment"
    elseif (nt == NT.NOTATION)
        return lxml.xnodename(node)
    else
        error("Unknown node type: $nt")
    end
    end

nodeType(node::Node) = lxml.xtype(node)
parentNode(node::Node) = lxml.xparent(node)
childNodes(node) = lxml.childNodes(node)
firstChild(node::Node) = lxml.xmlFirstElementChild(node)
lastChild(node::Node) = lxml.xmlLastElementChild(node)
previousSibling(node::Node) = lxml.xmlPreviousElementSibling(node)
nextSibling(node::Node) = lxml.xmlNextElementSibling(node)
attributes(node::Node) = lxml.xchildren(lxml.xattr(node))
ownerDocument(node::Node) = lxml.xdoc(node)
insertBefore(newChild::Node, refChild::Node) = lxml.xmlAddPrevSibling(refChild, newChild)
replaceChild(newChild::Node, oldChild::Node) = lxml.xmlReplaceNode(oldChild, newChild)
removeChild(node::Node, oldChild::Node) = begin
    lxml.xmlUnlinkNode(oldChild)
    lxml.xmlFreeNode(oldChild)
    end
appendChild(node::Node, newChild::Node) = begin
    (lxml.xmlAddChild(node, newChild) == NULL) &&
        error("Unable to append child node")
    end
hasChildNodes(node::Node) = (lxml.xchildren(node) != NULL)
cloneNode(node::Node, deep::Bool) = begin
    # TODO
    lxml.xmlCopyNode(node, deep)
    end

TODO = """
### Document Interface ########################################################

createElement(doc::Document, tagName::ASCIIString)
doctype(doc::Document)
implementation(doc::Document)
documentElement(doc::Document)
createDocumentFragment(doc::Document)
createTextNode(data::ASCIIString)
createComment(data::ASCIIString)
createCDATASection(d::Document, data::ASCIIString)
createProcessingInstruction(target::ASCIIString, data::ASCIIString)
createAttribute(name::ASCIIString)
createEntityReference(name::ASCIIString)
getElementsByTagname(doc::Document, tagname::ASCIIString)

# Helpers

parse(fname::ASCIIString) 

### NodeList Interface

abstract NodeList
length(n::NodeList)
item(i::Culong) = item(DOMImpl, i)



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


### Attr Interface

abstract Attr

name(node::Attr) = name(domImpl, name)
specified(node::Attr) = specified(domImpl, node)
value(node::Attr) = value(domImpl, node)

### Element Interface #########################################################

abstract Element

tagName(node::Element) = tagName(domImpl, node)
getAttribute(node::Element, name::ASCIIString) = 
  getAttribute(domImpl, node::Element, name::ASCIIString)
setAttribute(node::Element, name::ASCIIString, value::ASCIIString) =
  setAttribute(domImpl, node, name, value)
removeAttribute(node::Element, name::ASCIIString) =
  removeAttribute(domImpl, node, name)
getAttributeNode(node::Element, name::ASCIIString) =
  getAttributeNode(domImpl, node::Element, name::ASCIIString)
setAttributeNode(node::Element, newAttr::Attr) = 
  setAttributeNode(domImpl, node, newAttr)
removeAttributeNode(node::Element, oldAttr) =
  removeAttributeNode(domImpl, node, oldAttr)
getElementsByTagName(node::Element) = getElementsByTagName(domImpl, node)
normalize(node::Element) = normalize(domImpl, node)
"""  

end # xml
