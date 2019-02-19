setlocal nowrap

if &filetype !=# 'gitrebase'
  nnoremap <silent> <buffer> <LocalLeader>x /\v\S+:\/\/\S+<CR>
endif
