.PHONY: build test

POLYMER_BUILD="./node_modules/.bin/polymer-build"
BOWER="./node_modules/.bin/bower"

build:
	${POLYMER_BUILD} --exclude-polymer --compress src/ build/ glg-toolkit.html

test:
	${POLYMER_BUILD} watch . src/ build/
