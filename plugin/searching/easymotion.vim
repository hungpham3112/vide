""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                          Plugin: Easymotion-Incsearch                      "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! Config_easyfuzzymotion(...) abort
    return extend(copy({
    \   'converters': [incsearch#config#fuzzy#converter()],
    \   'modules': [incsearch#config#easymotion#module()],
    \   'keymap': {"\<CR>": '<Over>(easymotion)'},
    \   'is_expr': 0,
    \   'is_stay': 1
    \ }), get(a:, 1, {}))
endfunction

let g:EasyMotion_do_mapping = 0                  "Disable the default mappings.
let g:EasyMotion_smartcase = 1                   "Matching target keys by smartcase.
let g:EasyMotion_use_smartsign_us = 1            "Matching signs target keys by smartcase like.
let g:incsearch#auto_nohlsearch = 1              "Enable easymotion dynamic incsearch highlight.
