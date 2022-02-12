""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                               RUN CODE                                     "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
augroup exe_code
    au!
    nmap <Enter> <nop>
    au FileType c nnoremap <buffer> <silent> <Enter> :!clang % -o %<.exe && %<.exe <CR><CR>
    au FileType cpp nnoremap <buffer> <silent> <Enter> :!clang++ % -o %<.exe && %<.exe <CR><CR>
    au Filetype python nnoremap <buffer> <silent> <Enter> :exec '!python' shellescape(@%, 1)<Cr><CR>
    au Filetype rust nnoremap <buffer> <silent> <Enter> :!cargo run <Cr><CR>
    au Filetype html nnoremap <buffer> <silent> <Enter> :!start %<Cr><CR>
    au Filetype markdown nnoremap <buffer> <silent> <Enter> :MarkdownPreview<Cr><CR>
    au Filetype lua nnoremap <buffer> <silent> <Enter> :!lua %<Cr><CR>
augroup END
