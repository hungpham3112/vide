""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                             Plugin: Easymotion-Incsearch                   "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"TODO: In progress
function! s:config_easyfuzzymotion(...) abort
    return extend(copy({
    \   'converters': [incsearch#config#fuzzy#converter()],
    \   'modules': [incsearch#config#easymotion#module()],
    \   'keymap': {"\<CR>": '<Over>(easymotion)'},
    \   'is_expr': 0,
    \   'is_stay': 1
    \ }), get(a:, 1, {}))
endfunction
noremap <silent><expr> <Space>/ incsearch#go(<SID>config_easyfuzzymotion())
let g:EasyMotion_do_mapping = 0
let g:EasyMotion_use_smartsign_us = 1 " US layout
let g:EasyMotion_smartcase = 1
nmap s <Plug>(easymotion-overwin-f)
vmap s <Plug>(easymotion-s)
vmap j <Plug>(easymotion-j)
vmap k <Plug>(easymotion-k)
omap f <Plug>(easymotion-s)
omap t <Plug>(easymotion-t)
omap j <Plug>(easymotion-j)
omap k <Plug>(easymotion-k)
