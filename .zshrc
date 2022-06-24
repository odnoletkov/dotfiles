source $HOME/.profile

FPATH=~/projects/zsh-xcode-completions/src:$FPATH
zstyle ':completion:*:*:*:*:descriptions' format '%F{green}%d%f'

SAVEHIST=$HISTSIZE
setopt HIST_IGNORE_DUPS

autoload -Uz compinit
compinit

zstyle ":completion:*:*:make:*" tag-order targets
zstyle ':completion:*:descriptions' format '%F{green}%d%f'

bindkey "^[[Z" reverse-menu-complete
