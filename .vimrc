filetype plugin indent on
syntax on

set incsearch
set hlsearch

set smartindent

set tabstop=4
set softtabstop=4
set shiftwidth=4

set fillchars=vert:\ ,fold:-
set wildmenu
set nowrap
set noswapfile

colorscheme flattened_light
hi Normal ctermbg=NONE

nnoremap <F5> :w<CR>:make!<CR>
