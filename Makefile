update:
	git rebase --quiet HEAD
	git submodule update --remote
	git pull --rebase
	git submodule update --init
	git submodule update --remote --no-fetch
	vim -eu NONE +"helptags ALL" +q

.git:
	git init
	git config status.showUntrackedFiles no
	git remote add origin https://github.com/odnoletkov/dotfiles
	git fetch
	git checkout master
	git submodule update --init
