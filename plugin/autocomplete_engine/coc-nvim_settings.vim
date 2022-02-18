""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                             Plugin: Coc-nvim                               "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Completion settings
"use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <TAB>
    \ pumvisible() ? coc#_select_confirm() :
    \ coc#expandableOrJumpable() ?
    \ "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
\ <SID>check_back_space() ? "\<TAB>" :
\ coc#refresh()

inoremap <silent><expr> <TAB>
\ pumvisible() ? "\<C-n>" :
\ <SID>check_back_space() ? "\<TAB>" :
\ coc#refresh()

"Select the first completion item and confirm the completion when no item has been selected:
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
    \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

let g:coc_snippet_next = '<M-l>'
let g:coc_snippet_prev = '<M-h>'

if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-d> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-u> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-d> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-u> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-d> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-u> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
    if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
    elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
    else
    execute '!' . &keywordprg . " " . expand('<cword>')
    endif
endfunction

autocmd CursorHold * silent call CocActionAsync('highlight')
let g:coc_global_extensions = ['coc-json',
            \'coc-vimlsp',
            \'coc-snippets',
            \'coc-rust-analyzer',
            \'coc-emmet',
            \'coc-pyright',
            \'coc-clangd',
            \'coc-omnisharp',
            \'coc-tsserver',
            \'coc-markdownlint',]
