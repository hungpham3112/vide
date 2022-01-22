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

" make sure you use single quotes
" shorthand notation; fetches https://github.com/junegunn/vim-easy-align
" plug 'junegunn/vim-easy-align'
" any valid git url is allowed
" plug 'https://github.com/junegunn/vim-github-dashboard.git'


" multiple plug commands can be written in a single line using | separators
Plug 'honza/vim-snippets'

" on-demand loading
Plug 'https://github.com/preservim/nerdtree.git'
Plug 'https://github.com/preservim/tagbar.git'
Plug 'https://github.com/preservim/nerdcommenter.git'
Plug 'https://github.com/PhilRunninger/nerdtree-visual-selection.git'
"plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" using a tagged release; wildcard allowed (requires git 1.9.2 or above)
" plug 'fatih/vim-go', { 'tag': '*' }

" plugin optionds
" plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }
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

" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'

"Theme for vim
Plug 'dracula/vim',{'as':'dracula'}
Plug 'https://github.com/morhetz/gruvbox.git', {'as':'gruvbox'}
Plug 'https://github.com/tomasr/molokai.git', {'as':'molokai'}
Plug 'https://github.com/rakr/vim-one.git', {'as':'one'}
Plug 'https://github.com/altercation/vim-colors-solarized.git', {'as':'solarized'}
Plug 'https://github.com/sainnhe/edge.git', {'as': 'edge'}
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }

"Autocomplete
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'mattn/emmet-vim'

"Language server protocol
"Plug 'prabirshrestha/vim-lsp'
"Plug 'mattn/vim-lsp-settings'

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
"Plug 'camspiers/animate.vim'
"Plug 'camspiers/lens.vim'

"Opening screen
"Plug 'glepnir/dashboard-nvim'
"Plug 'liuchengxu/vim-clap', { 'do': has('win32') ? 'cargo build --release' : 'make' }
Plug 'liuchengxu/vim-clap', { 'do': ':Clap install-binary!' }

"Jupyter Notebook
"TODO: Test
Plug 'https://github.com/jupyter-vim/jupyter-vim.git'

"Markdown preview
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

"ASCII Art
"TODO: Testing
"Plug 'https://github.com/willchao612/vim-diagon.git' 

"Display mapping
Plug 'https://github.com/liuchengxu/vim-which-key.git'

"Smoothie scroll
"TODO: in progress
Plug 'psliwka/vim-smoothie'

Plug 'mhinz/vim-startify'

"Initialize plugin system
call plug#end()

"General settings
syntax enable
set nocompatible
set noswapfile
"set background=dark
set termguicolors
set updatetime=300  "Make autocomplete faster"
set timeout timeoutlen=1000 ttimeoutlen=100
set linespace=8
set textwidth=120
set belloff=all "Disable all sound effect"
autocmd FileType * set fo-=o
"set scrollbind
"set scrolloff
"set shell=C:/Users/hungpham/AppData/Local/Microsoft/WindowsApps/wt.exe

augroup vim_title
    au!
    auto BufEnter * let &titlestring = hostname() . "/" . expand("%:p")
    set title titlestring=%<%F%=%l/%L-%P titlelen=70
augroup END
" set list listchars=tab:»·,trail:·,nbsp:·

"Workspace 
"set autochdir
autocmd BufEnter * silent! lcd %:p:h

"Auto save file
set autowriteall
set autoread

"Open file in reasonable location
set splitbelow
set splitright
set encoding=utf-8

"Delete using space
set backspace=indent,eol,start
set autoindent
set noshowmode "turn off status line"
set hidden
set scrolloff=8 "scroll with 5 line at the end of page"

"Search highlight
set incsearch
au WinLeave * set nocursorline nocursorcolumn
au WinEnter * set cursorline cursorcolumn
augroup vimrc-incsearch-highlight
    autocmd!
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
"set wildmode=longest:list,full
set wildoptions=tagfile
set wildignorecase
set viewoptions="folds,cursor,curdir"
augroup dynamic_smartcase
    autocmd!
    set ignorecase "ignore case in search patterns
    autocmd CmdLineEnter : set nosmartcase
    autocmd CmdLineLeave : set smartcase
augroup END
"set completeopt+=menu,preview
"Open Help in vertical
autocmd BufWinEnter * if &buftype == 'help' | wincmd L | endif

"Status line settings
set guioptions=
set shortmess=cT
set cmdheight=2 "1 is the best but 2 can disable "Press Enter""

" remap <leader>
let mapleader = " "

"open maximum size of gvim
au guienter * simalt ~x

filetype plugin indent on

" The configuration options should be placed before `colorscheme edge`.
let g:edge_style = 'neon'
let g:edge_enable_italic = 0
let g:edge_disable_italic_comment = 1
let g:edge_lightline_disable_bold = 1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                             Plugin: Lightline                              "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Colorscheme configuration lightline
set laststatus=2

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

" Use autocmd to force lightline update.
autocmd User CocStatusChange,CocDiagnosticChange call lightline#update()


"Appearance
"Vim in terminal
if !has('gui_running') && has('termguicolors')
    let g:theme = 'dracula'
    set termguicolors
    let g:lightline = {
    \ 'colorscheme': 'gruvbox' ,
    \ }
    colorscheme gruvbox
else
    " set guifont=* "Choose font
    " set guifont?  "Currently font
    set guifont=Cousine_NF:h12:cANSI:qDRAFT
    colorscheme edge
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                             Plugin: NERDTree                               "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Short cuts
nnoremap <F8> :NERDTreeFind<CR>
nnoremap <C-t> :silent:NERDTreeToggle<CR>

"" Start NERDTree. If a file is specified, move the cursor to its window.
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * silent NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif

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
augroup END

"Keybindings
nnoremap <leader>x :x<Cr>
nnoremap <leader>w :up<Cr>
nnoremap <leader>a ggVG<Cr>
"tnoremap <Esc> <C-\><C-n>

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
nnoremap <C-p> "*p
nnoremap Y "*y$
nnoremap y "*y
vnoremap y "*y

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
"TODO:need to map <M-j> and <M-K> for snippets
nnoremap <S-h> :bpre<CR>
nnoremap <S-l> :bnext<CR>

"Split navigation
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-l> <C-W>l
nnoremap <C-h> <C-W>h

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

let g:coc_snippet_next = '<leader>l'
let g:coc_snippet_prev = '<leader>h'

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
let g:tagbar_ctags_bin = 'C:\Users\hungpham\Downloads\Programs\C_tag\ctags.exe' 
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
"                             Plugin: Lens.vim                               "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"TODO: are on the way
"let g:lens#disabled_filetypes = ['NERDTree', 'FZF', 'Help']



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                             Plugin: Lens.vim                               "
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
" options for markdown render
" mkit: markdown-it options for render
" katex: katex options for math
" uml: markdown-it-plantuml options
" maid: mermaid options
" disable_sync_scroll: if disable sync scroll, default 0
" sync_scroll_type: 'middle', 'top' or 'relative', default value is 'middle'
"   middle: mean the cursor position alway show at the middle of the preview page
"   top: mean the vim top viewport alway show at the top of the preview page
"   relative: mean the cursor position alway show at the relative positon of the preview page
" hide_yaml_meta: if hide yaml metadata, default is 1
" sequence_diagrams: js-sequence-diagrams options
" content_editable: if enable content editable for preview page, default: v:false
" disable_filename: if disable filename header for preview page, default: 0
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

" use a custom markdown style must be absolute path
" like '/Users/username/markdown.css' or expand('~/markdown.css')
let g:mkdp_markdown_css = ''

" use a custom highlight style must absolute path
" like '/Users/username/highlight.css' or expand('~/highlight.css')
let g:mkdp_highlight_css = ''

" use a custom port to start server or random for empty
let g:mkdp_port = ''

" preview page title
" ${name} will be replace with the file name
let g:mkdp_page_title = '「${name}」'

" recognized filetypes
" these filetypes will have MarkdownPreview... commands
let g:mkdp_filetypes = ['markdown']

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                             Plugin: Dash-board                             "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"TODO: In progress
nmap <Leader>ss :<C-u>SessionSave<CR>
nmap <Leader>sl :<C-u>SessionLoad<CR>
nmap <Leader>cn :<C-u>DashboardNewFile<CR>
nnoremap <silent> <Leader>fh :<C-u>Clap history<CR>
nnoremap <silent> <Leader>ff :<C-u>Clap files ++finder=rg --ignore --hidden --files<cr>
nnoremap <silent> <Leader>tc :<C-u>Clap colors<CR>
nnoremap <silent> <Leader>fa :<C-u>Clap grep2<CR>
nnoremap <silent> <Leader>fb :<C-u>Clap marks<CR>

let g:dashboard_custom_shortcut={
  \ 'last_session' : 'SPC s l',
  \ 'find_history' : 'SPC f h',
  \ 'find_file' : 'SPC f f',
  \ 'new_file' : 'SPC c n',
  \ 'change_colorscheme' : 'SPC t c',
  \ 'find_word' : 'SPC f a',
  \ 'book_marks' : 'SPC f b',
  \ }
let g:dashboard_custom_header =<< trim END
$$\    $$\ $$$$$$\ $$$$$$$\  $$$$$$$$\ 
$$ |   $$ |\_$$  _|$$  __$$\ $$  _____|
$$ |   $$ |  $$ |  $$ |  $$ |$$ |      
\$$\  $$  |  $$ |  $$ |  $$ |$$$$$\    
 \$$\$$  /   $$ |  $$ |  $$ |$$  __|   
  \$$$  /    $$ |  $$ |  $$ |$$ |      
   \$  /   $$$$$$\ $$$$$$$  |$$$$$$$$\ 
    \_/    \______|\_______/ \________|
END

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                             Plugin: Hexokinase                             "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"TODO: In progress
if exists('Hexokinase')
    autocmd VimEnter * HexokinaseTurnOn
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
