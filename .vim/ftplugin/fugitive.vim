setlocal nowrap
setlocal cursorline

nnoremap <buffer> <LocalLeader>gd :<C-U>Git diff @{<C-R>=v:count1<CR>}<CR>
nnoremap <buffer> <LocalLeader>gr :<C-U>Git reset @{<C-R>=v:count1<CR>}<CR>

nnoremap <buffer> rb :Git absorb<CR>
nnoremap <buffer> rv :Git revise --autosquash<CR>
nnoremap <silent> <buffer> rF :Git -c sequence.editor=true rebase --interactive --autosquash --keep-base @{U}<CR>
