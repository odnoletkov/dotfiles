autocmd BufNewFile,BufReadPost *
      \ if mapcheck('<CR>', 'I') ==# "" && &filetype !=# "qf"|
      \   nnoremap <silent> <buffer> <expr> <CR> v:count && !&readonly ? ':echo<CR>' : ':.Gblame -C10<CR>'|
      \ endif

nnoremap <silent> <Leader>ge :Gedit<CR>
nnoremap <silent> <Leader>gv :Gvdiffsplit<CR>
nnoremap <silent> <Leader>gV :Gvdiffsplit @<CR>
nnoremap <silent> <Leader>gs :Gedit :<CR>
nnoremap <silent> <Leader>gS :tab G<CR>
nnoremap <silent> <Leader>gb :Gblame<CR>
vnoremap <silent> <Leader>gb :Gblame<CR>
nnoremap <silent> <Leader>gcc :Gcommit<CR>
nnoremap <silent> <Leader>gc% :Gcommit %<CR>

nnoremap <Leader>gll :Gclog -20<CR>
nnoremap <Leader>gl1 :Gclog @{1}..<CR>
nnoremap <Leader>glu :Gclog @{U}..<CR>
nnoremap <Leader>gl% :Gclog --follow %<CR>
nnoremap <Leader>gls :Gclog --walk-reflogs stash<CR>
nnoremap <Leader>gl<Space> :Gclog<Space>
nnoremap <Leader>gl. :.Gclog<CR>
nnoremap <Leader>gl0 :0Gclog<CR>
vnoremap <Leader>gl :Gclog<CR>

nnoremap <Leader>gd1 :Git diff @{1}<CR>
nnoremap <Leader>gr1 :Git reset @{1}<CR>

command -bar Ghide unlet! w:fugitive_diff_restore | set bufhidden& | set diffopt-=closeoff | hide | set diffopt+=closeoff
command Gmergetool Gvdiffsplit! | Gvdiffsplit! :1 | wincmd J | normal ]n
command Gmergetool1 silent Gvdiffsplit | Ghide | normal ]n
command Gmergetool2 wincmd o
                  \| execute 'normal zt'
                  \| %s/^=======\_$\zs\_.\{-}\_^>>>>>>> .*$//
                  \| execute 'normal ``'
                  \| Gvdiffsplit! :1
                  \| Gvdiffsplit! :3
                  \| wincmd J
                  \| execute 'windo setlocal nofoldenable'
                  \| setlocal nodiff scrollbind cursorbind nowrap
