call plug#begin('~/vimfiles/plugged')

" make sure you use single quotes
" shorthand notation; fetches https://github.com/junegunn/vim-easy-align
" plug 'junegunn/vim-easy-align'
" any valid git url is allowed
" plug 'https://github.com/junegunn/vim-github-dashboard.git'

" multiple plug commands can be written in a single line using | separators
" plug 'sirver/ultisnips' | plug 'honza/vim-snippets'

" on-demand loading
Plug 'https://github.com/preservim/nerdtree.git'
Plug 'https://github.com/preservim/tagbar.git'
Plug 'https://github.com/preservim/nerdcommenter.git'
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

"Autocomplete
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"Formating
Plug 'Chiel92/vim-autoformat'

"Surrounding vim
Plug 'https://github.com/tpope/vim-surround.git'

"Auto pairs
Plug 'jiangmiao/auto-pairs'

"Statusline Plugin
Plug 'itchyny/lightline.vim'
Plug 'https://github.com/itchyny/vim-gitbranch.git'

"Icon for vim
Plug 'https://github.com/ryanoasis/vim-devicons.git'

"Git
Plug 'https://github.com/tpope/vim-fugitive.git'

" Initialize plugin system
call plug#end()

"General settings
syntax enable
set nocompatible
set noswapfile
set background=dark
set termguicolors
set updatetime=300  "Make autocomplete faster"
set timeout timeoutlen=1000 ttimeoutlen=100
set linespace=8
set textwidth=80
set belloff=all "Disable all sound effect"
set scrollbind
set scrollopt=""
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

"Searching
set incsearch
set cursorline
set cursorcolumn
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
set wildmode=longest:list,full
set wildoptions=tagfile
set wildignorecase
augroup dynamic_smartcase
    autocmd!
    set ignorecase "ignore case in search patterns
    autocmd CmdLineEnter : set nosmartcase
    autocmd CmdLineLeave : set smartcase
augroup END
set completeopt+=menuone,preview
"Open Help in vertical
autocmd BufWinEnter * if &buftype == 'help' | wincmd L | endif

"Status line settings
set guioptions=
set shortmess=cT
set cmdheight=1 "This is the best"

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

colorscheme edge

"Appearance
"Vim in terminal
if !has('gui_win32') && has('termguicolors')
    set termguicolors
    let g:webdevicons_enable = 0
    set guifont=Consolas:h10:cANSI:qDRAFT
else 
    " set guifont=* 
    " set guifont?
    set guifont=Cousine_NF:h10:cANSI:qDRAFT
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
augroup c_settings
    au!
    au FileType c nnoremap <buffer> <silent> <F9> :!clang % -o %<.exe && %<.exe <CR><CR>
    au FileType c inoremap <buffer> <silent> <F9> <esc> :!clang % -o %<.exe && %<.exe <CR><CR>
augroup END

augroup python_settings
    "Use buffer before silent
    au Filetype python nnoremap <buffer> <silent> <F9> :exec '!python' shellescape(@%, 1)<Cr><CR>
    au FileType python inoremap <buffer> <silent> <F9> <esc> :exec '!python' shellescape(@%, 1)<CR><CR>
augroup END

augroup rust_settings
    autocmd!
    au Filetype rust nnoremap <buffer> <silent> <F9> :!cargo run <Cr><CR>
    au FileType rust inoremap <buffer> <silent> <F9> <esc> :!cargo run<CR><CR>
augroup END

"Keybindings
nnoremap <leader>x :x<Cr>
nnoremap <leader>w :w<Cr>
nnoremap <leader>a ggVG<Cr>

"Negate u in visual mode
vnoremap u <nul>

"Vimrc config
nnoremap <leader>ev :edit $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>

"Nagvigation buffers
nnoremap <leader>1 1gt
nnoremap <leader>2 2gt
nnoremap <leader>3 3gt
nnoremap <leader>4 4gt
nnoremap <leader>5 5gt

"Copy file to clipboard
set clipboard="unnameplus"
nnoremap yy "*yy
nnoremap Y "*y$
nnoremap y "*y
vnoremap y "*y

"Dump output
nnoremap <leader>d :vnew +pu=execute('')<left><left>

"Buffers navigation
"TODO:need to map <M-j> and <M-K> for snippets
nnoremap <M-j> :bpre<CR>
nnoremap <M-k> :bnext<CR>

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
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

"Select the first completion item and confirm the completion when no item has been selected:
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
				\: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

let g:coc_snippet_next = '<TAB>'
let g:coc_snippet_prev = '<S-TAB>'

if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-d> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-u> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-d> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-u> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-d> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-u> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif


"Format settings
let verbose=1
let g:autoformat_autoindent = 0
let g:autoformat_retab = 0
let g:autoformat_remove_trailing_spaces = 0
let g:formaterpath=['C:\Program Files\LLVM\bin\clang-format.exe', ]
noremap <F3> :Autoformat<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                             Plugin: Easymotion-Incsearch                   "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

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
omap j <Plug>(easymotion-j)
omap k <Plug>(easymotion-k)
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                             Plugin: Fuzzy-finder                           "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <C-f> :Files<CR>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                             Plugin: indentLine                               "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:indentLine_setColors = 1
let g:indentLine_char = '│'

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
nnoremap <silent> <F7> :TagbarToggle<CR>
let g:tagbar_width = 43 
let g:tagbar_visibility_symbols = {
    \ 'public'    : 'O',
    \ 'protected' : '!',
    \ 'private'   : 'X'
    \ }
let g:tagbar_singleclick = 1
let g:tagbar_wrap = 1
