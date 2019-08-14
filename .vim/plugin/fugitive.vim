autocmd User Fugitive
      \ nnoremap <silent> <buffer> <LocalLeader>e :Gedit<CR>|
      \ nnoremap <silent> <buffer> <LocalLeader>d :Gvdiffsplit<CR>|
      \ nnoremap <silent> <buffer> <LocalLeader>s :Gedit :<CR>|
      \ if mapcheck('<CR>', 'I') == ""|
      \   nnoremap <silent> <buffer> <CR> :.Gblame<CR>|
      \ endif
