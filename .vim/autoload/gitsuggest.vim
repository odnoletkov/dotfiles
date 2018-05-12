function! gitsuggest#omnifunc(findstart,base) abort
  if a:findstart
      return 0
  endif
  if line('.') != 1
    return []
  endif
  let res = systemlist('git suggest-commit --regexp-ignore-case --grep='.shellescape(a:base))
  let res = map(res, 'split(v:val)')
  let res = map(res, '[v:val[0],systemlist("git diff-tree --no-patch --stdin --format=%s ".v:val[1])[0]]')
  let res = map(res, '{ "word": v:val[1], "menu": v:val[0] }')
  return res
endfunction
