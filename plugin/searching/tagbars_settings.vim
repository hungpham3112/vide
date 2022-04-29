""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                             Plugin: Tagbar                                 "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <silent> <F7> :TagbarToggle<CR>
let g:tagbar_visibility_symbols = {
    \ 'public'    : 'O',
    \ 'protected' : '!',
    \ 'private'   : 'X'
    \ }

let g:tagbar_ctags_bin = '~\\scoop\\shims\\ctags.exe'
let g:tagbar_map_showproto = ''
let g:tagbar_position = 'leftabove vertical'
let g:tagbar_singleclick = 1
let g:tagbar_width = max([40, winwidth(0) / 4])
let g:tagbar_wrap = 1
