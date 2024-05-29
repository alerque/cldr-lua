std = "min"
include_files = {
   "cldr/*.lua",
   "cldr/data/*.lua",
   "spec/*.lua",
   "*.rockspec",
   ".busted",
   ".luacov",
   ".luacheckrc",
}
files["spec"] = {
   std = "+busted",
}
max_line_length = false
