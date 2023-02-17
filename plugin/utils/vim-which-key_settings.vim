""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                             Plugin: Vim-which_key                          "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
vim9script
nnoremap <silent> <leader> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>
nnoremap <silent> g :silent WhichKey 'g'<CR>
vnoremap <silent> g :silent <c-u> :silent WhichKeyVisual 'g'<CR>

# Create map to add keys to
g:which_key_map =  {}

# Define a separator
g:which_key_sep = '→'

# Set time to present key bindings
g:which_key_timeout = 0

# Not a fan of floating windows for this
g:which_key_use_floating_win = 0

# Executes native commands if keymap is not defined.
g:which_key_fallback_to_native_key = 1

# Change the colors if you want
highlight default link WhichKey          Function
highlight default link WhichKeySeperator DiffAdded
highlight default link WhichKeyGroup     Keyword
highlight default link WhichKeyDesc      Identifier

# Hide status line
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler

# Single mappings
g:which_key_map['/'] = [ ':call incsearch#call(Config_easyfuzzymotion())', 'Fuzzy incsearch' ]
g:which_key_map[';'] = [ ':silent Startify', 'Startify' ]
g:which_key_map['c'] = [ '<Plug>NERDCommenterToggle', '(C)omment' ]
g:which_key_map['d'] = [ ':silent | :up | if last_buffer_nr() == 1 | quit | else | bdelete | endif"', '(D)elete Buffer' ]
g:which_key_map['e'] = [ ':call NerdTreeToggleFind()', '(E)xplorer' ]
g:which_key_map['f'] = [ ':Files ~', 'Search (F)iles' ]
g:which_key_map['g'] = [ ':Rg', 'Search Text' ]
g:which_key_map['w'] = [ ':w', '(W)rite' ]
g:which_key_map['q'] = [ ':qa', '(Q)uit' ]

# Searching
g:which_key_map.s = {
      \ 'name': '+Searching',
      \ '/': [':History/', 'History'],
      \ ';': [':Commands', 'Commands'],
      \ 'a': [':Ag', 'Text Ag'],
      \ 'b': [':BLines', 'Current Buffer'],
      \ 'B': [':Buffers', 'Open Buffers'],
      \ 'c': [':Commits', 'Commits'],
      \ 'C': [':BCommits', 'Buffer Commits'],
      \ 'f': [':Files', 'Files'],
      \ 'g': [':GFiles', 'Git Files'],
      \ 'G': [':GFiles?', 'Modified Git Files'],
      \ 'h': [':History', 'File History'],
      \ 'H': [':History:', 'Command History'],
      \ 'l': [':Lines', 'Lines'],
      \ 'm': [':Marks', 'Marks'],
      \ 'M': [':Maps', 'Normal Maps'],
      \ 'p': [':Helptags', 'Help Tags'],
      \ 'P': [':Tags', 'Project Tags'],
      \ 's': [':CocCommand snippets.openSnippetFiles', 'Open Snippets'],
      \ 'S': [':Colors', 'Colorscheme'],
      \ 't': [':Rg', 'Find '],
      \ 'T': [':BTags', 'Buffer Tags'],
      \ 'w': [':Windows', 'Search Windows'],
      \ 'y': [':Filetypes', 'File Types'],
      \ 'z': [':FZF', 'FZF'],
      \ }

# Vim-plug
g:which_key_map.p = {
      \ 'name': '+Plug',
      \ 'c': [':PlugClean', '(C)lean Invalid Plugins'],
      \ 'd': [':PlugDiff', 'Show (D)iff'],
      \ 'h': [':PlugHelp', 'Open (H)elp File'],
      \ 'i': [':PlugInstall', '(I)nstall'],
      \ 's': [':PlugInstall', '(S)ync'],
      \ 'u': [':PlugUpdate', '(U)pdate'],
      \ }

# Register which key map
if isdirectory($HOME .. "/vimfiles/plugged/vim-which-key") || isdirectory($HOME .. "/.vim/plugged/vim-which-key")
    call which_key#register('<Space>', "g:which_key_map")
endif
