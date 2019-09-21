nnoremap [o<Space> :set diffopt+=iwhite<CR>
nnoremap ]o<Space> :set diffopt-=iwhite<CR>
nnoremap <expr> yo<Space> &diffopt =~# 'iwhite' ? ':set diffopt-=iwhite<CR>' : ':set diffopt+=iwhite<CR>'
