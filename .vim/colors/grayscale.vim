hi clear
syntax reset
let colors_name = "grayscale"

hi Title cterm=bold

hi TabLine cterm=none
hi VertSplit cterm=none
hi Folded ctermbg=254

hi diffAdded ctermfg=2
hi diffRemoved ctermfg=1
hi diffChanged ctermfg=3
hi diffFile cterm=bold
hi diffIndexLine cterm=bold

if &background == "light"
  hi DiffAdd ctermbg=193
  hi DiffChange ctermbg=230
  hi DiffDelete ctermfg=224 ctermbg=224
  hi DiffText ctermfg=0 ctermbg=222 cterm=none
else
  hi DiffAdd ctermbg=28
  hi DiffChange ctermbg=100
  hi DiffDelete ctermfg=52 ctermbg=52
  hi DiffText ctermfg=0 ctermbg=222 cterm=none
endif

set fillchars+=vert:│
