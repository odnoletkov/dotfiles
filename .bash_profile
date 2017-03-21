export PATH=$PATH:~/bin:~/.fastlane/bin

export HISTCONTROL=erasedups
export HISTSIZE=10000

export PS1='\[\033]0;$(git symbolic-ref -q --short HEAD 2>/dev/null)\007\]$ '

export CLICOLOR=1
export GREP_OPTIONS='--color=auto'

source /Applications/Xcode.app/Contents/Developer/usr/share/git-core/git-completion.bash
