export PATH=$PATH:~/bin

source /Applications/Xcode.app/Contents/Developer/usr/share/git-core/git-prompt.sh
GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWUPSTREAM="verbose"
export PS1='\[\033]0;$(__git_ps1 \(%s\))\007\]$ '

export CLICOLOR=1
export GREP_OPTIONS='--color=always'

source /Applications/Xcode.app/Contents/Developer/usr/share/git-core/git-completion.bash
