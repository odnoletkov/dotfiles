PATH=~/bin:$PATH

HISTCONTROL=erasedups
HISTSIZE=10000
shopt -s histappend

stty -ixon

export CLICOLOR=1
export GREP_OPTIONS=--color=auto

export EDITOR=vim

source /usr/local/etc/bash_completion

source /usr/local/etc/bash_completion.d/git-prompt.sh
PS1='\u@\h:\W$(__git_ps1 " (%s)")\$ '
GIT_PS1_SHOWUPSTREAM=verbose

export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
