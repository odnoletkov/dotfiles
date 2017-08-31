filetype plugin indent on
syntax on

set incsearch
set hlsearch

set autoindent
set smarttab

set tabstop=4
set softtabstop=4
set shiftwidth=4

set wildmenu
set nowrap
set noswapfile
set lazyredraw

colorscheme basic-light

nnoremap <F5> :w<CR>:make!<CR>

autocmd FileType c,cpp,objc map <C-I> :pyf /usr/local/opt/clang-format/share/clang/clang-format.py<cr>
autocmd FileType c,cpp,objc imap <C-I> <c-o>:pyf /usr/local/opt/clang-format/share/clang/clang-format.py<cr>
