PACKAGE = cldr

SHELL := zsh
.SHELLFLAGS := +o nomatch -e -c

.ONESHELL:
.SECONDEXPANSION:
.SECONDARY:
.PRECIOUS:
.DELETE_ON_ERROR:
.SUFFIXES:

JOBS ?= $(shell nproc 2>- || sysctl -n hw.ncpu 2>- || echo 1)
MAKEFLAGS += -j$(JOBS) -Otarget

VERSION != git describe --tags --all --abbrev=7 | sed 's/-/-r/'
SEMVER != git describe --tags | sed 's/^v//;s/-.*//'
ROCKREV = 0
TAG ?= v$(SEMVER)

LUAROCKS_ARGS ?= --local --tree lua_modules

SCM_ROCK = $(PACKAGE)-dev-0.rockspec
REL_ROCK = rockspecs/$(PACKAGE)-$(SEMVER)-$(ROCKREV).rockspec
SCM_SRC = $(PACKAGE)-dev-0.src.rock
REL_SRC = $(PACKAGE)-$(SEMVER)-$(ROCKREV).src.rock

.PHONY: all
all: $(SCM_ROCK) $(SCM_SRC) data

.PHONY: dist
dist: $(REL_ROCK) $(REL_SRC)

.PHONY: install
install:
	luarocks $(LUAROCKS_ARGS) make $(SCM_ROCK)

define rockpec_template =
	sed -e "s/@SEMVER@/$(SEMVER)/g" \
		-e "s/@ROCKREV@/$(ROCKREV)/g" \
		-e "s/@TAG@/$(TAG)/g" \
		$< > $@
endef

$(SCM_ROCK): SEMVER = dev
$(SCM_ROCK): TAG = master
$(SCM_ROCK): $(PACKAGE).rockspec.in
	$(rockpec_template)
	sed -i \
		-e '/tag = /s/tag/branch/' \
		$@

rockspecs/$(PACKAGE)-%-0.rockspec: SEMVER = $*
rockspecs/$(PACKAGE)-%-0.rockspec: TAG = v$*
rockspecs/$(PACKAGE)-%-0.rockspec: $(PACKAGE).rockspec.in
	$(rockpec_template)
	sed -i \
		-e '/rockspec_format/s/3.0/1.0/' \
		-e '/url = "git/a\   dir = "cldr-lua",' \
		-e '/issues_url/d' \
		-e '/maintainer/d' \
		-e '/labels/d' \
		$@

$(PACKAGE)-dev-0.src.rock: $(SCM_ROCK)
	luarocks $(LUAROCKS_ARGS) pack $<

$(PACKAGE)-%.src.rock: rockspecs/$(PACKAGE)-%.rockspec
	luarocks $(LUAROCKS_ARGS) pack $<

.PHONY: check
check:
	luacheck .

.PHONY: test
test:
	busted

.PHONY: release
release: CHANGELOG.md rockspecs/cldr-$(SEMVER)-$(ROCKREV).rockspec
	git add $^
	git commit -m "chore(release): $(SEMVER)"
	git tag $(TAG)

.PHONY: build_tools
build_tools:
	cd unicode-cldr
	ant -f tools/java/build.xml jar

.PHONY: data
data: cldr/data/locales.lua

cldr/data/locales.lua: node_modules/cldr-localenames-full/main/en/languages.json
	jq '.main.en.localeDisplayNames.languages | keys' $< |
		./json2table.lua /dev/stdin > $@

.PHONY: force
force:;

$(MAKEFILE_LIST):;
