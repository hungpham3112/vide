""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                             Plugin: Autoresize                             "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"TODO: are on the way
let g:autoresize_disabled_filetypes = ['nerdtree',]
let g:autoresize_height = 50
let g:autoresize_width = 100
if exists(g:autoresize_width)
    autocmd WinEnter * call autoresize#resize
endif
