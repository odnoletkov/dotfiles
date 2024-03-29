nnoremap =q :cc<CR>

nnoremap [o<Space> :set diffopt+=iwhite<CR>
nnoremap ]o<Space> :set diffopt-=iwhite<CR>
nnoremap <expr> yo<Space> &diffopt =~# 'iwhite' ? ':set diffopt-=iwhite<CR>' : ':set diffopt+=iwhite<CR>'

nnoremap [oa :setlocal formatoptions+=a<CR>
nnoremap ]oa :setlocal formatoptions-=a<CR>
nnoremap <expr> yoa &formatoptions =~# 'a' ? ':setlocal formatoptions-=a<CR>' : ':setlocal formatoptions+=a<CR>'

nnoremap <silent> yoe :let [&conceallevel, &concealcursor] = get({'0':[2,''],'2':[2,'n']}, &conceallevel . &concealcursor, [0,''])<CR>

nnoremap <expr> yoz &foldmethod ==# 'syntax' ? ':setlocal foldmethod=manual<CR>' : ':setlocal foldmethod=syntax<CR>'

nnoremap [gq :<C-U>execute v:count . 'colder \| cc'<CR>
nnoremap ]gq :<C-U>execute v:count . 'cnewer \| cc'<CR>
nnoremap =gq :chistory<CR>

nnoremap <LocalLeader>* /<C-R>/\\|\<<C-R><C-W>\><CR>

command! Cdelete
      \ let s:list = getqflist({'all':1})
      \ | unlet s:list.items[s:list.idx - 1]
      \ | call setqflist([], 'r', s:list)
      \ | cc
nnoremap <silent> dq :Cdelete<CR>

nnoremap ]c ]c:call <SID>RevealHunk()<CR>
nnoremap [c [c:call <SID>RevealHunk()<CR>

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

if &diff && argc() == 4 && !v:vim_did_enter
  autocmd VimEnter * match Error '^[<=>|]\{7}[<=>|]\@!.*$' | normal ]n
endif

command ColorNext
        \ let colors = getcompletion('', 'color')
        \ | execute 'colorscheme ' . get(colors, index(colors, get(g:, 'colors_name', 'default')) + 1, colors[0])
