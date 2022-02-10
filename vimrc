"TODO: 2022 Make this vimrc to an IDE
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                               $$\    $$\ $$$$$$\ $$$$$$$\  $$$$$$$$\                            "
"                               $$ |   $$ |\_$$  _|$$  __$$\ $$  _____|                           "
"                               $$ |   $$ |  $$ |  $$ |  $$ |$$ |                                 "
"                               \$$\  $$  |  $$ |  $$ |  $$ |$$$$$\                               "
"                                \$$\$$  /   $$ |  $$ |  $$ |$$  __|                              "
"                                 \$$$  /    $$ |  $$ |  $$ |$$ |                                 "
"                                  \$  /   $$$$$$\ $$$$$$$  |$$$$$$$$\                            "
"                                   \_/    \______|\_______/ \________|                           "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/vimfiles/plugged')

"Snippet
Plug 'honza/vim-snippets'

"Tree explorer
Plug 'https://github.com/preservim/nerdtree.git'
Plug 'https://github.com/preservim/tagbar.git'
Plug 'https://github.com/preservim/nerdcommenter.git'
Plug 'https://github.com/PhilRunninger/nerdtree-visual-selection.git'

"IndentLine
Plug 'https://github.com/Yggdroot/indentLine.git'

"Float terminal
Plug 'https://github.com/voldikss/vim-floaterm.git'
Plug 'voldikss/fzf-floaterm'

"Powerful Movement
Plug 'https://github.com/easymotion/vim-easymotion.git'
Plug 'haya14busa/incsearch.vim'
Plug 'haya14busa/incsearch-easymotion.vim'
Plug 'haya14busa/incsearch-fuzzy.vim'
Plug 'haya14busa/vim-asterisk'

"fuzzy file findfing fun
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

"Theme for vim
Plug 'dracula/vim',{'as':'dracula'}
Plug 'https://github.com/morhetz/gruvbox.git', {'as':'gruvbox'}
Plug 'https://github.com/tomasr/molokai.git', {'as':'molokai'}
Plug 'https://github.com/rakr/vim-one.git', {'as':'one'}
Plug 'https://github.com/altercation/vim-colors-solarized.git', {'as':'solarized'}
Plug 'https://github.com/sainnhe/edge.git', {'as': 'edge'}
Plug 'https://github.com/sainnhe/everforest.git', {'as': 'everforest'}
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }

"Autocomplete
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"TODO: emmet is testing
Plug 'mattn/emmet-vim'

"Vim-brackets
Plug 'https://github.com/tpope/vim-surround.git'

"Auto pairs
Plug 'jiangmiao/auto-pairs'

"Statusline
Plug 'itchyny/lightline.vim'
Plug 'https://github.com/itchyny/vim-gitbranch.git'

"Icon for vim
Plug 'https://github.com/ryanoasis/vim-devicons.git'
Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }

"Git
Plug 'https://github.com/tpope/vim-fugitive.git'

"Animation and resize
Plug 'https://github.com/kovetskiy/vim-autoresize.git'

"Opening screen
"TODO: testing
"Plug 'liuchengxu/vim-clap', { 'do': ':Clap install-binary!' }

"Jupyter Notebook
"TODO: testing
"Plug 'https://github.com/jupyter-vim/jupyter-vim.git'

"Markdown preview
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

"Display mapping
Plug 'https://github.com/liuchengxu/vim-which-key.git'

"Benchmark 
Plug 'dstein64/vim-startuptime'

"Smoothie scroll
"TODO: in progress
"Plug 'psliwka/vim-smoothie'

"Startup screen
Plug 'mhinz/vim-startify'

call plug#end()

"General settings
set shell=c:\\Windows\\System32\\cmd.exe
set noswapfile
set termguicolors
set updatetime=300  "Make autocomplete faster"
set timeout timeoutlen=1000 ttimeoutlen=100
set linespace=8
set textwidth=120
set belloff=all "Disable all sound effect"
set t_Co=256
set history=200
set laststatus=2
autocmd FileType * set fo-=o

augroup vim_title
    au!
    auto BufEnter * let &titlestring = hostname() . "/" . expand("%:p")
    set title titlestring=%<%F%=%l/%L-%P titlelen=70
augroup END
" set list listchars=tab:»·,trail:·,nbsp:·

"Workspace
autocmd BufEnter * silent! lcd %:p:h

"Auto save file
set autowriteall
set autoread
set splitbelow splitright "Open file in reasonable location
set encoding=utf-8
set backspace=indent,eol,start "Delete using backspace
set autoindent
set noshowmode "turn off status line"
set hidden
set scrolloff=8 "scroll with 5 line at the end of page"

"Search highlight
augroup smart_cursorcolumn
    au!
    au WinLeave * set nocursorline nocursorcolumn
    au WinEnter * set cursorline cursorcolumn
augroup END

augroup dynamic_highlight
    au!
    set incsearch
    autocmd CmdlineEnter /,\? :set hlsearch
    autocmd CmdlineLeave /,\? :set nohlsearch
augroup END

"Indexing settings
set relativenumber
set number
set signcolumn=number "display signs in the 'number' column

"Indent settings
set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab

"Commandline completions
set wildmenu
set wildoptions=tagfile
set wildignorecase
set viewoptions="folds,cursor,curdir"
augroup dynamic_smartcase
    au!
    set ignorecase "ignore case in search patterns
    autocmd CmdLineEnter : set nosmartcase
    autocmd CmdLineLeave : set smartcase
augroup END

"Open Help in vertical
autocmd BufWinEnter * if &buftype == 'help' | wincmd L | endif

"Status line settings
set guioptions=
set shortmess=cT
set cmdheight=2  "1 is the best but 2 can disable 'Press Enter'"
let mapleader = " "  "Map leader to Space for convenience
au guienter * simalt ~x   "open maximum size of gvim
filetype plugin indent on


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                             Plugin: Lightline                              "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
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
    \   'gitbranch': 'gitbranch#name'
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

"Edge colorscheme settings
let g:edge_style = 'neon'
let g:edge_enable_italic = 0
let g:edge_disable_italic_comment = 1
let g:edge_lightline_disable_bold = 1

"Appearance
"Vim in terminal
if !has('gui_running') && has('termguicolors')
    set termguicolors
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
        \   'gitbranch': 'gitbranch#name'
        \ },
    \ }
    let g:lightline.separator = { 'left': '', 'right': '' }
    let g:lightline.subseparator = { 'left': '', 'right': '' }
    let g:webdevicons_enable = 1
    colorscheme everforest
elseif has('gui_running')
    " set guifont=* "Choose font
    " set guifont?  "Currently font
    " The configuration options should be placed before `colorscheme edge`.
    set guifont=Cousine_NF:h12:cANSI:qDRAFT
    colorscheme edge
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                             Plugin: NERDTree                               "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Short cuts
nnoremap <F8> :NERDTreeFind<CR>
nnoremap <C-t> :silent:NERDTreeToggle<CR>

" Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * silent if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" If another buffer tries to replace NERDTree, put it in the other window, and bring back NERDTree.
autocmd BufEnter * silent if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
    \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif

let NERDTreeIgnore = ['\.DAT$[[file]]', '\.LOG1$[[file]]', '\.LOG1$[[file]]','\c^ntuser\..*']
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'
let g:NERDTreeWinSize = 40
let g:NERDTreeWinPos = "right"
let g:webdevicons_enable_nerdtree = 1
let g:webdevicons_conceal_nerdtree_brackets = 1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                               RUN CODE                                     "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
augroup exe_code
    au!
    nmap <Enter> <nop>
    au FileType c nnoremap <buffer> <silent> <Enter> :!clang % -o %<.exe && %<.exe <CR><CR>
    au FileType cpp nnoremap <buffer> <silent> <Enter> :!clang++ % -o %<.exe && %<.exe <CR><CR>
    au Filetype python nnoremap <buffer> <silent> <Enter> :exec '!python' shellescape(@%, 1)<Cr><CR>
    au Filetype rust nnoremap <buffer> <silent> <Enter> :!cargo run <Cr><CR>
    au Filetype html nnoremap <buffer> <silent> <Enter> :!start %<Cr><CR>
    au Filetype markdown nnoremap <buffer> <silent> <Enter> :MarkdownPreview<Cr><CR>
    au Filetype lua nnoremap <buffer> <silent> <Enter> :!lua %<Cr><CR>
augroup END

"Keybindings
nnoremap <leader>x :x<Cr>
nnoremap <leader>w :up<Cr>
nnoremap <C-a> ggVG<Cr>
nmap <Space> <nop>
tnoremap <Esc> <C-\><C-n>

"User-defined command:
command! VideInstall PlugInstall | set guifont=*

"Navigate block of code
xnoremap J :m '>+1<CR>gv=gv
xnoremap K :m '<-2<CR>gv=gv
xnoremap H <gv
xnoremap L >gv


"run block of code in visual mose
vnoremap <Enter> :w !

"Negate u in visual mode
"IMPORTANT!!!
vnoremap u <nul>

"Command mode more ergonomic
nnoremap ; :
vnoremap ; :

"Resize
nnoremap <Up> :resize +1<CR>
nnoremap <Down> :resize -1<CR>
nnoremap <Left> :vert resize +2 <CR>
nnoremap <Right> :vert resize -2 <CR>

"Vimrc config
nnoremap <leader>ev :edit $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>

"Nagvigation buffers
nnoremap <leader>1 1gt
nnoremap <leader>2 2gt
nnoremap <leader>3 3gt
nnoremap <leader>4 4gt
nnoremap <leader>5 5gt

"Copy paste with clipboard
set clipboard="unnameplus"
noremap <C-p> "*p
nnoremap Y "*y$
nnoremap y "*y
xnoremap y "*y

"Dump output help you debug and see error easier.
"Example: Dump verbose imap <Tab>
function! Dump(cmd)
    vnew
    setlocal buftype=nowrite bufhidden=delete noswapfile
    let result = trim(execute(a:cmd))
    put! =result
    1
endfunction
command! -nargs=* -complete=command Dump call Dump(<q-args>)
nnoremap <leader>d :Dump 

"Buffers navigation
nnoremap <S-h> :bpre<CR>
nnoremap <S-l> :bnext<CR>

"Split navigation
nnoremap <leader>j <C-W>j
nnoremap <leader>k <C-W>k
nnoremap <leader>l <C-W>l
nnoremap <leader>h <C-W>h

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
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                             Plugin: Fuzzy-finder                           "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"TODO: in progress
"nmap <C-f> :Files<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                             Plugin: indentLine                               "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:indentLine_setColors = 1
let g:indentLine_char = '│'
let g:indentLine_fileTypeExclude = ['dashboard']

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                             Plugin: AutoPairs                              "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:AutoPairsFlyMode = 1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                             Plugin: Floaterm                               "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:floaterm_keymap_toggle = '<F1>'
let g:floaterm_keymap_next   = '<F2>'
let g:floaterm_keymap_prev   = '<F3>'
let g:floaterm_keymap_new    = '<F4>'

" Floaterm
let g:floaterm_gitcommit='floaterm'
let g:floaterm_autoinsert=1
let g:floaterm_width=0.8
let g:floaterm_height=0.8
let g:floaterm_autoclose=1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                             Plugin: Vim-which_key                          "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"TODO: In progress
autocmd! User vim-which-key call which_key#register('<Space>', 'g:which_key_map')
"let g:which_key_map.t = {
"      \ 'name' : '+terminal' ,
"      \ ';' : [':FloatermNew --wintype=popup --height=6'        , 'terminal'],
"      \ 'f' : [':FloatermNew fzf'                               , 'fzf'],
"      \ 'g' : [':FloatermNew lazygit'                           , 'git'],
"      \ 'd' : [':FloatermNew lazydocker'                        , 'docker'],
"      \ 'n' : [':FloatermNew node'                              , 'node'],
"      \ 'N' : [':FloatermNew nnn'                               , 'nnn'],
"      \ 'p' : [':FloatermNew python'                            , 'python'],
"      \ 'r' : [':FloatermNew ranger'                            , 'ranger'],
"      \ 't' : [':FloatermToggle'                                , 'toggle'],
"      \ 'y' : [':FloatermNew ytop'                              , 'ytop'],
"      \ 's' : [':FloatermNew ncdu'                              , 'ncdu'],
"      \ }


" Tagbar
"TODO:In progress
"let g:tagbar_ctags_bin = 'C:\Users\hungpham\Downloads\Programs\C_tag\ctags.exe'
"if !exists(':Tagbar') || rust#tags#IsUCtags()
"    finish
"endif
"
"" vint: -ProhibitAbbreviationOption
"let s:save_cpo = &cpo
"set cpo&vim
"" vint: +ProhibitAbbreviationOption
"
"if !exists('g:tagbar_type_rust')
"    let g:tagbar_type_rust = {
"                \ 'ctagstype' : 'rust',
"                \ 'kinds' : [
"                \'T:types',
"                \'f:functions',
"                \'g:enumerations',
"                \'s:structures',
"                \'m:modules',
"                \'c:constants',
"                \'t:traits',
"                \'i:trait implementations',
"                \ ]
"                \ }
"endif
"
"" In case you've updated/customized your ~/.ctags and prefer to use it.
"if !get(g:, 'rust_use_custom_ctags_defs', 0)
"    let g:tagbar_type_rust.deffile = expand('<sfile>:p:h:h:h') . '/ctags/rust.ctags'
"endif
"
"" vint: -ProhibitAbbreviationOption
"let &cpo = s:save_cpo
"unlet s:save_cp
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                             Plugin: Tagbar                                 "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"TODO: In progress
nnoremap <silent> <F7> :TagbarToggle<CR>
let g:tagbar_width = 43
let g:tagbar_visibility_symbols = {
    \ 'public'    : 'O',
    \ 'protected' : '!',
    \ 'private'   : 'X'
    \ }
let g:tagbar_singleclick = 1
let g:tagbar_wrap = 1
let g:tagbar_map_showproto = ''

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                             Plugin: Autoresize                             "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"TODO: are on the way
let g:autoresize_disabled_filetypes = ['nerdtree',]

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                             Plugin: Emmet                                  "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"TODO: In progress
let g:user_emmet_mode = 'n'
let g:user_emmet_leader_key = ","

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                             Plugin: Markdown-preview                       "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"TODO: In progress
let g:mkdp_auto_close = 0
let g:mkdp_command_for_global = 1
let g:mkdp_preview_options = {
    \ 'mkit': {},
    \ 'katex': {},
    \ 'uml': {},
    \ 'maid': {},
    \ 'disable_sync_scroll': 0,
    \ 'sync_scroll_type': 'middle',
    \ 'hide_yaml_meta': 1,
    \ 'sequence_diagrams': {},
    \ 'flowchart_diagrams': {},
    \ 'content_editable': v:false,
    \ 'disable_filename': 0
    \ }
let g:mkdp_markdown_css = ''
let g:mkdp_highlight_css = ''
let g:mkdp_port = ''
let g:mkdp_page_title = '「${name}」'
let g:mkdp_filetypes = ['markdown']

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                             Plugin: Hexokinase                             "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"TODO: In progress
if exists('Hexokinase')
    autocmd BufEnter * HexokinaseTurnOn
endif

let g:Hexokinase_highlighters = [
\   'foregroundfull',
\ ]

let g:Hexokinase_optInPatterns = [
\     'full_hex',
\     'triple_hex',
\     'rgb',
\     'rgba',
\     'hsl',
\     'hsla',
\     'colour_names',
\ ]

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                             Plugin: Vim-startify                           "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:webdevicons_enable_startify = 1

