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

function! s:Child() abort
  let commit = FugitiveParse(expand('%'))[0]
  let children = split(systemlist("TARGET=" . commit . " sh -c 'git rev-list ^$TARGET~ HEAD --ancestry-path --children --topo-order \| grep ^$TARGET'")[0])[1:]
  let term = len(children) == 1 ? ' child' : ' children'
  if len(children) <= v:count1 - 1
    throw len(children) . term
  endif
  if v:count == 0 && len(children) != 1
    echohl WarningMsg
  endif
  echo len(children) . term
  echohl NONE
  return children[v:count1 - 1]
endfunction

nnoremap <silent> <buffer> _ :<C-U>exe 'Gedit ' . <SID>Child()<CR>
