PATH=~/bin:$PATH

HISTCONTROL=erasedups
HISTSIZE=10000
shopt -s histappend

stty -ixon

export CLICOLOR=1
export GREP_OPTIONS=--color=auto
export LESS="--chop-long-lines --RAW-CONTROL-CHARS --jump-target=4"

export EDITOR=vim

source /usr/local/etc/bash_completion

alias git='LC_ALL=C git'
