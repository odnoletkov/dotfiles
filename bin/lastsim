#!/bin/sh

device_file=$(find ~/Library/Developer/CoreSimulator/Devices/*/data/var/run/launchd_bootstrap.plist -print0 | xargs -0 stat -f "%m %N" | sort -rn | head -n 1 | cut -d " " -f 2-)
device=${device_file%/*/*/*}
#echo $device

app_caches=$(find ${device}/Containers/Data/Application/*/Library/Caches -d 0 -print0 | xargs -0 stat -f "%m %N" | sort -rn | head -n 1 | cut -d " " -f 2-)
#echo $app_caches

app=${app_caches%/*/*}
echo $app

