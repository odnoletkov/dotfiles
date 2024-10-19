#!/usr/bin/osascript
on findWorkspaceDocument(workspacePath)
	tell application id "com.apple.dt.Xcode"
		repeat with workspaceDocument in workspace documents
			if path of workspaceDocument is missing value then exit repeat
			set AppleScript's text item delimiters to "/"
			set workspaceDirectory to text 1 thru text item -2 of (path of workspaceDocument as text)
			if workspaceDirectory = workspacePath then return workspaceDocument
		end repeat
		return missing value
	end tell
end findWorkspaceDocument

on run argv
	set projectDirectory to do shell script "pwd"
	set action to item 1 of argv

	--set projectDirectory to "/Users/max/projects/ExplorePHPicker"
	--set action to "build"

	tell application id "com.apple.dt.Xcode"
		
		if action = "close" then
			set workspaceDocument to my findWorkspaceDocument(projectDirectory)
			if workspaceDocument is not missing value then close workspaceDocument
			return
		end if
		
		open projectDirectory
		set workspaceDocument to my findWorkspaceDocument(projectDirectory)
		if workspaceDocument is missing value then error "Workspace not found" number 2
		repeat while not loaded of workspaceDocument
			delay 1
		end repeat
		
		if action = "clean" then
			set actionResult to clean workspaceDocument
			repeat while not completed of actionResult
				delay 1
			end repeat
		else if action = "build" then
			set actionResult to build workspaceDocument
			repeat while not completed of actionResult
				delay 1
			end repeat
		else if action = "select-scheme" then
			set active scheme of workspaceDocument to scheme (item 2 of argv) of workspaceDocument
		else
			error "Invalid action" number 1
		end if
	end tell
end run
