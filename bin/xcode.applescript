#!/usr/bin/osascript
on run argv
  set projectDirectory to do shell script "pwd"
  set action to item 1 of argv
  tell application id "com.apple.dt.Xcode"
    open projectDirectory
    repeat with workspaceDocument in workspace documents
      set AppleScript's text item delimiters to "/"
      set workspaceDirectory to text 1 thru text item -2 of (path of workspaceDocument as text)
      if workspaceDirectory = projectDirectory then
        repeat while not loaded of workspaceDocument
          delay 1.0
        end repeat
        if action = "select-scheme" then
          set targetSchemeName to item 2 of argv
          set schemeToUse to scheme targetSchemeName of workspaceDocument
          set active scheme of workspaceDocument to schemeToUse
	else if action = "close" then
          close workspaceDocument
          exit repeat
        else if action = "clean" then
          set actionResult to clean workspaceDocument
          repeat while not completed of actionResult
            delay 1.0
          end repeat
        else if action = "build" then
          set actionResult to build workspaceDocument
          repeat while not completed of actionResult
            delay 1.0
          end repeat
        else
          error "Invalid action" number 1
        end if
      end if
    end repeat
  end tell
end run
