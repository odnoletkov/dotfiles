filetype plugin indent on
syntax on
colorscheme grayscale

set autoindent
set autowrite
set backspace=indent,eol
set confirm
set grepprg=grep\ -nsIH
set history=200
set hlsearch
set incsearch
set laststatus=2
set noswapfile
set shellredir=>
set shortmess-=S
set showbreak=+
set updatetime=100
set wildmode=list:longest,full

cabbrev url \v\S+:\/\/\S+

nnoremap <silent> <C-L> :nohlsearch \| diffupdate<CR><C-L>
