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

source ~/vimfiles/autoload/general_settings.vim
source ~/vimfiles/colors/colorscheme_settings.vim
source ~/vimfiles/plugin/lightline_settings.vim
source ~/vimfiles/plugin/autopair_settings.vim
source ~/vimfiles/plugin/coc-nvim_settings.vim
source ~/vimfiles/plugin/easymotion_settings.vim
source ~/vimfiles/plugin/fzf_settings.vim
source ~/vimfiles/plugin/keybinding_settings.vim
source ~/vimfiles/plugin/nerdtree_settings.vim
source ~/vimfiles/plugin/lightline_settings.vim
source ~/vimfiles/plugin/runcode_settings.vim

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

