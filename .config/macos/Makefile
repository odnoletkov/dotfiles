all: NSGlobalDomain com.apple.AppleMultitouchTrackpad com.apple.Safari com.apple.Terminal com.apple.dock com.apple.finder com.apple.iChat com.apple.menuextra.clock com.apple.messageshelper.MessageController com.apple.touchbar.agent com.apple.dt.Xcode

W=defaults write $@

NSGlobalDomain:
	$W AppleShowAllExtensions -bool true
	$W InitialKeyRepeat -int 25
	$W KeyRepeat -int 2
	$W NSAutomaticCapitalizationEnabled -bool false
	$W NSAutomaticDashSubstitutionEnabled -bool false
	$W NSAutomaticPeriodSubstitutionEnabled -bool false
	$W NSAutomaticQuoteSubstitutionEnabled -bool false
	$W NSAutomaticSpellingCorrectionEnabled -bool false
	$W NSNavPanelExpandedStateForSaveMode -bool true
	$W NSTableViewDefaultSizeMode -int 2
	$W PMPrintingExpandedStateForPrint -bool true
	$W com.apple.mouse.tapBehavior -int 1
	$W com.apple.sound.beep.feedback -bool false
	$W com.apple.sound.beep.volume -float 0
	$W com.apple.sound.uiaudio.enabled -bool false
	$W com.apple.trackpad.scaling -float 0.875

com.apple.AppleMultitouchTrackpad:
	$W Clicking -bool true
	$W TrackpadThreeFingerDrag -bool true

com.apple.Safari:
	$W ShowFullURLInSmartSearchField -bool true
	$W ShowStatusBar -bool true
	$W ShowStatusBarInFullScreen -bool true

com.apple.Terminal:
	$W AutoMarkPromptLines -bool false

com.apple.dock:
	$W autohide -bool true
	$W autohide-delay -float 0.0
	$W autohide-time-modifier -float 0.0
	$W magnification -bool false
	$W minimize-to-application -bool true
	$W mru-spaces -bool false
	$W orientation -string "left"
	$W show-process-indicators -bool true
	$W show-recents -bool false
	$W tilesize -int 128

com.apple.finder:
	$W DisableAllAnimations -bool true
	$W FXEnableExtensionChangeWarning -bool false
	$W FXEnableRemoveFromICloudDriveWarning -bool false
	$W NewWindowTarget -string PfLo
	$W NewWindowTargetPath -string "file://$HOME/"
	$W QLEnableTextSelection -bool true
	$W _FXShowPosixPathInTitle -bool true
	$W _FXSortFoldersFirst -bool true

com.apple.iChat:
	$W TextSize -int 7

com.apple.menuextra.clock:
	$W DateFormat "EEE d MMM  HH:mm:ss"

com.apple.messageshelper.MessageController:
	$W SOInputLineSettings -dict-add automaticEmojiSubstitutionEnablediMessage -bool false
	$W SOInputLineSettings -dict-add automaticQuoteSubstitutionEnabled -bool false

com.apple.touchbar.agent:
	$W PresentationModeGlobal functionKeys

com.apple.dt.Xcode:
	$W DVTTextEditorTrimTrailingWhitespace -bool true
	$W DVTTextEditorTrimWhitespaceOnlyLines -bool true
	$W DVTTextEditorWrapsLines -bool false
	$W DVTTextPageGuideLocation -int 100
	$W DVTTextShowLineNumbers -bool false
	$W DVTTextShowPageGuide -bool true
	$W IDEIndexerActivityShowNumericProgress -bool true
	$W IDEKeyBindingCurrentPreferenceSet -string max.idekeybindings
	$W ShowBuildOperationDuration -bool true
