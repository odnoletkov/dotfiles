nnoremap <silent> <Leader>ge :Gedit<CR>
nnoremap <silent> <Leader>gv :Gvdiffsplit<CR>
nnoremap <silent> <Leader>gV :Gvdiffsplit @<CR>
nnoremap <silent> <Leader>gs :Gedit :<CR>
nnoremap <silent> <Leader>gS :Gtabedit :<CR>
nnoremap <silent> <Leader>gb :Gblame<CR>
nnoremap <silent> <Leader>gmt :Gmergetool<CR>

nnoremap <Leader>gl1 :Gclog @{1}.. --<CR>
nnoremap <Leader>gls :Gclog --walk-reflogs stash --<CR>

command Gmergetool only | Gvdiffsplit! | Gvdiffsplit! :1 | wincmd J
