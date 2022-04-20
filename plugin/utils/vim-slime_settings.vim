""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                             Plugin: Vim-slime                              "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:slime_target = "vimterminal"
let g:slime_vimterminal_config = {"vertical": 55, "term_finish": "close"}
autocmd FileType julia let g:slime_vimterminal_cmd = "julia"
autocmd FileType python let g:slime_vimterminal_cmd = "python"
autocmd FileType javascript let g:slime_vimterminal_cmd = "node"
