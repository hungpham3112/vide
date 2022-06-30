""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                             Plugin: Tagbar                                 "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
vim9script
nnoremap <silent> <F7> :TagbarToggle<CR>
g:tagbar_visibility_symbols = {
    \ 'public': 'O',
    \ 'protected': '!',
    \ 'private': 'X',
    \ }

g:tagbar_ctags_bin = '~\\scoop\\shims\\ctags.exe'
g:tagbar_map_showproto = ''
g:tagbar_position = 'leftabove vertical'
g:tagbar_singleclick = 1
g:tagbar_width = max([40, winwidth(0) / 4])
g:tagbar_wrap = 1
