#!/usr/bin/osascript

on run {input, parameters}
	set the_path to POSIX path of input
	set cmd to "vim " & quoted form of the_path
	tell application "Terminal"
		activate
		tell application "System Events" to keystroke "t" using command down
		do script cmd in window 1
	end tell
end run
