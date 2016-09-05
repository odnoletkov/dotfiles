set -x PATH $PATH ~/bin
set -x CLICOLOR 1
set -x GREP_OPTIONS --color=always

set -e fish_greeting

function fish_prompt
  echo -n '> '
end

set __fish_git_prompt_showdirtystate yes
set __fish_git_prompt_showupstream informative
alias fish_title __fish_git_prompt
