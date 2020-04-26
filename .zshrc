source $HOME/.profile

HISTFILE=~/.bash_history
SAVEHIST=$HISTSIZE
setopt HIST_IGNORE_DUPS

FPATH=/usr/local/share/zsh/site-functions:$FPATH
autoload -Uz compinit
compinit

source /usr/local/etc/bash_completion.d/git-prompt.sh
setopt PROMPT_SUBST ; PS1='%n@%m:%c$(__git_ps1 " (%s)")%% '
GIT_PS1_SHOWUPSTREAM=verbose
