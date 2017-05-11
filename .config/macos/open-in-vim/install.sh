#!/bin/bash
set -eu

path="/Applications/open-in-vim.app"

osacompile -o "$path" ./open-in-vim.applescript

identifier="com.apple.open-in-vim"

plutil -insert CFBundleIdentifier -string "$identifier" -- "$path"/Contents/Info.plist

duti -s "$identifier" public.plain-text all
duti -s "$identifier" public.unix-executable all
