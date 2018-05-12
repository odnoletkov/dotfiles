function! gitsuggest#omnifunc(findstart,base) abort
  if a:findstart
      return 0
  endif
  if line('.') != 1
    return []
  endif
  return systemlist('git suggest-commit --regexp-ignore-case --grep='.shellescape(a:base).' | git diff-tree --no-patch --stdin --format=%s')
endfunction
