autocmd User Fugitive
      \ if mapcheck('<CR>', 'I') ==# "" && getcmdwintype() ==# "" && &filetype !=# "qf"|
      \   nnoremap <silent> <buffer> <CR> :.Gblame<CR>|
      \ endif
