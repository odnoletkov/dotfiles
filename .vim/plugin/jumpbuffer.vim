function! s:Jump(dir, map) abort
    let [list, pos] = getjumplist()
    if a:dir ==# "\<C-O>"
        let list = reverse(list)
        let pos = len(list) - 1 - pos
    endif
    let list = map(list, a:map)
    let cnt = index(list, 1, max([pos, 0])) - pos
    if cnt > 0
        execute "normal! ".cnt.a:dir
    endif
endfunction

nnoremap <silent> [j :call <SID>Jump("\<C-O>", 'v:val.bufnr != '.bufnr('%'))<CR>
nnoremap <silent> ]j :call <SID>Jump("\<C-I>", 'v:val.bufnr != '.bufnr('%'))<CR>
nnoremap <silent> [J :call <SID>Jump("\<C-O>", 'v:val.bufnr != '.bufnr('%').' && get(get(getbufinfo(v:val.bufnr), 0, {}), "listed")')<CR>
nnoremap <silent> ]J :call <SID>Jump("\<C-I>", 'v:val.bufnr != '.bufnr('%').' && get(get(getbufinfo(v:val.bufnr), 0, {}), "listed")')<CR>
