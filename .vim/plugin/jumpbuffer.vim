function s:jumpbuffer(dir)
    let [list, pos] = getjumplist()
    if a:dir < 0
        let list = reverse(list)
        let pos = len(list) - 1 - pos
    endif
    let list = map(list, "v:val.bufnr == ".bufnr('%'))
    let cnt = index(list, 0, max([pos, 0])) - pos
    if cnt > 0
        execute "normal! ".cnt.(a:dir > 0 ? "\<C-I>" : "\<C-O>")
    endif
endfunction

nnoremap <silent> [j :call <SID>jumpbuffer(-1)<CR>
nnoremap <silent> ]j :call <SID>jumpbuffer(1)<CR>
