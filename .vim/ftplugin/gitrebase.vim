setlocal nowrap
setlocal cursorline

nnoremap <silent> <buffer> <LocalLeader>p :Pick<CR>
nnoremap <silent> <buffer> <LocalLeader>s :Squash<CR>
nnoremap <silent> <buffer> <LocalLeader>e :Edit<CR>
nnoremap <silent> <buffer> <LocalLeader>r :Reword<CR>
nnoremap <silent> <buffer> <LocalLeader>f :Fixup<CR>
nnoremap <silent> <buffer> <LocalLeader>b obreak<ESC>0
nnoremap <silent> <buffer> <LocalLeader>x oexec 
