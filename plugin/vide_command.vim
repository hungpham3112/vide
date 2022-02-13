"User-defined command:
command! VideInstall PlugInstall | set guifont=*

"Dump output help you debug and see error easier.
"Example: Dump verbose imap <Tab>
function! Dump(cmd)
    vnew
    setlocal buftype=nowrite bufhidden=delete noswapfile
    let result = trim(execute(a:cmd))
    put! =result
    1
endfunction
command! -nargs=* -complete=command Dump call Dump(<q-args>)


