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

nnoremap <F5> :w<CR>:make!<CR>

map <C-I> :pyf /usr/local/opt/clang-format/share/clang/clang-format.py<cr>
imap <C-I> <c-o>:pyf /usr/local/opt/clang-format/share/clang/clang-format.py<cr>
