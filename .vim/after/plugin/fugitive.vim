nnoremap <silent> <Leader>ge :<C-U>Gedit<C-R>=v:count ? " >@" : ""<CR><CR>
nnoremap <silent> <Leader>gv :<C-U>Gvdiffsplit<C-R>=v:count ? " @" : ""<CR><CR>
nnoremap <silent> <Leader>gd :<C-U>Ghdiffsplit<C-R>=v:count ? " @" : ""<CR><CR>
nnoremap <silent> <Leader>gs :<C-U>G<C-R>=v:count ? "tab" : ""<CR>edit :<CR>
nnoremap <silent> <Leader>gb :Git blame<CR>
nnoremap <silent> <Leader>gmt :Gmergetool<CR>

nnoremap <Leader>gl :<C-U>Gclog <C-R>=v:count ? "@{1}.." : "-20"<CR> --<CR>
nnoremap <Leader>gt :Gclog --walk-reflogs stash --<CR>

command Gmergetool only | Gvdiffsplit! | Gvdiffsplit! :1 | wincmd J
