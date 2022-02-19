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
Plug 'https://github.com/tpope/vim-repeat'

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

"Syntax highlighting
Plug 'sheerun/vim-polyglot'

"Autocomplete
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"TODO: emmet is testing
Plug 'mattn/emmet-vim'

"Vim-brackets
Plug 'https://github.com/tpope/vim-surround.git'

"Auto pairs
Plug 'jiangmiao/auto-pairs'

"Statusline and bufferline
Plug 'itchyny/lightline.vim'
Plug 'https://github.com/itchyny/vim-gitbranch.git'
Plug 'mengelbrecht/lightline-bufferline'

"Icon for vim
Plug 'https://github.com/ryanoasis/vim-devicons.git'
"Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }

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
Plug 'mhinz/vim-startify', {'branch': 'center'}

"Multiple cursor
Plug 'https://github.com/mg979/vim-visual-multi.git'

call plug#end()
