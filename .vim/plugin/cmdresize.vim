function! s:WinHeight(sign) abort
    let wl = winlayout()
    if index({'col':[],'leaf':[wl],'row':wl[1]}[wl[0]], ['leaf',win_getid()]) + 1
	let cmd = 'set cmdheight' . {
		    \'-': '+=' . v:count1,
		    \'+': '-=' . v:count1,
		    \'_': '=' . (v:count ? &cmdheight + winheight(0) - v:count : 1)
		    \}[a:sign]
	return cmd . '|echo ":' . cmd . '"'
    else
	return 'normal! ' . v:count . "\<C-W>" . a:sign
    endif
endfunction

nnoremap <silent> <C-W>- :<C-U>exe <SID>WinHeight('-')<CR>
vnoremap <silent> <C-W>- :<C-U>exe <SID>WinHeight('-')<CR>
nnoremap <silent> <C-W>+ :<C-U>exe <SID>WinHeight('+')<CR>
vnoremap <silent> <C-W>+ :<C-U>exe <SID>WinHeight('+')<CR>
nnoremap <silent> <C-W>_ :<C-U>exe <SID>WinHeight('_')<CR>
vnoremap <silent> <C-W>_ :<C-U>exe <SID>WinHeight('_')<CR>
