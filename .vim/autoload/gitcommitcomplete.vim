function! gitcommitcomplete#Complete(findstart,base) abort
  if a:findstart
      return 0
  endif
  if line('.') != 1
    return []
  endif
  let git = "git --git-dir=".shellescape(b:git_dir)
  return systemlist(git.' suggest-commit --regexp-ignore-case --grep='.shellescape(a:base))
        \ ->map('split(v:val)')
        \ ->map('{ "word": get(systemlist(git." diff-tree -c --root --no-patch --format=%s ".v:val[1]),0,""), "menu": v:val[0], "empty":1 }')
endfunction
