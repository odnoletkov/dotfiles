filetype plugin indent on
syntax on
colorscheme grayscale

set autoindent
set autoread
set autowrite
set backspace=indent,eol
set completefunc=syntaxcomplete#Complete
set confirm
set diffopt+=foldcolumn:0
set formatoptions+=jnr
set grepprg=grep\ -nsIH
set history=200
set hlsearch
set incsearch
set noswapfile
set scrolloff=1
set shellredir=>
set shortmess-=S
set showbreak=+
set wildmode=list:longest,full

cabbrev url [[:alnum:]]\+:\/\/[[:fname:]?&*!']\+
cabbrev error ^[[:fname:]]\+:\d\+:\d\+: \zserror:

let &background = get({"Dark\n": 'dark'}, system('defaults read -g AppleInterfaceStyle'), 'light')

nnoremap <silent> <C-W>O :tabonly<CR>
nnoremap <silent> <C-W>C :tabclose<CR>
