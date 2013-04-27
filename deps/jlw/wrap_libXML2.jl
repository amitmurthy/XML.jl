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
xml2_headers =  map(x->joinpath(xml2_hpath, x),split(readall(`ls $xml2_hpath` | `sort`)) ) #[end-8:end]

# called to determine if header should be wrapped
function check_use_header(hpath_top, hpath)
  hbase = xml2_bpath
  hl=length(hbase)
  #!ccall(:strcmp, Bool, (Ptr{Uint8}, Ptr{Uint8}), hbase, hpath)
  return (hpath_top == hpath)
end

# called to get shared library for header (as symbol)
function get_header_library(hpath)
  return :libxml2
end

# called to get output file for header
function get_header_outfile(hpath)
  base_file = splitext(splitdir(hpath)[end])[1]
  return "$base_file.jl"
end

println(xml2_headers)

out_path = pwd()
cmn_file = "libXML2_h.jl"
context = wrap_c.WrapContext(out_path, cmn_file, clang_includes, ASCIIString[], check_use_header, get_header_library, get_header_outfile)
wrap_c.wrap_c_headers(context, xml2_headers)
