source $HOME/.profile

SAVEHIST=$HISTSIZE
setopt HIST_IGNORE_DUPS

autoload -Uz compinit
compinit

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
