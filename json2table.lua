#!/usr/bin/env lua

local dkjson = require("dkjson")
local serpent = require("serpent")

local function filetostring (fname)
   local f = assert(io.open(fname, "rb"))
   local content = f:read("*all")
   f:close()
   return content
end

local inputfile = arg[1]
local data = dkjson.decode(filetostring(inputfile))

print(serpent.dump(data, { indent = "  " }))
