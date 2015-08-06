#!/bin/bash

duplicates='
/^--|==/ {
delete devices;
next;
}
{
if ($1 in devices) {
print $2
} else {
devices[$1]=$2
}
}
'

xcrun simctl list devices \
| sed -E 's/\)? \(/|/g' \
| sed 's/^ *//' \
| awk -F '|' "$duplicates" \
| xargs -n 1 -I {} bash -c 'xcrun simctl delete {} && echo deleted {}'