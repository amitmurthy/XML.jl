module libXML2

shlib = :libxml2

include("libXML2_h.jl")

include("tree.jl")
include("dict.jl")
include("SAX2.jl") 
include("parser.jl") 

end
