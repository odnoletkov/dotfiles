if exists("b:did_indent")
  finish
endif
let b:did_indent = 1

setlocal indentexpr=GetJQIndent()
setlocal indentkeys+==end,=},=else,=elif
setlocal indentkeys-=0#

let b:undo_indent = "setl indentkeys< indentexpr<"

" Only define the function once.
if exists("*GetJQIndent")
  finish
endif

let s:keepcpo= &cpo
set cpo&vim

function! GetJQIndent()
  let lnum = prevnonblank(v:lnum - 1)
  if lnum == 0
    return 0
  endif

  let prev_text = getline(lnum)
  let cur_text = getline(v:lnum)

  let ind = indent(lnum)

  if prev_text =~# '\<def\>\s\+\w\+.*:'
    let ind += shiftwidth()
  end

  if prev_text =~# '\(then\|else\)\(.*end\)\@!'
    let ind += shiftwidth()
  end

  if prev_text =~# '\[\s*$'
        \ || prev_text =~# '(\s*$'
        \ || prev_text =~# '{\s*$'
    let ind += shiftwidth()
  end

  if prev_text =~# ';\s*$'
    let l = lnum
    while l > 0 && indent(l) >= ind
      let l -= 1
    endwhile
    if 0 <= match(getline(l), '^\s*def\>')
      let ind -= shiftwidth()
    end
  end

  if 0 <= match(cur_text, '^\s*\(}\|\]\|)\|else\>\|elif\>\|end\>\)')
    let ind -= shiftwidth()
  end

  return ind
endfunction

let &cpo = s:keepcpo
unlet s:keepcpo
