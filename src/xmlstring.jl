# Julia wrapper for header: /usr/include/libxml2/libxml/xmlstring.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

@c Ptr{:xmlChar} xmlStrdup (Ptr{:xmlChar},) shlib
@c Ptr{:xmlChar} xmlStrndup (Ptr{:xmlChar},:Int32) shlib
@c Ptr{:xmlChar} xmlCharStrndup (Ptr{:Uint8},:Int32) shlib
@c Ptr{:xmlChar} xmlCharStrdup (Ptr{:Uint8},) shlib
@c Ptr{:xmlChar} xmlStrsub (Ptr{:xmlChar},:Int32,:Int32) shlib
@c Ptr{:xmlChar} xmlStrchr (Ptr{:xmlChar},:xmlChar) shlib
@c Ptr{:xmlChar} xmlStrstr (Ptr{:xmlChar},Ptr{:xmlChar}) shlib
@c Ptr{:xmlChar} xmlStrcasestr (Ptr{:xmlChar},Ptr{:xmlChar}) shlib
@c Int32 xmlStrcmp (Ptr{:xmlChar},Ptr{:xmlChar}) shlib
@c Int32 xmlStrncmp (Ptr{:xmlChar},Ptr{:xmlChar},:Int32) shlib
@c Int32 xmlStrcasecmp (Ptr{:xmlChar},Ptr{:xmlChar}) shlib
@c Int32 xmlStrncasecmp (Ptr{:xmlChar},Ptr{:xmlChar},:Int32) shlib
@c Int32 xmlStrEqual (Ptr{:xmlChar},Ptr{:xmlChar}) shlib
@c Int32 xmlStrQEqual (Ptr{:xmlChar},Ptr{:xmlChar},Ptr{:xmlChar}) shlib
@c Int32 xmlStrlen (Ptr{:xmlChar},) shlib
@c Ptr{:xmlChar} xmlStrcat (Ptr{:xmlChar},Ptr{:xmlChar}) shlib
@c Ptr{:xmlChar} xmlStrncat (Ptr{:xmlChar},Ptr{:xmlChar},:Int32) shlib
@c Ptr{:xmlChar} xmlStrncatNew (Ptr{:xmlChar},Ptr{:xmlChar},:Int32) shlib
@c Int32 xmlStrPrintf (Ptr{:xmlChar},:Int32,Ptr{:xmlChar}) shlib
@c Int32 xmlStrVPrintf (Ptr{:xmlChar},:Int32,Ptr{:xmlChar},Ptr{:__va_list_tag}) shlib
@c Int32 xmlGetUTF8Char (Ptr{:Uint8},Ptr{:Int32}) shlib
@c Int32 xmlCheckUTF8 (Ptr{:Uint8},) shlib
@c Int32 xmlUTF8Strsize (Ptr{:xmlChar},:Int32) shlib
@c Ptr{:xmlChar} xmlUTF8Strndup (Ptr{:xmlChar},:Int32) shlib
@c Ptr{:xmlChar} xmlUTF8Strpos (Ptr{:xmlChar},:Int32) shlib
@c Int32 xmlUTF8Strloc (Ptr{:xmlChar},Ptr{:xmlChar}) shlib
@c Ptr{:xmlChar} xmlUTF8Strsub (Ptr{:xmlChar},:Int32,:Int32) shlib
@c Int32 xmlUTF8Strlen (Ptr{:xmlChar},) shlib
@c Int32 xmlUTF8Size (Ptr{:xmlChar},) shlib
@c Int32 xmlUTF8Charcmp (Ptr{:xmlChar},Ptr{:xmlChar}) shlib

