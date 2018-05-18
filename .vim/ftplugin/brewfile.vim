setlocal keywordprg=brew\ info
setlocal iskeyword+=-
nnoremap <silent> <buffer> gx :call system('brew home ' . expand('<cfile>'))<CR>
