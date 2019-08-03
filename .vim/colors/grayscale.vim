hi clear
syntax reset
let colors_name = "grayscale"

if &background == "light"
  hi TabLine cterm=reverse
  hi VertSplit ctermbg=16
  hi WildMenu ctermfg=16 ctermbg=231 cterm=bold
  hi CursorLine cterm=none
  hi CursorColumn ctermbg=255
  hi Folded ctermfg=4 ctermbg=none
  hi FoldColumn ctermbg=none
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
  hi diffAdded ctermbg=120
  hi diffRemoved ctermbg=210
  hi diffChanged ctermbg=228

  hi Statement ctermfg=16 cterm=bold
  hi Type ctermfg=238 cterm=bold
  hi Function ctermfg=16
  hi Identifier ctermfg=238 cterm=bold
  hi Normal ctermfg=16
  hi Special ctermfg=16
  hi PreCondit ctermfg=238
  hi PreProc ctermfg=238
  hi Constant ctermfg=238
  hi Number ctermfg=238
  hi String ctermfg=238
  hi Comment ctermfg=248
  hi NonText ctermfg=4
  hi Visual ctermbg=254
  hi CursorLine ctermbg=255
else
  hi TabLine cterm=reverse
  hi VertSplit ctermbg=231
  hi WildMenu ctermfg=231 ctermbg=16 cterm=bold
  hi CursorLine cterm=none
  hi CursorColumn ctermbg=232
  hi Folded ctermfg=4 ctermbg=none
  hi FoldColumn ctermbg=none
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
  hi diffAdded ctermbg=120
  hi diffRemoved ctermbg=210
  hi diffChanged ctermbg=228

  hi Statement ctermfg=231 cterm=bold
  hi Type ctermfg=249 cterm=bold
  hi Function ctermfg=231
  hi Identifier ctermfg=249 cterm=bold
  hi Normal ctermfg=231
  hi Special ctermfg=231
  hi PreCondit ctermfg=249
  hi PreProc ctermfg=249
  hi Constant ctermfg=249
  hi Number ctermfg=249
  hi String ctermfg=249
  hi Comment ctermfg=239
  hi NonText ctermfg=4
  hi Visual ctermbg=233
  hi CursorLine ctermbg=232
endif

function InvertGrayCterm(x)
  if (a:x - 16)%43 == 0 
    return 247 - a:x
  elseif a:x >= 232
    return 487 - a:x
  else
    return a:x
  endif
endfunction
