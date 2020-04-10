setlocal nowrap
setlocal cursorline

nnoremap <buffer> rb :Git absorb<CR>
nnoremap <buffer> rv :Git revise --autosquash<CR>
nnoremap <silent> <buffer> rF :Git -c sequence.editor=true rebase --interactive --autosquash --keep-base @{U}<CR>

nunmap <buffer> q

let b:start = ':Git push'
