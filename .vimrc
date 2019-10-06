filetype plugin indent on
syntax on
colorscheme grayscale

set autoindent
set autoread
set autowrite
set backspace=indent,eol
set confirm
set diffopt+=foldcolumn:0
set formatoptions+=jnr
set grepprg=grep\ -nsIH
set history=200
set hlsearch
set incsearch
set noswapfile
set shellredir=>
set shortmess-=S
set showbreak=+
set wildmode=list:longest,full

cabbrev url [[:alnum:]]\+:\/\/[[:fname:]?&*!']\+

let &background = {"Dark\n": 'dark', '': 'light'}[system('defaults read -g AppleInterfaceStyle')]
