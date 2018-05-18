PATH=~/bin:$PATH

HISTCONTROL=erasedups
HISTSIZE=10000
shopt -s histappend

stty -ixon

export CLICOLOR=1
export GREP_OPTIONS='--color=auto'
export LESS='--chop-long-lines --RAW-CONTROL-CHARS --jump-target=.2'

export VISUAL=vim
export EDITOR="$VISUAL"

source /usr/local/etc/bash_completion
