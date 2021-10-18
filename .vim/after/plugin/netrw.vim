let g:netrw_http_cmd="curl"
let g:netrw_http_xcmd="-n -L -o"

function! s:OpenSim() abort
    let g:netrw_browsex_viewer = 'sh -c "xcrun simctl openurl booted \"\$0\" && open -a Simulator.app"'
    call netrw#BrowseX(expand(expand('<cfile>')), 0)
    unlet g:netrw_browsex_viewer
endfunction
nnoremap <silent> gX :<C-U>call <SID>OpenSim()<CR>
