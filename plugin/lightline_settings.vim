""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                             Plugin: Lightline                              "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:lightline = {
    \ 'colorscheme': 'everforest',
    \ 'active': {
    \   'left': [ [ 'mode', 'paste' ],
    \             [ 'cocstatus', 'readonly' ],
    \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ],
    \ },
    \ 'component': {
    \   'filename': '%F',
    \ },
    \ 'component_function': {
    \   'cocstatus': 'coc#status',
    \   'filetype': 'MyFiletype',
    \   'fileformat': 'MyFileformat',
    \   'gitbranch': 'gitbranch#name',
    \ },
    \ 'tabline': {
    \   'left': [ ['buffers'] ],
    \ },
    \ 'component_expand': {
    \   'buffers': 'lightline#bufferline#buffers'
    \ },
    \ 'component_type': {
    \   'buffers': 'tabsel',
    \ },
\ }
function! MyFiletype()
    return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype . ' ' . WebDevIconsGetFileTypeSymbol() : 'no ft') : ''
endfunction

function! MyFileformat()
    return winwidth(0) > 70 ? (&fileformat . ' ' . WebDevIconsGetFileFormatSymbol()) : ''
endfunction

"Use autocmd to force lightline update.
autocmd User CocStatusChange,CocDiagnosticChange call lightline#update()
let g:lightline.separator = { 'left': '', 'right': '' }
let g:lightline.subseparator = { 'left': '', 'right': '' }
let g:lightline.tabline_separator = g:lightline.separator
let g:lightline.tabline_subseparator = g:lightline.subseparator
"let g:lightline#bufferline#show_number = 2
"let g:lightline#bufferline#composed_number_map = {
"\ 1:  '1', 2:  '2', 3:  '3', 4:  '4', 5:  '5',
"\ 6:  '6', 7:  '7', 8:  '8', 9:  '9', 10: '10',
"\ 11: '11', 12: '12', 13: '13', 14: '14', 15: '15',
"\ 16: '16', 17: '17', 18: '18', 19: '19', 20: '20'}
let g:lightline#bufferline#unnamed = 'Unnamed'
let g:lightline#bufferline#enable_devicons = 1
