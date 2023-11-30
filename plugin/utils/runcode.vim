vim9script
augroup exe_code
    au!
    if !has("unix")
        if !has('gui_running') && has('termguicolors')
            au FileType c nnoremap <buffer> <silent> <Enter> :w <bar> vert term ++shell clang -Wall -std=c11 % -o %<.exe && %<.exe && del %<.exe<CR>
            au FileType cpp nnoremap <buffer> <silent> <Enter> :w <bar> vert term ++shell clang++ -Wall -std=c++17 -stdlib=libc++ % -o %<.exe && %<.exe && del %<.exe<CR>
            au FileType cuda nnoremap <buffer> <silent> <Enter> :w <bar> vert term ++shell nvcc % -o ./%< && ./%<<CR>
            au Filetype html nnoremap <buffer> <silent> <Enter> :w <bar> !start %<Cr>
            au Filetype julia nnoremap <buffer> <silent> <Enter> :w <bar> vert term ++shell julia %<Cr>
            au Filetype lua nnoremap <buffer> <silent> <Enter> :w <bar> vert term ++shell lua %<Cr>
            au Filetype markdown nnoremap <buffer> <silent> <Enter> :MarkdownPreview<Cr>
            au Filetype python nnoremap <buffer> <silent> <Enter> :w <bar> vert term ++shell python %<Cr>
            au Filetype rust nnoremap <buffer> <silent> <Enter> :w <bar> vert term ++shell cargo run<Cr>
            au Filetype vim nnoremap <buffer> <silent> <Enter> :w <bar> source <Cr>
        elseif has('gui_running')
            au FileType c nnoremap <buffer> <silent> <Enter> :w <bar> !clang -Wall -std=c11 % -o %<.exe && %<.exe<CR><CR>
            au FileType cpp nnoremap <buffer> <silent> <Enter> :w <bar> !clang++ -Wall -std=c++17 % -o %<.exe && %<.exe<CR><CR>
            au FileType cuda nnoremap <buffer> <silent> <Enter> :w <bar> !nvcc % -o %<.exe && %<.exe<CR><CR>
            au Filetype html nnoremap <buffer> <silent> <Enter> :w <bar> !start %<Cr><CR>
            au Filetype julia nnoremap <buffer> <silent> <Enter> :w <bar> !julia %<Cr><CR>
            au Filetype lua nnoremap <buffer> <silent> <Enter> :w <bar> !lua %<Cr><CR>
            au Filetype markdown nnoremap <buffer> <silent> <Enter> :w <bar> MarkdownPreview<Cr><CR>
            au Filetype python nnoremap <buffer> <silent> <Enter> :w <bar> exec '!python' shellescape(@%, 1)<Cr><CR>
            au Filetype rust nnoremap <buffer> <silent> <Enter> :w <bar> !cargo run<Cr><CR>
            au Filetype vim nnoremap <buffer> <silent> <Enter> :w <bar> source <Cr>
        endif
    elseif has("unix")
        au FileType c nnoremap <buffer> <silent> <Enter> :w <bar> vert term ++shell clang -Wall -std=c11 % -o ./%< && ./%< && rm ./%<<CR>
        au FileType cpp nnoremap <buffer> <silent> <Enter> :w <bar> vert term ++shell clang++ -Wall -std=c++17 -stdlib=libc++ % -o ./%< && ./%< && rm ./%<<CR>
        au FileType cuda nnoremap <buffer> <silent> <Enter> :w <bar> vert term ++shell nvcc % -o ./%< && ./%<<CR>
        au Filetype html nnoremap <buffer> <silent> <Enter> :w <bar> !start %<Cr>
        au Filetype julia nnoremap <buffer> <silent> <Enter> :w <bar> vert term ++shell julia %<Cr>
        au Filetype lua nnoremap <buffer> <silent> <Enter> :w <bar> vert term ++shell lua %<Cr>
        au Filetype markdown nnoremap <buffer> <silent> <Enter> :MarkdownPreview<Cr>
        au Filetype python nnoremap <buffer> <silent> <Enter> :w <bar> vert term ++shell python %<Cr>
        au Filetype rust nnoremap <buffer> <silent> <Enter> :w <bar> vert term ++shell cargo run<Cr>
        au Filetype vim nnoremap <buffer> <silent> <Enter> :w <bar> source <Cr>
    endif
augroup END
