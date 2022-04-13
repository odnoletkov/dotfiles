source $HOME/.profile

SAVEHIST=$HISTSIZE
setopt HIST_IGNORE_DUPS

autoload -Uz compinit
compinit

zstyle ":completion:*:*:make:*" tag-order targets
