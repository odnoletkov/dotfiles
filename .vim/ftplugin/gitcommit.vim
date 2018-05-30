setlocal spell
setlocal iskeyword+=-
setlocal omnifunc=CompleteSubject

function! CompleteSubject(findstart,base) abort
  if a:findstart
      return 0
  endif
  if line('.') != 1
    return []
  endif
  let res = systemlist('git suggest-commit --regexp-ignore-case --grep='.shellescape(a:base))
  let res = map(res, 'split(v:val)')
  let res = map(res, '{ "word": get(systemlist("git diff-tree -c --root --no-patch --format=%s ".v:val[1]),0,""), "menu": v:val[0], "empty":1 }')
  return res
endfunction
