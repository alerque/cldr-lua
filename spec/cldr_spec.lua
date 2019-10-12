-- Internal modules
local CLDR = require("cldr")

describe('cldr', function ()

  it('should be an object', function ()
    assert.is_true(type(CLDR) == "table")
  end)

  it('should have a bunch of locales', function ()
    assert.equal(542, #CLDR.locales)
  end)

  it('should have truthy set accessors to locales', function ()
    assert.truthy(CLDR.locales.en)
    assert.truthy(CLDR.locales["en-GB"])
    assert.falsy(CLDR.locales["und"])
  end)

end)
