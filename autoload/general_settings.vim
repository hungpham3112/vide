vim9script
# General settings
&titlestring = "VIDE"                                       # Change title vim
g:mapleader = " "                                           # Map leader to Space for convenience
set autoindent                                              # Auto indent
set autoread                                                # Read file if it has been changed outside
set autowriteall                                            # Autowrite if file has been modified
set background=dark                                         # Dark background
set backspace=indent,eol,start                              # Delete using backspace
set belloff=all                                             # Disable all sound effect
set cmdheight=2                                             # 1 is the best but 2 can disable 'Press Enter'
set confirm                                                 # Choose options (Y/N)
set encoding=utf-8                                          # String-encoding
set guioptions=                                             # Turn off GUi-options
set hidden                                                  # Turn off E37 when change file
set history=10000                                           # Show maximum recently history
set hlsearch                                                # Highlight patterns
set ignorecase                                              # Ignore case-sensitive in search patterns
set incsearch                                               # Highlight pattern when search
set laststatus=2                                            # Always show status line
set linespace=8                                             # Gap between line (easier to see text) (only for GUI)
set nocompatible                                            # No compatible with vi (Never remove this line)
set noequalalways                                           # Turn off automatically resize
set noshowmode                                              # Turn off default status line
set nostartofline                                           # Don't move the cursor to the beginning of line
set noswapfile                                              # Don't generate swapfile
set nrformats-=octal                                        # Remove consideration starting with 0 as octal
set number                                                  # Show current line
set relativenumber                                          # Show the line number relative to the current line
set scrolloff=5                                             # scroll with 8 line at the end of page
set shortmess=cT                                            # Avoid hit-enter prompts
set showtabline=2                                           # Always show tabline
set sidescroll=1                                            # The minimal number of columns to scroll horizontally
set signcolumn=number                                       # Display signs in the 'number' column
set splitbelow splitright                                   # Open file in reasonable location
set t_Co=256                                                # Number of colors
set tabstop=4 softtabstop=4 expandtab shiftwidth=4 smarttab # Default tab = 4 spaces
set termguicolors                                           # Colors for terminal
set textwidth=120                                           # Maximum width of text in buffer
set timeout timeoutlen=200 ttimeoutlen=50                   # Time response keystroke
set updatetime=200                                          # Make autocomplete faster
set viewoptions-="options"                                  # Change behavior :mkview
set wildignorecase                                          # Ignore case-sensitive command-mode
set wildmenu                                                # Command-line completion is an enhanced mode
autocmd BufEnter * silent! lcd %:p:h                        # Workspace changing
autocmd FileType * set formatoptions-=o formatoptions+=j    # Turn off auto comment in when hit <Enter>,

# Dynamic cursor column for current window.
augroup smart_cursorcolumn
    au!
    au BufEnter * set cursorline cursorcolumn
    au BufLeave * set nocursorline nocursorcolumn
augroup END

# Dynamic case-sensitive in command-mode
augroup dynamic_smartcase
    au!
    autocmd CmdLineEnter : set nosmartcase
    autocmd CmdLineLeave : set smartcase
augroup END

# Open help file in vertical
autocmd BufWinEnter * if &buftype == 'help' | wincmd L | endif

# Default colorscheme for VIDE
g:colorscheme = 'edge'
try
    execute 'colorscheme ' .. g:colorscheme
catch
    colorscheme evening
endtry

if has('nvim') && has('win32')
    g:python3_host_prog = '~/scoop/apps/miniconda3/current/'
elseif !has('nvim')
    set wildoptions=pum,fuzzy,tagfile                       # Popupmenu and fuzzy finder for wildmenu
    if has("win32")
        # Python for vim
        set pythonthreedll=~/scoop/apps/mambaforge/current/python3.dll
        set pythonthreehome=~/scoop/apps/mambaforge/current/

        # Lua for vim
        set luadll=~/scoop/apps/lua/current/lua54.dll
    endif
endif

if has("win32") && has("gui_running")
  set guifont=Cousine\ Nerd\ Font\ Mono:h10
  autocmd GUIEnter * simalt ~x                              # GUI fullscreen by default
else
  set guifont=Cousine\ Nerd\ Font\ Mono\ 13
endif
