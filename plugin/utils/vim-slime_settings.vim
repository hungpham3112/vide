""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                             Plugin: Vim-slime                              "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
vim9script
g:slime_target = "vimterminal"
g:slime_vimterminal_config = {"vertical": 55, "term_finish": "close"}
autocmd FileType julia g:slime_vimterminal_cmd = "julia"
autocmd FileType python g:slime_vimterminal_cmd = "python"
autocmd FileType javascript g:slime_vimterminal_cmd = "node"
