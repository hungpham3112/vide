set guifont=Cousine_NF:h12:cANSI:qDRAFT
au guienter * simalt ~x   "open maximum size of gvim
let g:lightline.colorscheme = 'edge'
let g:lightline.separator = { 'left': '', 'right': '' }
let g:lightline.subseparator = { 'left': '|', 'right': '|' }
let g:lightline.tabline_separator = g:lightline.separator
let g:lightline.tabline_subseparator = g:lightline.subseparator
try
    colorscheme edge
catch 
    colorscheme default
endtry
