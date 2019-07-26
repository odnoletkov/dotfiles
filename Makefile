all: .git sync

.git:
	git init
	git config status.showUntrackedFiles no
	git remote add origin https://github.com/odnoletkov/dotfiles
	git fetch
	git checkout master
	git submodule update --init

sync:
	git pull --rebase
	git submodule update --init
	git -c sequence.editor='printf %s\\n 1m$$ wq | ed' \
		rebase --interactive $$(git rev-list --grep="^Update submodules$$" -1 @)~
	git submodule update --remote
	vim -u NONE -c "helptags ALL" -c q
	git submodule foreach 'tig --reverse $$sha1.. || :' 2>/dev/null
	git submodule status \
		| sed -En 's/\+.{40} (.*) \(.*\)/\1/p' \
		| xargs git commit --amend --no-edit --
	git push --force-with-lease
