""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                             Plugin: indentLine                             "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:indentLine_char = '│'
let g:indentLine_fileTypeExclude = ['startify', 'text', 'help']
let g:indentLine_bufTypeExclude = ['help', 'terminal']
let g:indentLine_faster = 1
autocmd FileType json,markdown let g:indentLine_setConceal = 0
