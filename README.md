# CLDR Lua

[![Luacheck](https://github.com/alerque/cldr/workflows/Luacheck/badge.svg)](https://github.com/alerque/cldr/actions)
[![Busted](https://github.com/alerque/cldr/workflows/Busted/badge.svg)](https://github.com/alerque/cldr/actions)
[![Coverage Status](https://coveralls.io/repos/github/alerque/cldr/badge.svg?branch=master)](https://coveralls.io/github/alerque/cldr?branch=master)
[![GitHub tag (latest SemVer)](https://img.shields.io/github/v/tag/alerque/cldr)](https://github.com/alerque/cldr/releases)
[![LuaRocks](https://img.shields.io/luarocks/v/alerque/cldr)](https://luarocks.org/modules/alerque/cldr)

Unicode CLDR (Common Locale Data Repository) data and Lua interface.

## What is CLDR?

From the [CLDR][cldr] website:

> The Unicode CLDR provides key building blocks for software to support the world's languages, with the largest and most extensive standard repository of locale data available.

## What does this data set include?

For now, data and interfaces will be added on an as-needed basis. Here is a basic rundown of the data available upstream vs. what this library currently provides.

All included data is based on CLDL [v36.0][v36].

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

* [ ] locales
* [ ] languages
* [ ] scripts
* [ ] regions
* [ ] extensions
* [ ] …

## Other Formats

The CLDR data is [provided upstream][cldr-gh] in LDML format (XML based). A [JSON dump][cldr-json] is also available.

## License

The Lua interfaces and code in this project are licensed under the MIT license.

All data provided by the [Unicode Consortium][uc] is licensed under the [Unicode License][ul] (also referred to as the [ICU License][icul]).

 [cldr]: http://cldr.unicode.org/
 [cldr-gh]: https://github.com/unicode-org/cldr
 [icul]: https://github.com/unicode-org/cldr/blob/master/ICU-LICENSE
 [uc]: https://unicode.org/main.html
 [ul]: https://www.unicode.org/copyright.html
 [v36]: http://cldr.unicode.org/index/downloads/cldr-36
