module io2

# Ported from:
# http://xmlsoft.org/examples/io2.c
#
# Expected output:
#   size: 43 doc:
#   <?xml version="1.0"?>
#   <root>content</root>

require("../src/libXML2.jl")

import libXML2.xmlNewDoc
import libXML2.xmlNodeSetContent
import libXML2.xmlDocSetRootElement
import libXML2.xmlDocDumpFormatMemory
import libXML2.xmlNewNode


doc = xmlNewDoc("1.0")
n = xmlNewNode(C_NULL, "root")
xmlNodeSetContent(n, "content")
xmlDocSetRootElement(doc,n)

# gymnastics for out args:
xmlbuff = convert(Ptr{Ptr{Uint8}},[""])
buffersize = convert(Ptr{Int32}, Int32[0])

xmlDocDumpFormatMemory(doc, xmlbuff, buffersize, 1)

@printf("size: %d doc:\n%s", unsafe_ref(buffersize), bytestring(unsafe_ref(xmlbuff)) )

end # module io2
