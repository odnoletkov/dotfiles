nnoremap [o<Space> :set diffopt+=iwhite<CR>
nnoremap ]o<Space> :set diffopt-=iwhite<CR>
nnoremap <expr> yo<Space> &diffopt =~# 'iwhite' ? ':set diffopt-=iwhite<CR>' : ':set diffopt+=iwhite<CR>'

nnoremap [oa :setlocal formatoptions+=a<CR>
nnoremap ]oa :setlocal formatoptions-=a<CR>
nnoremap <expr> yoa &formatoptions =~# 'a' ? ':setlocal formatoptions-=a<CR>' : ':setlocal formatoptions+=a<CR>'

nnoremap ]c ]c:call <SID>RevealHunk()<CR>
nnoremap [c [c:call <SID>RevealHunk()<CR>
nnoremap dp dp]c:call <SID>RevealHunk()<CR>
nnoremap do do]c:call <SID>RevealHunk()<CR>

nnoremap <silent> [n :execute "normal \<Plug>unimpairedContextPrevious" <Bar> call <SID>RevealHunk()<CR>
nnoremap <silent> ]n :execute "normal \<Plug>unimpairedContextNext" <Bar> call <SID>RevealHunk()<CR>

function! s:RevealHunk() abort
  let start = line('.')
  if diff_filler(start) > 0
    let start -= 1
  endif
  while diff_hlID(start, 0) > 0
    let start -= 1
  endwhile
  let start += 1
  let end = line('.')
  while diff_hlID(end, 0) > 0
    let end += 1
  endwhile
  while line('w$') < end && line('w0') < start && line('.') > line('w0') + &scrolloff
    execute "normal! \<C-E>"
  endwhile
  while line('w0') >= start && line('.') < line('w$') - &scrolloff
    execute "normal! \<C-Y>"
  endwhile
endfunction
