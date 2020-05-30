source $HOME/.profile

HISTFILE=~/.bash_history
SAVEHIST=$HISTSIZE
setopt HIST_IGNORE_DUPS

FPATH=/usr/local/share/zsh/site-functions:$FPATH
autoload -Uz compinit
compinit
