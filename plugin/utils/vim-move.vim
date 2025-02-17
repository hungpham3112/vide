""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                             Plugin: Vim-move                               "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
vim9script
# Navigate block of code
g:move_map_keys = 0
g:move_key_modifier = 'S'
g:move_undo_join = 0
xmap <S-h> <gv
xmap <S-l> >gv
xmap <S-k> <Plug>MoveBlockUp
xmap <S-j> <Plug>MoveBlockDown
