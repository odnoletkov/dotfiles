export PROMPT_DIRTRIM=2
export PS1='\w $ '

. ~/.scripts/git-completion.bash

alias lastsim='~/.scripts/lastsim.sh'
alias laststore='find /Users/max/Library/Developer/CoreSimulator/Devices/*/data/Containers/Data/Application/*/Documents/store.sqlite -print0 | xargs -0 stat -f "%m %N" | sort -rn | head -n 1 | cut -d " " -f 2-'
