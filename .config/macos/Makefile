Terminal.app:
	/usr/libexec/PlistBuddy ~/Library/Preferences/com.apple.Terminal.plist \
		-c 'Add :"Window Settings":current dict' \
		-c 'Merge '$(HOME)/.config/Terminal.app/current.terminal' :"Window Settings":current' \
		-c 'Set :"Default Window Settings" current' \
		-c 'Set :"Startup Window Settings" current'

defaults:
	defaults write NSGlobalDomain AppleShowAllExtensions -bool true
	defaults write NSGlobalDomain InitialKeyRepeat -int 25
	defaults write NSGlobalDomain KeyRepeat -int 2
	defaults write NSGlobalDomain NSAutomaticCapitalizationEnabled -bool false
	defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false
	defaults write NSGlobalDomain NSAutomaticPeriodSubstitutionEnabled -bool false
	defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false
	defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false
	defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
	defaults write NSGlobalDomain NSTableViewDefaultSizeMode -int 2
	defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true
	defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
	defaults write NSGlobalDomain com.apple.sound.beep.feedback -bool false
	defaults write NSGlobalDomain com.apple.sound.beep.volume -float 0
	defaults write NSGlobalDomain com.apple.sound.uiaudio.enabled -bool false
	defaults write NSGlobalDomain com.apple.trackpad.scaling -float 0.875
	defaults write com.apple.AppleMultitouchTrackpad.plist Clicking -bool true
	defaults write com.apple.AppleMultitouchTrackpad.plist TrackpadThreeFingerDrag -bool true
	defaults write com.apple.Safari ShowFullURLInSmartSearchField -bool true
	defaults write com.apple.Safari ShowStatusBar -bool true
	defaults write com.apple.Safari ShowStatusBarInFullScreen -bool true
	defaults write com.apple.Terminal AutoMarkPromptLines -bool false
	defaults write com.apple.dock autohide -bool true
	defaults write com.apple.dock autohide-delay -float 0.0
	defaults write com.apple.dock autohide-time-modifier -float 0.0
	defaults write com.apple.dock magnification -bool false
	defaults write com.apple.dock mru-spaces -bool false
	defaults write com.apple.dock orientation -string "left"
	defaults write com.apple.dock show-process-indicators -bool true
	defaults write com.apple.dock tilesize -int 128
	defaults write com.apple.dt.Xcode ApplePersistenceIgnoreState -bool YES
	defaults write com.apple.dt.Xcode DVTTextEditorTrimTrailingWhitespace -bool true
	defaults write com.apple.dt.Xcode DVTTextEditorTrimWhitespaceOnlyLines -bool true
	defaults write com.apple.dt.Xcode DVTTextEditorWrapsLines -bool false
	defaults write com.apple.dt.Xcode DVTTextPageGuideLocation -int 100
	defaults write com.apple.dt.Xcode DVTTextShowLineNumbers -bool false
	defaults write com.apple.dt.Xcode DVTTextShowPageGuide -bool true
	defaults write com.apple.dt.Xcode IDEDisableStateRestoration -bool true
	defaults write com.apple.dt.Xcode IDEIndexerActivityShowNumericProgress -bool true
	defaults write com.apple.dt.Xcode IDEKeyBindingCurrentPreferenceSet -string max.idekeybindings
	defaults write com.apple.dt.Xcode ShowBuildOperationDuration -bool true
	defaults write com.apple.dt.Xcode XCFontAndColorCurrentTheme -string current.xccolortheme
	defaults write com.apple.finder DisableAllAnimations -bool true
	defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false
	defaults write com.apple.finder FXEnableRemoveFromICloudDriveWarning -bool false
	defaults write com.apple.finder NewWindowTarget -string PfLo
	defaults write com.apple.finder NewWindowTargetPath -string "file://$HOME/"
	defaults write com.apple.finder QLEnableTextSelection -bool true
	defaults write com.apple.finder _FXShowPosixPathInTitle -bool true
	defaults write com.apple.iChat TextSize -int 7
	defaults write com.apple.menuextra.clock DateFormat "EEE d MMM  HH:mm:ss"
	defaults write com.apple.messageshelper.MessageController SOInputLineSettings -dict-add automaticEmojiSubstitutionEnablediMessage -bool false
	defaults write com.apple.messageshelper.MessageController SOInputLineSettings -dict-add automaticQuoteSubstitutionEnabled -bool false
	defaults write com.apple.touchbar.agent PresentationModeGlobal functionKeys
