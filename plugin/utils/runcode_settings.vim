""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                               RUN CODE                                     "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
augroup exe_code
    au!
    nmap <Enter> <nop>
    if !has('gui_running') && has('termguicolors')
        au FileType c nnoremap <buffer> <Enter> :up <bar> silent \!clear \!clang % -o %<.exe  && ./%<.exer<CR>
        au FileType cpp nnoremap <buffer> <silent> <Enter> :up <bar> vert term clang++ % ' -o ' %<.exe && %<.exe <CR>
        au Filetype python nnoremap <buffer> <silent> <Enter> :up <bar> vert term python %<Cr>
        au Filetype rust nnoremap <buffer> <silent> <Enter> :up <bar> vert term cargo run <Cr>
        au Filetype html nnoremap <buffer> <silent> <Enter> :up <bar> !start %<Cr>
        au Filetype markdown nnoremap <buffer> <silent> <Enter> :MarkdownPreview<Cr>
        au Filetype lua nnoremap <buffer> <silent> <Enter> :up <bar> vert term lua %<Cr>
    elseif has('gui_running')
        au FileType c nnoremap <buffer> <silent> <Enter> :!clang % -o %<.exe && %<.exe <CR><CR>
        au FileType cpp nnoremap <buffer> <silent> <Enter> :!clang++ % -o %<.exe && %<.exe <CR><CR>
        au Filetype python nnoremap <buffer> <silent> <Enter> :exec '!python' shellescape(@%, 1)<Cr><CR>
        au Filetype rust nnoremap <buffer> <silent> <Enter> :!cargo run <Cr><CR>
        au Filetype html nnoremap <buffer> <silent> <Enter> :!start %<Cr><CR>
        au Filetype markdown nnoremap <buffer> <silent> <Enter> :MarkdownPreview<Cr><CR>
        au Filetype lua nnoremap <buffer> <silent> <Enter> :!lua %<Cr><CR>
    endif
augroup END
