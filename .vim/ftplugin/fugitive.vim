setlocal nowrap
setlocal cursorline

nnoremap <buffer> <LocalLeader>gp :Git push<CR>
nnoremap <buffer> <LocalLeader>gP :Git push --force-with-lease<CR>

nnoremap <buffer> <LocalLeader>gd1 :Git diff @{1}<CR>
nnoremap <buffer> <LocalLeader>gr1 :Git reset @{1}<CR>

nnoremap <buffer> rb :Git absorb<CR>
nnoremap <buffer> rv :Git revise --autosquash<CR>
nnoremap <silent> <buffer> rF :Git -c sequence.editor=true rebase --interactive --autosquash --keep-base @{U}<CR>

nunmap <buffer> q
