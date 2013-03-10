module parse2
include("../src/libXML2.jl")

# Ported from:
# http://xmlsoft.org/examples/parse2.c
#
# Use the following file as test2.xml:
#  
#   <doc>
#   <src ref="foo"/>
#   <dest id="foo"/>
#   <src ref="foo"/>
#   </doc>
#
# Strictness is controlled by 4th arg to xmlCtxtReadFile
#
# With XML_PARSE_DTDVALID, output expected:
#
#   test2.xml:1: validity error : Validation failed: no DTD found !
#    <doc>
#        ^
#
# With XML_PARSE_DTDLOAD there should be no output (success).

test_opt = XML_PARSE_DTDVALID

function exampleFunc(filename::ASCIIString)
  ctxt = xmlNewParserCtxt();
  if (ctxt == C_NULL)
    error("Failed to allocate parser context")
  end

  doc = xmlCtxtReadFile(ctxt, filename, C_NULL, test_opt)
  if(doc == C_NULL)
    error("Failed to parse: $filename")
  else
    # ctxt->valid
    # bah. need to finish struct reflection
  end
  xmlFreeDoc(doc)
  xmlFreeParserCtxt(ctxt)
end

filename = "test2.xml"
exampleFunc(filename)

xmlCleanupParser()
xmlMemoryDump()

end # module parse2
