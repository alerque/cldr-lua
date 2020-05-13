rockspec_format = "3.0"
package = "cldr"
version = "scm-0"

source = {
   url = "git://github.com/alerque/cldr-lua.git",
   tag = "master"
}

description = {
   summary = "Unicode CLDR data and Lua interface",
   detailed = [[
     Unicode CLDR (Common Locale Data Repository) data and Lua interface.
   ]],
   license = "MIT/ICU",
   homepage = "https://github.com/alerque/cldr-lua",
   issues_url = "https://github.com/alerque/cldr-lua/issues",
   maintainer = "Caleb Maclennan <caleb@alerque.com>",
   labels = { "i18n", "unicode" }
}

dependencies = {
   "lua",
   "penlight"
}

build = {
   type = "builtin",
   modules = {
      ["cldr.init"] = "cldr/init.lua",
      ["cldr.data.locales"] = "cldr/data/locales.lua",
   }
}
