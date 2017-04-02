export PATH=$PATH:~/bin:~/.fastlane/bin

export HISTCONTROL=erasedups
export HISTSIZE=10000

export PS1='\[\033]0;$(git symbolic-ref -q --short HEAD 2>/dev/null)\007\]$ '

export CLICOLOR=1
export GREP_OPTIONS='--color=auto'

export VISUAL=vim
export EDITOR="$VISUAL"

source /Applications/Xcode.app/Contents/Developer/usr/share/git-core/git-completion.bash

security find-generic-password -s api.vk.com -a 74141 -w > ~/Documents/Shared\ Playground\ Data/vk-access-token
