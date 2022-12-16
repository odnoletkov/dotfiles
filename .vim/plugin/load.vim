" TODO: keep registers
command -nargs=1 -complete=file Load
			\ silent file <args>
			\ | setlocal buftype& buflisted& bufhidden&
			\ | unlet! b:git_dir | edit!
