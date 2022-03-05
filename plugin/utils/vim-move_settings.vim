""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                             Plugin: Vim-move                               "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"TODO: Testing
"Navigate block of code
let g:move_map_keys = 0
let g:move_key_modifier = 'S'
let g:move_undo_join = 0
xnoremap < <gv
xnoremap > >gv
xmap <S-k> <Plug>MoveBlockUp
xmap <S-h> <Plug>MoveBlockLeft
xmap <S-j> <Plug>MoveBlockDown
xmap <S-l> <Plug>MoveBlockRight

