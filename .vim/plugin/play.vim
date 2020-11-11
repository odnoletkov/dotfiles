" Modes:
"     :Play cmd - pipe current buffer through cmd
"     :Play - pipe current setup again (or same cmd with current buffer?)
"     :Play! - ?
"     :Play bash -f % - ?
"     :Play bash -f # - ?

" Add to input buffer:
" command! -nargs=1 -complete=file Load %delete | read <args> | 0delete | silent saveas! <args> | filetype detect

" TODO: Support :Play cmd -f #
" TODO: Support :Play cmd $
" TODO: Support :<range>Play
" TODO: Keep scroll position in the output
" TODO: Support <mods>

function! MyHandler(channel) abort
    let job_info = job_info(ch_getjob(a:channel))
    if job_info.exitval == -1 
        return
    endif

    let out_buf = ch_getbufnr(a:channel, 'out')

    if job_info.exitval != 0
        call appendbufline(out_buf, '$', 'Exit: ' . job_info.exitval)
    endif

    call setbufvar(out_buf, '&modifiable', 0)
    call setbufvar(out_buf, '&readonly', 1)

    call setbufvar(out_buf, '&filetype', matchstr(job_info.cmd[2], '\<\(ft\|filetype\)=\zs\w\+'))
endfunction

function! s:Play(...) abort

    let opts = #{
                \ in_io: 'buffer',
                \ in_buf: bufnr(),
                \ out_io: 'buffer',
                \ err_io: 'buffer',
                \ close_cb: 'MyHandler',
                \ }

    if len(a:000)
        let cmd = [&shell, &shellcmdflag, a:1]
    elseif exists('g:job')
        let cmd = job_info(g:job).cmd
    else
        throw 'no existing job'
    endif

    if exists('g:job')
        call job_stop(g:job)

        let opts.out_buf = ch_getbufnr(g:job, 'out')
        if bufname(opts.out_buf) !=# cmd[2]
            unlet opts.out_buf
        endif
    endif

    if !exists('opts.out_buf')
        let opts.out_buf = bufadd(cmd[2])
        execute printf('autocmd BufWinLeave <buffer=%d> autocmd! play', opts.out_buf)
        " TODO: cleanup autocmd
        call setbufvar(opts.out_buf, '&bufhidden', 'delete')
        call setbufvar(opts.out_buf, '&filetype', matchstr(cmd[2], '\<\(ft\|filetype\)=\zs\w\+'))
    endif

    " can not use opts.out_modifiable because it stops error writing errors
    " let opts.out_modifiable = 0
    call setbufvar(opts.out_buf, '&modifiable', 1)

    let opts.err_buf = opts.out_buf

    let g:job = job_start(cmd, opts)

    silent call deletebufline(opts.out_buf, 1, '$')
    " noautocmd to disable fugitive's BufNewFile
    noautocmd silent execute 'pedit #' . opts.out_buf

    augroup play
        autocmd! play * <buffer>
        autocmd TextChanged,InsertLeave <buffer> call s:Play()
    augroup END

    if !exists('b:dispatch')
        let b:dispatch=":Play"
    endif

endfunction

command! -nargs=? Play call s:Play(<f-args>)
