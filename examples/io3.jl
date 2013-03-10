module io3

# Ported from:
# http://xmlsoft.org/examples/parse3.c
#
# Output is not expected when successful.

include("../src/libXML2.jl")

function example3Func(content, len)
  doc = xmlReadMemory(content, len, "noname.xml", C_NULL, int32(0))
  if (doc == C_NULL)
    error("Failed to parse document")
  end
  xmlFreeDoc(doc)
end

const document = "<doc/>"

example3Func(convert(Ptr{Uint8}, document), 6)
xmlCleanupParser()
xmlMemoryDump()

end # module io3
