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
set grepprg=grep\ -rnsIH

nnoremap <silent> <C-L> :nohlsearch \| diffupdate<CR><C-L>
