setlocal nofoldenable

function! s:Jump(sign, flag)
  let start = line('.')
  if search('^[^' . a:sign . ']', 'cW' . a:flag) &&
        \ !search('^' . a:sign . '\([^' . a:sign . ']\|$\)', 'W' . a:flag)
    call cursor(start, 0)
  else
    exe 'normal! zv'
  endif
endfunction
nnoremap <silent> <buffer> ]= :call <SID>Jump('+', '')<CR>
nnoremap <silent> <buffer> ]- :call <SID>Jump('-', '')<CR>
nnoremap <silent> <buffer> [= :call <SID>Jump('+', 'b')<CR>
nnoremap <silent> <buffer> [- :call <SID>Jump('-', 'b')<CR>

nnoremap <buffer> czc :Git stash apply --index <C-R>=fnameescape(fugitive#Object(@%))<CR><CR>
