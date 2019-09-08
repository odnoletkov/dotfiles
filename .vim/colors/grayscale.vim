hi clear
syntax reset
let colors_name = "grayscale"

if &background == "light"
  hi TabLine cterm=reverse
  hi TabLineSel cterm=reverse,bold
  hi StatusLineNC ctermbg=7
  hi VertSplit cterm=none
  hi CursorLine cterm=none
  hi CursorColumn ctermbg=255
  hi LineNr ctermfg=4
  hi CursorLineNr ctermfg=4
  hi Folded ctermfg=4 ctermbg=none
  hi FoldColumn ctermbg=none ctermfg=4
  hi Pmenu ctermfg=16 ctermbg=255
  hi PmenuSel cterm=reverse ctermfg=16 ctermbg=255

  hi Search ctermbg=195
  hi MatchParen ctermbg=253

  hi Todo ctermfg=none ctermbg=none cterm=underline
  hi Directory ctermfg=16 cterm=bold
  hi Title ctermfg=16 cterm=bold
  hi Question ctermfg=16 cterm=bold

  hi DiffAdd ctermbg=193
  hi DiffChange ctermbg=230
  hi DiffDelete ctermfg=224 ctermbg=224
  hi DiffText ctermfg=0 ctermbg=222 cterm=none
  hi diffAdded ctermfg=2
  hi diffRemoved ctermfg=1
  hi diffChanged ctermfg=3

  hi diffFile cterm=reverse,bold
  hi diffIndexLine cterm=reverse,bold

  hi Statement ctermfg=none cterm=bold
  hi Type ctermfg=none
  hi Function ctermfg=none
  hi Identifier ctermfg=none
  hi Normal ctermfg=none
  hi Special ctermfg=none
  hi PreCondit ctermfg=none
  hi PreProc ctermfg=none
  hi Constant ctermfg=none
  hi Number ctermfg=none
  hi String ctermfg=8
  hi Comment ctermfg=238 cterm=italic
  hi NonText ctermfg=4
  hi Visual ctermbg=254
  hi CursorLine ctermbg=255
else
  hi TabLine cterm=reverse
  hi TabLineSel cterm=reverse,bold
  hi StatusLineNC ctermbg=none
  hi VertSplit cterm=none
  hi CursorLine cterm=none
  hi CursorColumn ctermbg=232
  hi LineNr ctermfg=4
  hi CursorLineNr ctermfg=4
  hi Folded ctermfg=4 ctermbg=none
  hi FoldColumn ctermbg=none ctermfg=4
  hi Pmenu ctermfg=231 ctermbg=232
  hi PmenuSel cterm=reverse ctermfg=231 ctermbg=232

  hi Search ctermbg=195
  hi MatchParen ctermbg=234

  hi Todo ctermfg=none ctermbg=none cterm=underline
  hi Directory ctermfg=231 cterm=bold
  hi Title ctermfg=231 cterm=bold
  hi Question ctermfg=231 cterm=bold

  hi DiffAdd ctermbg=193
  hi DiffChange ctermbg=230
  hi DiffDelete ctermfg=224 ctermbg=224
  hi DiffText ctermfg=0 ctermbg=222 cterm=none
  hi diffAdded ctermfg=2
  hi diffRemoved ctermfg=1
  hi diffChanged ctermfg=3

  hi diffFile cterm=reverse,bold
  hi diffIndexLine cterm=reverse,bold

  hi Statement ctermfg=none cterm=bold
  hi Type ctermfg=none
  hi Function ctermfg=none
  hi Identifier ctermfg=none
  hi Normal ctermfg=none
  hi Special ctermfg=none
  hi PreCondit ctermfg=none
  hi PreProc ctermfg=none
  hi Constant ctermfg=none
  hi Number ctermfg=none
  hi String ctermfg=7
  hi Comment ctermfg=239 cterm=italic
  hi NonText ctermfg=4
  hi Visual ctermbg=233
  hi CursorLine ctermbg=232
endif

hi link Include Statement
hi link Conditonal Statement
hi link Repeat Statement
hi link Label Statement
hi link Keyword Statement
hi link Exception Statement
hi link Macro Statement

set fillchars+=vert:│

let &t_ZH="\e[3m"
let &t_ZR="\e[23m"

function! InvertGrayCterm(x)
  if (a:x - 16)%43 == 0 
    return 247 - a:x
  elseif a:x >= 232
    return 487 - a:x
  else
    return a:x
  endif
endfunction
