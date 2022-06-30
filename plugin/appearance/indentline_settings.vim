""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                             Plugin: indentLine                             "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
vim9script
g:indentLine_char = '│'
g:indentLine_fileTypeExclude = ['startify', 'text', 'help']
g:indentLine_bufTypeExclude = ['help', 'terminal']
g:indentLine_faster = 1
autocmd FileType json,markdown g:indentLine_setConceal = 0
