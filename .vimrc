filetype plugin indent on
syntax on
colorscheme xcode

set incsearch
set hlsearch
set autoindent
set wildmenu
set noswapfile
set backspace=indent,eol
set shellredir=>
set autowrite

nnoremap <silent> <C-L> :nohlsearch \| diffupdate<CR><C-L>

let g:sleuth_neighbor_limit = 0
