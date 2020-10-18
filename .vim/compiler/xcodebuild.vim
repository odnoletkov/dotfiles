if exists("current_compiler")
  finish
endif
let current_compiler = "xcodebuild"

let s:cpo_save = &cpo
set cpo&vim

CompilerSet makeprg=xcodebuild\ -quiet
CompilerSet errorformat=
      \%E%f:%l:%c:\ error:\ %m,
      \%W%f:%l:%c:\ warning:\ %m,
      \%I%f:%l:%c:\ note:\ %m,
      \%A%f:%l:%c:\ %m,
      \%-Gnote:\ Using\ new\ build\ system,
      \%-Gnote:\ Building\ targets\ in\ parallel,
      \%-Gnote:\ Planning\ build,
      \%-Gnote:\ Using\ build\ description\ from\ disk,
      \%-G**\ BUILD\ FAILED\ **,
      \%-G,

let &cpo = s:cpo_save
unlet s:cpo_save
