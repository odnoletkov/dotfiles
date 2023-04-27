filetype plugin indent on
syntax on
colorscheme lunaperche

set autoindent
set autoread
set autowrite
set backspace=indent,eol
set completefunc=syntaxcomplete#Complete
set confirm
set dictionary+=/usr/share/dict/words
set diffopt+=foldcolumn:0
set formatoptions+=jnr
set history=1000
set hlsearch
set incsearch
set mouse=a
set noswapfile
set scrolloff=1
set shellredir=>
set shortmess-=S
set showbreak=+
set wildmode=list:longest,full

let &background = get({"Dark\n": 'dark'}, system('defaults read -g AppleInterfaceStyle'), &background)

cabbrev url [[:alnum:]]\+:\/\/[[:alnum:].=#/?&*!'-]\+

nnoremap <silent> <C-W>O :<C-U>execute (v:count ? v:count : '') . 'tabonly'<CR>
nnoremap <silent> <C-W>C :<C-U>execute (v:count ? v:count : '') . 'tabclose'<CR>
nnoremap <silent> <C-W>N :<C-U>execute (v:count ? v:count : '') . 'tabnew'<CR>
