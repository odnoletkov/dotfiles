export PROMPT_DIRTRIM=2
export PS1='\w $ '

. ~/.scripts/git-completion.bash

alias lastsim='echo $(find ~/Library/Developer/CoreSimulator/Devices/*/data/Containers/Data/Application/*/Library/Preferences -type d -print0 | xargs -0 stat -f "%m %N" | sort -rn | cut -d " " -f 2- | head -n 1)"/../.."'
