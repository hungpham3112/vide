""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                             Plugin: Vim-move                               "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
vim9script
# Navigate block of code
g:move_map_keys = 0
g:move_key_modifier = 'S'
g:move_undo_join = 0
xnoremap < <gv
xnoremap > >gv
xmap <S-k> <Plug>MoveBlockUp
xmap <S-h> <Plug>MoveBlockLeft
xmap <S-j> <Plug>MoveBlockDown
xmap <S-l> <Plug>MoveBlockRight
