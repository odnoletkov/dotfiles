autocmd BufNewFile,BufReadPost *
      \ if mapcheck('<CR>', 'I') ==# "" && &filetype !=# "qf"|
      \   nnoremap <silent> <buffer> <expr> <CR> v:count && !&readonly ? ':echo<CR>' : ':.Gblame -C10<CR>'|
      \ endif

nnoremap <silent> <Leader>ge :Gedit<CR>
nnoremap <silent> <Leader>gv :Gvdiffsplit<CR>
nnoremap <silent> <Leader>gV :Gvdiffsplit @<CR>
nnoremap <silent> <Leader>gs :Gedit :<CR>
nnoremap <silent> <Leader>gS :Gtabedit :<CR>
nnoremap <silent> <Leader>gb :Gblame<CR>
nnoremap <silent> <Leader>gmt :Gmergetool<CR>

nnoremap <Leader>gll :Gclog -20<CR>
nnoremap <Leader>gl1 :Gclog @{1}..<CR>
nnoremap <Leader>glu :Gclog @{U}..<CR>
nnoremap <Leader>gl% :Gclog --follow %<CR>
nnoremap <Leader>gls :Gclog --walk-reflogs stash<CR>
nnoremap <Leader>gl<Space> :Gclog<Space>
nnoremap <Leader>gl. :.Gclog<CR>
vnoremap <Leader>gl :Gclog<CR>

command Gmergetool only | Gvdiffsplit! | Gvdiffsplit! :1 | wincmd J
