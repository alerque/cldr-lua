# CLDR Lua

[![Luacheck](https://github.com/alerque/cldr-lua/workflows/Luacheck/badge.svg)](https://github.com/alerque/cldr-lua/actions)
[![Busted](https://github.com/alerque/cldr-lua/workflows/Busted/badge.svg)](https://github.com/alerque/cldr-lua/actions)
[![Coverage Status](https://coveralls.io/repos/github/alerque/cldr-lua/badge.svg?branch=master)](https://coveralls.io/github/alerque/cldr-lua?branch=master)
[![GitHub tag (latest SemVer)](https://img.shields.io/github/v/tag/alerque/cldr-lua)](https://github.com/alerque/cldr-lua/releases)
[![LuaRocks](https://img.shields.io/luarocks/v/alerque/cldr)](https://luarocks.org/modules/alerque/cldr)

Unicode CLDR (Common Locale Data Repository) data and Lua interface.

## What is CLDR?

From the [CLDR][cldr] website:

> The Unicode CLDR provides key building blocks for software to support the world's languages, with the largest and most extensive standard repository of locale data available.

## What does this data set include?

For now, data and interfaces will be added on an as-needed basis. Here is a basic rundown of the data available upstream vs. what this library currently provides.

All included data is based on Unicode's [CLDR 42][cldr-notes] data set.

### Locale-specific patterns for formatting and parsing:

* [ ] dates
* [ ] times
* [ ] timezones
* [ ] numbers and currency values
* [ ] measurement units
* [ ] …

### Translations of names:

* [ ] languages
* [ ] scripts
* [ ] countries and regions
* [ ] currencies
* [ ] eras
* [ ] months
* [ ] weekdays
* [ ] day periods
* [ ] time zones
* [ ] cities
* [ ] and time units
* [ ] emoji characters and sequences (and search keywords)
* [ ] …

### Language & script information:

* [ ] characters used
* [ ] plural cases
* [ ] gender of lists
* [ ] capitalization
* [ ] rules for sorting & searching
* [ ] writing direction
* [ ] transliteration rules
* [ ] rules for spelling out numbers
* [ ] rules for segmenting text into graphemes, words, and sentences
* [ ] keyboard layouts
* [ ] …

### Country information:

* [ ] language usage
* [ ] currency information
* [ ] calendar preference
* [ ] week conventions
* [ ] …

### Validity:

Definitions, aliases, and validity information for Unicode

* [x] locales
* [ ] languages
* [ ] scripts
* [ ] regions
* [ ] extensions
* [ ] …

## Usage

```lua
local CLDR = require("cldr")

-- Table (pl.Set) of all available locales
CLDR.locales
```
## Changelog

Please see [CHANGELOG.md](./CHANGELOG.md).

## Other Formats

The CLDR data is [provided upstream][cldr-gh] in LDML format (XML based). A [JSON dump][cldr-json] is also available.

## License

The Lua interfaces and code in this project are licensed under the MIT license.

All CLDR data provided by the [Unicode Consortium][uc] is governed by the [Unicode Terms of Use][utou].

 [cldr-gh]: https://github.com/unicode-org/cldr
 [cldr-json]: https://github.com/unicode-cldr/cldr-json
 [cldr]: http://cldr.unicode.org
 [uc]: https://unicode.org/main.html
 [utou]: https://www.unicode.org/copyright.html
 [cldr-notes]: http://cldr.unicode.org/index/downloads/cldr-42
