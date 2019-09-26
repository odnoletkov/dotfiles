autocmd User Fugitive
      \ if mapcheck('<CR>', 'I') ==# "" && getcmdwintype() ==# "" && &filetype !=# "qf"|
      \   nnoremap <silent> <buffer> <CR> :.Gblame<CR>|
      \ endif

nnoremap <silent> <Leader>ge :Gedit<CR>
nnoremap <silent> <Leader>gv :Gvdiffsplit<CR>
nnoremap <silent> <Leader>gs :Gedit :<CR>
nnoremap <silent> <Leader>gll :Gclog @{1}..<CR>
nnoremap <silent> <Leader>glu :Gclog @{U}..<CR>

command -bar Ghide unlet! w:fugitive_diff_restore | set bufhidden& | hide
command Gmergetool Gvdiffsplit! | Gvdiffsplit! :1 | wincmd J | normal ]n
command Gmergetool1 silent Gvdiffsplit | Ghide | normal ]n
