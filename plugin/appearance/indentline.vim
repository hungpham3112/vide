""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                             Plugin: indentLine                             "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
vim9script
g:indentLine_char = '│'
g:indentLine_showFirstIndentLevel = 2
g:indentLine_indentLevel = 30
g:indentLine_first_char = g:indentLine_char
g:indentLine_fileTypeExclude = ['startify', 'text', 'help']
g:indentLine_faster = 1
g:indentLine_color_tty_dark = 1
g:indentLine_bufTypeExclude = ['help', 'terminal']
autocmd FileType json,markdown g:indentLine_setConceal = 0
