""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                             Plugin: Vim-slime                              "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
vim9script
g:slime_target = "vimterminal"
g:slime_vimterminal_config = {"vertical": 55, "term_finish": "close"}
autocmd FileType javascript b:slime_vimterminal_cmd = "node"
autocmd FileType julia b:slime_vimterminal_cmd = "julia"
autocmd FileType python b:slime_vimterminal_cmd = "python"
autocmd FileType r b:slime_vimterminal_cmd = "r"
