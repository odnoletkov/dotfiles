function profile-swift-schema
  xcodebuild -scheme $argv[1] -sdk iphonesimulator clean build OTHER_SWIFT_FLAGS="-Xfrontend -debug-time-function-bodies" | grep -E "^[0-9]+.[0-9]+ms" | sort -nr | head -n 20
end
