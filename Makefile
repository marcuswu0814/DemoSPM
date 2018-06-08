PREFIX?=/usr/local

PROD_NAME=DemoSPM
PROD_NAME_UNDERLINE=DemoSPM

build:
	swift build --disable-sandbox -c release -Xswiftc -static-stdlib

build-for-linux:
	swift build --disable-sandbox -c release

run:
	.build/release/$(PROD_NAME)

test: xcode
	set -o pipefail && xcodebuild -scheme DemoSPM-Package -enableCodeCoverage YES clean build test | xcpretty

lint:
	swiftlint

update:
	swift package update

clean:
	swift package clean

xcode:
	swift package generate-xcodeproj

install: build
	mkdir -p "$(PREFIX)/bin"
	cp -f ".build/release/$(PROD_NAME)" "$(PREFIX)/bin/$(PROD_NAME_UNDERLINE)"
