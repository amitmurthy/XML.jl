#include "libxml/tree.h"
#include "libxml/xmlstring.h"

const void* getNodeName(xmlNode* n) { return n->name; }
const void* getNodeChildrenPtr(xmlNode* n) { return n->children; }
const void* getNodeLast(xmlNode* n) { return n->last; }
const void* getNodeParent(xmlNode* n) { return n->parent; }
const void* getNodeNext(xmlNode* n) { return n->next; }
const void* getNodePrev(xmlNode* n) { return n->prev; }
const void* getNodeDoc(xmlNode* n) { return n->doc; }
const void* getNodeAttrs(xmlNode* n) { return n->properties; }
const size_t getNodeType(xmlNode* n) { return n->type; } 


/*
typedef void (*DFScallback)(xmlNode* out, void* data);

void DFSnode(xmlNode* node, const xmlChar* name, void* data, DFScallback* cb)
{
  next = node;
  while (next != NULL)
  {
    while((down = next->children) != NULL)
      if(down->
  
*/
