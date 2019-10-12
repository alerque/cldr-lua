package = "cldr"
version = "scm-0"

source = {
   url = "git://github.com/alerque/cldr-lua",
}

description = {
   summary = "Unicode CLDR data and Lua interface.",
   detailed = [[Collection of useful bits of the *Unicode Common Locale Data Repository* wrapped in a Lua interface.]],
   homepage = "https://github.com/alerque/cldr-lua",
   license = "MIT/ICU"
}

dependencies = {
   "lua",
   "luaepnf",
   "penlight"
}

build = {
   type = "builtin",
   modules = {
      ["cldr.init"] = "cldr/init.lua"
   }
}
