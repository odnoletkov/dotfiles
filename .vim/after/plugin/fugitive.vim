autocmd User Fugitive
      \ nnoremap <silent> <buffer> <LocalLeader>ge :Gedit<CR>|
      \ nnoremap <silent> <buffer> <LocalLeader>gv :Gvdiffsplit<CR>|
      \ nnoremap <silent> <buffer> <LocalLeader>gs :Gedit :<CR>|
      \ if mapcheck('<CR>', 'I') ==# "" && getcmdwintype() ==# "" && &filetype !=# "qf"|
      \   nnoremap <silent> <buffer> <CR> :.Gblame<CR>|
      \ endif
