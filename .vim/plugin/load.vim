" TODO: keep registers

function! s:load(...) abort
  if empty(a:000)
    let file = projectionist#query_file('alternate')
    if empty(file)
      echoerr "No alternate file"
      return
    else
      let file = file[0]
    endif
  else
    let file = a:1
  endif
  execute 'silent file ' . file
  setlocal buftype& buflisted& bufhidden&
  unlet! b:git_dir
  edit!
endfunction

command -nargs=? -complete=file Load call s:load(<f-args>)
