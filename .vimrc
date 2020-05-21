filetype plugin indent on
syntax on
colorscheme grayscale

let &t_ti = "\e[?1004h"
let &t_te = "\e[?1004l"
exe "set <S-F18>=\e[O"
exe "set <S-F19>=\e[I"
fu! s:do(event) abort
	if exists('#'.a:event)
		exe 'do '.a:event.' <nomodeline> %'
	endif
endfu
nno <silent> <S-F18> :<c-u>call <sid>do('FocusLost')<cr>
nno <silent> <S-F19> :<c-u>call <sid>do('FocusGained')<cr>

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

let &background = {"Dark\n": 'dark', '': 'light'}[system('defaults read -g AppleInterfaceStyle')]

nnoremap <silent> <C-W>O :tabonly<CR>
nnoremap <silent> <C-W>C :tabclose<CR>
