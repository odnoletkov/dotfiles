function! s:buffer_size(...) abort
  if get(b:, 'flagship_buffer_size') || get(g:, 'flagship_buffer_size')
    let byte = line2byte(line('$') + 1)
    if byte != -1
      return (byte - 1) . 'B'
    endif
  endif
  return ''
endfunction

augroup buffer_size
  autocmd!
  autocmd User Flags call Hoist('buffer', 10, function('s:buffer_size'))
  autocmd User ProjectionistActivate
        \ for b:flagship_buffer_size in projectionist#query_scalar('flagship_buffer_size') |
        \   break |
        \ endfor
augroup END
