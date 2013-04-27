# Julia wrapper for header: /usr/include/libxml2/libxml/xmlstring.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

@c Ptr{xmlChar} xmlStrdup (Ptr{xmlChar},) libxml2
@c Ptr{xmlChar} xmlStrndup (Ptr{xmlChar}, Int32) libxml2
@c Ptr{xmlChar} xmlCharStrndup (Ptr{Uint8}, Int32) libxml2
@c Ptr{xmlChar} xmlCharStrdup (Ptr{Uint8},) libxml2
@c Ptr{xmlChar} xmlStrsub (Ptr{xmlChar}, Int32, Int32) libxml2
@c Ptr{xmlChar} xmlStrchr (Ptr{xmlChar}, xmlChar) libxml2
@c Ptr{xmlChar} xmlStrstr (Ptr{xmlChar}, Ptr{xmlChar}) libxml2
@c Ptr{xmlChar} xmlStrcasestr (Ptr{xmlChar}, Ptr{xmlChar}) libxml2
@c Int32 xmlStrcmp (Ptr{xmlChar}, Ptr{xmlChar}) libxml2
@c Int32 xmlStrncmp (Ptr{xmlChar}, Ptr{xmlChar}, Int32) libxml2
@c Int32 xmlStrcasecmp (Ptr{xmlChar}, Ptr{xmlChar}) libxml2
@c Int32 xmlStrncasecmp (Ptr{xmlChar}, Ptr{xmlChar}, Int32) libxml2
@c Int32 xmlStrEqual (Ptr{xmlChar}, Ptr{xmlChar}) libxml2
@c Int32 xmlStrQEqual (Ptr{xmlChar}, Ptr{xmlChar}, Ptr{xmlChar}) libxml2
@c Int32 xmlStrlen (Ptr{xmlChar},) libxml2
@c Ptr{xmlChar} xmlStrcat (Ptr{xmlChar}, Ptr{xmlChar}) libxml2
@c Ptr{xmlChar} xmlStrncat (Ptr{xmlChar}, Ptr{xmlChar}, Int32) libxml2
@c Ptr{xmlChar} xmlStrncatNew (Ptr{xmlChar}, Ptr{xmlChar}, Int32) libxml2
@c Int32 xmlStrPrintf (Ptr{xmlChar}, Int32, Ptr{xmlChar}) libxml2
@c Int32 xmlStrVPrintf (Ptr{xmlChar}, Int32, Ptr{xmlChar}, Ptr{__va_list_tag}) libxml2
@c Int32 xmlGetUTF8Char (Ptr{Uint8}, Ptr{Int32}) libxml2
@c Int32 xmlCheckUTF8 (Ptr{Uint8},) libxml2
@c Int32 xmlUTF8Strsize (Ptr{xmlChar}, Int32) libxml2
@c Ptr{xmlChar} xmlUTF8Strndup (Ptr{xmlChar}, Int32) libxml2
@c Ptr{xmlChar} xmlUTF8Strpos (Ptr{xmlChar}, Int32) libxml2
@c Int32 xmlUTF8Strloc (Ptr{xmlChar}, Ptr{xmlChar}) libxml2
@c Ptr{xmlChar} xmlUTF8Strsub (Ptr{xmlChar}, Int32, Int32) libxml2
@c Int32 xmlUTF8Strlen (Ptr{xmlChar},) libxml2
@c Int32 xmlUTF8Size (Ptr{xmlChar},) libxml2
@c Int32 xmlUTF8Charcmp (Ptr{xmlChar}, Ptr{xmlChar}) libxml2

