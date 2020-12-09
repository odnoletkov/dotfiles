let &l:keywordprg='sh -c ''LESS="$LESS +/[[:<:]]$0[[:>:]]" man jq'''
set shiftwidth=2 expandtab

" TODO: keep registers
command -buffer -nargs=1 -complete=file Load
			\ silent file <args>
			\ | setlocal buftype& buflisted& bufhidden&
			\ | unlet! b:git_dir | edit!
