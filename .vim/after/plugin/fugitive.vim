autocmd User Fugitive
      \ if mapcheck('<CR>', 'I') ==# "" && getcmdwintype() ==# "" && &filetype !=# "qf"|
      \   nnoremap <silent> <buffer> <CR> :.Gblame<CR>|
      \ endif

nnoremap <silent> <Leader>ge :Gedit<CR>
nnoremap <silent> <Leader>gv :Gvdiffsplit<CR>
nnoremap <silent> <Leader>gs :Gedit :<CR>
nnoremap <silent> <Leader>gll :Gclog @{1}..<CR>
nnoremap <silent> <Leader>glu :Gclog @{U}..<CR>
