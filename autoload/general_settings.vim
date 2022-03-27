"General settings
set nocompatible                                            "No compatible with vi (Never remove this line)
set noswapfile                                              "Don't generate swapfile
set termguicolors                                           "Colors for terminal
set updatetime=300                                          "Make autocomplete faster
set relativenumber                                          "Relative number
set signcolumn=number                                       "display signs in the 'number' column
set timeout timeoutlen=500 ttimeoutlen=100                  "Time response keystroke
set linespace=8                                             "Gap between line (easier to see text) (only for GUI)
set textwidth=120                                           "Maximum width of text in buffer
set belloff=all                                             "Disable all sound effect
set t_Co=256                                                "Number of colors
set history=200                                             "Show 200 recently history
set laststatus=2                                            "Always show status line
set showtabline=2                                           "Always show tabline
set guifont=Cousine_NF:h11:cANSI:qDRAFT                     "Default font for VIDE
au guienter * simalt ~x                                     "open maximum size of GUI
autocmd FileType * set formatoptions-=o                     "Don't auto-comment newline when hit o or O
let &titlestring="VIDE"                                     "Change title vim
autocmd BufEnter * silent! lcd %:p:h                        "workspace changing

"Auto save file
set autowriteall                                            "Autowrite if file has been modified
set autoread                                                "Read file if it has been changed outside
set splitbelow splitright                                   "Open file in reasonable location
set encoding=utf-8                                          "String-encoding
set backspace=indent,eol,start                              "Delete using backspace
set autoindent                                              "Auto indent
set noshowmode                                              "Turn off default status line
set hidden                                                  "Turn off E37 when change file
set scrolloff=8                                             "scroll with 8 line at the end of page

"Status line settings
set guioptions=                                             "Turn off GUi-options
set shortmess=cT                                            "Avoid hit-enter prompts
set cmdheight=2                                             "1 is the best but 2 can disable 'Press Enter'
let mapleader = " "                                         "Map leader to Space for convenience

"Dynamic searching and highlighting
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

augroup dynamic_smartcase
    au!
    set ignorecase "ignore case in search patterns
    autocmd CmdLineEnter : set nosmartcase
    autocmd CmdLineLeave : set smartcase
augroup END


"Indent settings
set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab

"Commandline completions
set wildmenu
set wildoptions=tagfile
set wildignorecase
set viewoptions="folds,cursor,curdir"

"Open Help in vertical
autocmd BufWinEnter * if &buftype == 'help' | wincmd L | execute 'vertical resize '. g:autoresize_width | endif

"Colorscheme
set termguicolors
if has('termguicolors')
    try
        colorscheme everforest
    catch
        colorscheme evening
    endtry
elseif has('gui_running')
    try
        colorscheme edge
    catch
        colorscheme evening
    endtry
endif

"Python for vim
set pythonthreedll=~/scoop/apps/python/current/python310.dll
set pythonthreehome=~/scoop/apps/python/current/

"Lua for vim
set luadll=~/scoop/apps/lua/current/lua54.dll
