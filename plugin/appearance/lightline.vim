""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                             Plugin: Lightline                              "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:lightline#bufferline#unnamed = 'Unnamed'
let g:lightline#bufferline#enable_devicons = 1
let g:lightline#bufferline#buffer_filter = "LightlineBufferlineFilter"
let g:lightline = {
    \ 'colorscheme': 'edge',
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

function LightlineBufferlineFilter(buffer)
   return getbufvar(a:buffer, '&buftype') !=# 'terminal'
endfunction

"Use autocmd to force lightline update.
autocmd User CocStatusChange,CocDiagnosticChange call lightline#update()
if has("gui_running")
    let g:lightline.separator = { 'left': '', 'right': '' }
    let g:lightline.subseparator = { 'left': '|', 'right': '|' }
    let g:lightline.tabline_separator = g:lightline.separator
    let g:lightline.tabline_subseparator = g:lightline.subseparator
elseif has('termguicolors')
    let g:lightline.separator = { 'left': '', 'right': '' }
    let g:lightline.subseparator = { 'left': '', 'right': '' }
    let g:lightline.tabline_separator = g:lightline.separator
    let g:lightline.tabline_subseparator = g:lightline.subseparator
endif
