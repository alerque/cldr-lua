-- Internal modules
local CLDR = require("cldr")

describe('cldr', function ()

  it('should be an object', function ()
    assert.is_true(type(CLDR) == "table")
  end)

  it('should have a bunch of locales', function ()
    assert.equal(542, #CLDR.locales)
  end)

end)
