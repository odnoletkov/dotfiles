function! s:linked_for(id) abort 
  let s = synIDtrans(a:id)
  if s == a:id
    return [a:id]
  else
    return [a:id] + s:linked_for(s)
  endif
endfunc

function! s:names_for(ids) abort
  return map(a:ids, 'synIDattr(v:val, "name")')
endfunc

function! SynTrace() abort
  echo map(synstack(line('.'), col('.')), 's:names_for(s:linked_for(v:val))')
endfunc

command! -bar -bang SynTrace call SynTrace()
nmap <leader>z :SynTrace<CR>
