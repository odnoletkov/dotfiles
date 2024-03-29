source $HOME/.profile

FPATH=/opt/homebrew/share/zsh/site-functions:$FPATH

SAVEHIST=$HISTSIZE
setopt HIST_IGNORE_DUPS

autoload -Uz compinit
compinit

zstyle ":completion:*:*:make:*" tag-order targets
zstyle ':completion:*:descriptions' format '%F{green}%d%f'

bindkey "^[[Z" reverse-menu-complete

PS1="%n@%m %1~ %# "
