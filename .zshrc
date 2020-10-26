source $HOME/.profile

HISTFILE=~/.bash_history
SAVEHIST=$HISTSIZE
setopt HIST_IGNORE_DUPS

autoload -Uz compinit
compinit
