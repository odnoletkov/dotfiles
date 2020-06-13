if exists("current_compiler")
  finish
endif
let current_compiler = "swift"

let s:cpo_save = &cpo
set cpo&vim

CompilerSet makeprg=swift\ build
CompilerSet errorformat=
        \%f:%l:%c:\ %trror:\ %m,
        \%f:%l:%c:\ %tarning:\ %m,
        \%f:%l:\ %trror:\ %m,
        \%f:%l:\ %tarning:\ %m

let &cpo = s:cpo_save
unlet s:cpo_save
