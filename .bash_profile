PATH=~/bin:$PATH

HISTCONTROL=erasedups
HISTSIZE=10000
shopt -s histappend

stty -ixon

export CLICOLOR=1
export GREP_OPTIONS=--color=auto

export EDITOR=vim

source /usr/local/etc/bash_completion

export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
