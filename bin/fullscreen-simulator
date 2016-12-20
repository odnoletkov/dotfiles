#!/usr/bin/env bash

lldb -n Simulator \
-o "expr ((NSWindow *)[(NSArray *)[[NSApplication sharedApplication] windows] setValue:@(1<<7|1<<8|1<<11) forKey:@\"collectionBehavior\"]);" \
-o "set set auto-confirm true" \
-o quit
