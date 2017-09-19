export PATH=$PATH:~/bin:~/.fastlane/bin

export HISTCONTROL=erasedups
export HISTSIZE=10000

export CLICOLOR=1
export GREP_OPTIONS='--color=auto'

export VISUAL=vim
export EDITOR="$VISUAL"

source /Applications/Xcode.app/Contents/Developer/usr/share/git-core/git-completion.bash
source /usr/local/etc/bash_completion

security find-generic-password -s api.vk.com -a 74141 -w > ~/Documents/Shared\ Playground\ Data/vk-access-token
