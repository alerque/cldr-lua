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
local input = dkjson.decode(filetostring(inputfile))

local i = 2
while i <= #arg do
  input = input[arg[i]]
  i = i + 1
end

print(serpent.dump(input, { indent = "  "}))
