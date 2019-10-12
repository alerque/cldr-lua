-- Internal modules
local CLDR = require("cldr")

describe('cldr', function ()

  it('should be an object', function ()
    assert.is_true(type(CLDR) == "table")
  end)

end)
