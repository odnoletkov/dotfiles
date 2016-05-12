#!/bin/sh

for file in /Applications/Xcode.app/Contents/Developer/Platforms/*.platform/Info.plist
do
  sudo plutil -convert xml1 $file
done
