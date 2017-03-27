#!/bin/sh

for file in /Applications/Xcode.app/Contents/Developer/Platforms/*.platform/Info.plist
do
  sudo plutil -convert xml1 $file
done

for file in /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/Library/Xcode/Specifications/*.xcspec
do
    sudo plutil -convert binary1 "$file"
done
