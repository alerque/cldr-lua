local CLDR = {}

setmetatable(CLDR, {
    __index = function (self, key)
      self[key] = require("cldr.data." .. key)
      return self[key]
    end
  })

return CLDR
