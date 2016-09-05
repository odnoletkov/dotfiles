set -x PATH $PATH ~/bin
set -x CLICOLOR 1
set -x GREP_OPTIONS --color=always

set -e fish_greeting

function fish_prompt
  echo -n '> '
end

function fish_title
  git symbolic-ref -q --short HEAD ^ /dev/null
  or echo ""
end
