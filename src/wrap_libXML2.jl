using Clang.wrap_c

if (!has(ENV, "JULIAHOME"))
  error("Please set JULIAHOME variable to the root of your julia install")
end

clang_includes = map(x->joinpath(ENV["JULIAHOME"], x), [
  "deps/llvm-3.2/build/Release/lib/clang/3.2/include",
  "deps/llvm-3.2/include",
  "deps/llvm-3.2/include",
  "deps/llvm-3.2/build/include/",
  "deps/llvm-3.2/include/"
  ])

xml2_bpath = "/usr/include/libxml2/"
push!(clang_includes, xml2_bpath)
xml2_hpath = joinpath(xml2_bpath, "libxml")
xml2_headers =  map(x->joinpath(xml2_hpath, x),split(readall(`ls $xml2_hpath` | `sort`)) )

# called to determine if cursor should be included
check_use_header(hpath) = begin
  hbase = xml2_bpath
  hl=length(hbase)
  !ccall(:strcmp, Bool, (Ptr{Uint8}, Ptr{Uint8}), hbase, hpath)
end

println(xml2_headers)
wrap_c.wrap_c_headers(xml2_headers, clang_includes, ASCIIString[], check_use_header, "libXML2.jl")
