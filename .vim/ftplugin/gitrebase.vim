setlocal nowrap
setlocal cursorline

nnoremap <silent> <buffer> <LocalLeader>b obreak<ESC>0
nnoremap <silent> <buffer> <LocalLeader>x oexec 

function! s:choose(word) abort
  s/^\(\w\+\>\)\=\(\s*\)\ze\x\{4,40\}\>/\=(strlen(submatch(1)) == 1 ? a:word[0] : a:word) . substitute(submatch(2),'^$',' ','')/e
endfunction

function! s:cycle(count) abort
  let words = ['pick', 'edit', 'fixup', 'squash', 'reword', 'drop']
  let index = index(map(copy(words), 'v:val[0]'), getline('.')[0])
  let index = ((index < 0 ? 0 : index) + 10000 * len(words) + a:count) % len(words)
  call s:choose(words[index])
endfunction

command! -buffer -count=1 -bar -bang CycleNew call s:cycle(<bang>0 ? -<count> : <count>)

nnoremap <buffer> <silent> <C-A> :<C-U><C-R>=v:count1<CR>CycleNew<CR>
nnoremap <buffer> <silent> <C-X> :<C-U><C-R>=v:count1<CR>CycleNew!<CR>
