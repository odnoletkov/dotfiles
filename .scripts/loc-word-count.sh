#!/bin/bash

for file in VKClient/??.lproj/Localizable.strings
do
    echo -n ${file:9:2}
    cat $file | sed -e 's/^".*" = "\(.*\)";$/\1/' -e 'tx' -e 'd' -e ':x' | tr -s "\\\n" "\n" | tr -s " " "\n" | wc -l
done
