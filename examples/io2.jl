module io2

include("../src/libXML2.jl")

# n = xmlNodePtr
# doc = xmlDocPtr
xmlbuff = Ptr{xmlChar}
buffersize = Int32

doc = xmlNewDoc("1.0")
n = xmlNewNode(C_NULL, "root")
xmlNodeSetContent(n, "content")
xmlDocSetRootElement(doc,n)

xmlDocDumpFormatMemory(doc, xmlbuff, buffersize, 1)

end # module io2


