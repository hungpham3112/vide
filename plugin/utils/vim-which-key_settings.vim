""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                             Plugin: Vim-which_key                          "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"TODO: In progress
autocmd! User vim-which-key call which_key#register('<Space>', 'g:which_key_map')
"let g:which_key_map.t = {
"      \ 'name' : '+terminal' ,
"      \ ';' : [':FloatermNew --wintype=popup --height=6'        , 'terminal'],
"      \ 'f' : [':FloatermNew fzf'                               , 'fzf'],
"      \ 'g' : [':FloatermNew lazygit'                           , 'git'],
"      \ 'd' : [':FloatermNew lazydocker'                        , 'docker'],
"      \ 'n' : [':FloatermNew node'                              , 'node'],
"      \ 'N' : [':FloatermNew nnn'                               , 'nnn'],
"      \ 'p' : [':FloatermNew python'                            , 'python'],
"      \ 'r' : [':FloatermNew ranger'                            , 'ranger'],
"      \ 't' : [':FloatermToggle'                                , 'toggle'],
"      \ 'y' : [':FloatermNew ytop'                              , 'ytop'],
"      \ 's' : [':FloatermNew ncdu'                              , 'ncdu'],
"      \ }
