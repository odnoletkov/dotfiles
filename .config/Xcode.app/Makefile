XCODE_DIR = /Applications/Xcode.app
KEYBINDINGS_FILE = $(XCODE_DIR)/Contents/Frameworks/IDEKit.framework/Resources/IDETextKeyBindingSet.plist
BACKUP_FILE = $(KEYBINDINGS_FILE).original

install: backup
	/usr/libexec/PlistBuddy -c 'Merge InsertionsAndIndentations.plist "Insertions and Indentations"' $(KEYBINDINGS_FILE)

$(BACKUP_FILE):
	cp $(KEYBINDINGS_FILE) $(BACKUP_FILE)

backup: $(BACKUP_FILE)

uninstall:
	mv $(BACKUP_FILE) $(KEYBINDINGS_FILE)

diff:
	diff $(KEYBINDINGS_FILE) $(BACKUP_FILE) || :

.PHONY: install backup uninstall diff
