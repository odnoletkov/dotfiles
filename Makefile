all: .git sync

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
	git submodule foreach 'tig --reverse $$sha1.. || :' 2>/dev/null

submodule-ignore:
	git submodule foreach 'git config --file ~/.gitmodules submodule.$$path.ignore all'

message=Update submodules
submodule-bubble:
	git -c sequence.editor='printf "/ $(message)$$/m$$\nwq\n" | ed' rebase --interactive --autostash $$(git rev-list --grep="^$(message)$$" -1 @)~

submodule-commit:
	git submodule status \
		| sed -En 's/\+.{40} (.*) \(.*\)/\1/p' \
		| xargs git commit --amend --no-edit --

submodule-sync:
	make submodule-bubble
	make submodule-update
	make submodule-review
	make submodule-commit

sync:
	git pull --rebase
	git submodule update --init
	make submodule-sync
	git push --force-with-lease
