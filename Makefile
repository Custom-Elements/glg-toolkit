.PHONY: build test polymer

build: polymer
	polymer-build src/ build/

test: polymer
	polymer-build watch . src/ build/

polymer:
	[ -d build ] || mkdir build
	cp node_modules/ui-toolkit/build/layout.* build/
	cp node_modules/ui-toolkit/build/polymer.* build/
	cp node_modules/ui-toolkit/build/platform.* build/
