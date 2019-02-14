dotfiles: .git

.git:
	git init
	git config status.showUntrackedFiles no
	git remote add origin https://github.com/odnoletkov/dotfiles
	git fetch
	git checkout master
	git submodule update --init

brew-upgrade:
	brew update >/dev/null
	brew upgrade

submodule-update:
	git submodule update --remote
	vim -u NONE -c "helptags ALL" -c q

submodule-review:
	git submodule foreach 'tig --reverse $$sha1.. || :'

submodule-ignore:
	git submodule foreach 'git config --file ~/.gitmodules submodule.$$path.ignore all'

message=Update submodules
submodule-bubble:
	git -c sequence.editor='printf "/ $(message)$$/m$$\nwq\n" | ed $$1' rebase --interactive --autostash $$(git rev-list --grep="^$(message)$$" -1 @)~
