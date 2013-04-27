#include "libxml/tree.h"
#include "libxml/xmlstring.h"
#include "libxml/list.h"

const void* getNodeName(xmlNode* n) { return n->name; }
const void* getNodeChildrenPtr(xmlNode* n) { return n->children; }
const void* getNodeLast(xmlNode* n) { return n->last; }
const void* getNodeParent(xmlNode* n) { return n->parent; }
const void* getNodeNext(xmlNode* n) { return n->next; }
const void* getNodePrev(xmlNode* n) { return n->prev; }
const void* getNodeDoc(xmlNode* n) { return n->doc; }
const void* getNodeAttrs(xmlNode* n) { return n->properties; }
const size_t getNodeType(xmlNode* n) { return n->type; } 


typedef int (*DFScallback)(void* data, xmlNode* out);

void nodeDFS(xmlNode* root, const xmlChar* name, void* data, DFScallback cb, int findfirst)
{
  xmlNode* next = root;
  while (1)
  {
    if (xmlStrcmp(next->name, name) == 0)
      if (cb(data, next) && findfirst) return;

    if (next->children != NULL) 
      next = next->children;
    else
    {
      while (next->next == NULL)
      {
        if (next == root)
          return;
        next = next->parent;
      }
      next = next->next;
    }
  }
}
