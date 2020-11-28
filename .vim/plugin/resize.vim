" TODO: map to only resize vert or hor (ex: to resize vert only to width of the current line)
" TODO: resize Vim window
" TODO: when single line is wrapped

function! s:Resize(type) abort
    if len(a:type) == 1
        let marks = ["'<", "'>"]
    else
        let marks = ["'[", "']"]
    endif
    let line = map(copy(marks), 'line(v:val)')
    if a:type ==# '%'
        let line = [1, line('$')]
    endif

    if index(["v", "\<C-V>", "char", "block"], a:type) >= 0
        if &wrap
            redraw | echohl WarningMsg | echo ':set nowrap' | echohl None
            setlocal nowrap
        endif
        let cols = map(copy(marks), 'virtcol(v:val)')
        let col = min(cols)
        let width = abs(cols[0] - cols[1]) + 1
    else
        let col = 1
        let width = max(map(range(line[0], line[1]), "virtcol([v:val, '$'])")) - 1
    endif

    let offset = &foldcolumn
    let offset += (&number || &relativenumber) * max([&numberwidth, strlen(line('$')) + 1])
    let delta = col - (virtcol(".") - wincol() + offset) - 1
    if delta > 0
        execute 'normal! ' . delta . 'zl'
    elseif delta < 0
        execute 'normal! ' . (1 - delta) . 'zh'
    endif
    execute 'vertical resize' . (offset + width)

    let wl = winlayout()
    if index({'col':[],'leaf':[wl],'row':wl[1]}[wl[0]], ['leaf',win_getid()]) + 1
        return
    endif

    execute 'resize' . (line[1] - line[0] + 1)

    while 1
        if line[0] > line('w0')
            execute "normal! \<C-E>"
        elseif line[1] > line('w$')
            let old = winheight(0)
            resize +1
            if old == winheight(0)
                break
            endif
        else
            break
        endif
    endwhile
endfunction

nnoremap <silent> <C-W>0 :<C-U>set operatorfunc=<SID>Resize<CR>g@
nnoremap <silent> <C-W>0= :<C-U>call <SID>Resize('%')<CR>
xnoremap <silent> <C-W>0 :<C-U>call <SID>Resize(visualmode())<CR>
