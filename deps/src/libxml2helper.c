#include "libxml/tree.h"

const void* getNodeName(xmlNode* n) { return n->name; }
const void* getNodeChildren(xmlNode* n) { return n->children; }
const void* getNodeLast(xmlNode* n) { return n->last; }
const void* getNodeParent(xmlNode* n) { return n->parent; }
const void* getNodeNext(xmlNode* n) { return n->next; }
const void* getNodePrev(xmlNode* n) { return n->prev; }
const void* getNodeDoc(xmlNode* n) { return n->doc; }
