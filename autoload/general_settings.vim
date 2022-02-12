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
filetype plugin indent on
autocmd FileType * set fo-=o

augroup vim_title
    au!
    auto BufEnter * let &titlestring = hostname() . "/" . expand("%:p")
    set title titlestring=%<%F%=%l/%L-%P titlelen=70
augroup END

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
