""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                             Plugin: NERDTree                               "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""Close the tab if NERDTree is the only window remaining in it.
"autocmd BufEnter * silent if exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" If another buffer tries to replace NERDTree, put it in the other window, and bring back NERDTree.
autocmd BufEnter * silent if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
    \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif

let NERDTreeDirArrowCollapsible=" "
let NERDTreeDirArrowExpandable=" "
let NERDTreeIgnore = ['\.DAT$[[file]]', '\.LOG1$[[file]]', '\.LOG1$[[file]]','\c^ntuser\..*']
let NERDTreeShowHidden = 1
let g:NERDTreeWinPos = "right"
let g:NERDTreeWinSize = max([37, winwidth(0) / 4])
let g:nerdtree_sync_cursorline = 1

function! NerdTreeToggleFind()
    if exists("g:NERDTree") && g:NERDTree.IsOpen()
        silent NERDTreeClose
    elseif bufexists(expand('%'))
        silent NERDTreeFind | NERDTreeCWD
    else
        silent NERDTree
    endif
endfunction
