hi clear
syntax reset
let colors_name = "grayscale"

hi Title ctermfg=none cterm=bold

hi TabLine cterm=none
hi VertSplit cterm=none
hi LineNr ctermfg=4

hi diffAdded ctermfg=2
hi diffRemoved ctermfg=1
hi diffChanged ctermfg=3
hi diffFile cterm=bold
hi diffIndexLine cterm=bold

hi Constant ctermfg=none
hi Comment ctermfg=none cterm=italic
hi Statement ctermfg=none
hi Type ctermfg=none
hi Function ctermfg=none
hi Identifier ctermfg=none
hi Normal ctermfg=none
hi Special ctermfg=none
hi PreCondit ctermfg=none
hi PreProc ctermfg=none
hi NonText ctermfg=4

hi markdownCode ctermfg=4
hi htmlBold cterm=bold
hi htmlItalic cterm=italic

set fillchars+=vert:│

let &t_ZH="\e[3m"
let &t_ZR="\e[23m"

