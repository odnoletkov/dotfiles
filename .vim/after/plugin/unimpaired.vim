nnoremap [o<Space> :set diffopt+=iwhite<CR>
nnoremap ]o<Space> :set diffopt-=iwhite<CR>
nnoremap <expr> yo<Space> &diffopt =~# 'iwhite' ? ':set diffopt-=iwhite<CR>' : ':set diffopt+=iwhite<CR>'

nnoremap [oa :setlocal formatoptions+=a<CR>
nnoremap ]oa :setlocal formatoptions-=a<CR>
nnoremap <expr> yoa &formatoptions =~# 'a' ? ':setlocal formatoptions-=a<CR>' : ':setlocal formatoptions+=a<CR>'

nnoremap ]c ]czz
nnoremap [c [czz
nnoremap dp dp]czz
nnoremap do do]czz
