source $HOME/.profile

HISTFILE=~/.bash_history
SAVEHIST=$HISTSIZE
setopt HIST_IGNORE_ALL_DUPS

FPATH=/usr/local/share/zsh/site-functions:$FPATH
autoload -Uz compinit
compinit

source /usr/local/etc/bash_completion.d/git-prompt.sh
setopt PROMPT_SUBST ; RPROMPT='$(__git_ps1)'
GIT_PS1_SHOWUPSTREAM=verbose
