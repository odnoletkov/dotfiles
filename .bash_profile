export PATH=$PATH:~/bin:~/.gem/ruby/2.0.0/bin/

export PS1='\[\033]0;$(git symbolic-ref -q --short HEAD 2>/dev/null)\007\]$ '

export CLICOLOR=1
export GREP_OPTIONS='--color=always'

source /Applications/Xcode.app/Contents/Developer/usr/share/git-core/git-completion.bash
