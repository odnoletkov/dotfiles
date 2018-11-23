THEME=current
install:
	/usr/libexec/PlistBuddy ~/Library/Preferences/com.apple.Terminal.plist \
		-c 'Add :"Window Settings":$(THEME) dict' \
		-c 'Merge '$(THEME).terminal' :"Window Settings":$(THEME)' \
		-c 'Set :"Default Window Settings" $(THEME)' \
		-c 'Set :"Startup Window Settings" $(THEME)'

