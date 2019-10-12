SHELL := zsh
.SHELLFLAGS := +o nomatch -e -c

.ONESHELL:
.SECONDEXPANSION:
.SECONDARY:
.PRECIOUS:
.DELETE_ON_ERROR:
.SUFFIXES:

.PHONY: default
default: data

.PHONY: build_tools
build_tools:
	cd unicode-cldr
	ant -f tools/java/build.xml jar

.PHONY: data
data: cldr/data/locales.lua

cldr/data/locales.lua: node_modules/cldr-core/availableLocales.json
	./json2table.lua $< availableLocales full > $@

.PHONY: force
force:;

$(MAKEFILE_LIST):;
