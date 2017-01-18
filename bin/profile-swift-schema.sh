#!/bin/bash
xcodebuild -scheme $1 -sdk iphonesimulator clean build OTHER_SWIFT_FLAGS="-Xfrontend -debug-time-function-bodies" | grep --color=never -E "^[0-9]+.[0-9]+ms" | sort -nr | head -n 20
