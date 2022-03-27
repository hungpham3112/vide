""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                             Plugin: Vim-startify                           "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"autocmd User Startified setlocal cursorline
"let g:startify_enable_special      = 0
let g:startify_files_number        = 5
let g:startify_relative_path       = 1
let g:startify_change_to_dir       = 1
let g:startify_update_oldfiles     = 1

"let g:startify_custom_header =
          "\ 'startify#center(startify#fortune#cowsay())'
"let g:startify_lists = [
    "\ { 'type': 'dir',       'header': startify#center(['MRU '.getcwd()]) },
    "\ { 'type': 'sessions',  'header': startify#center(['Sessions']) },
    "\ { 'type': 'files',     'header': startify#center(['MRU']) },
    "\ { 'type': 'bookmarks', 'header': startify#center(['Bookmarks']) },
    "\ { 'type': 'commands',  'header': startify#center(['Commands']) },
    "\ ]
"let g:startify_padding_left = 60 " Hard coded padding for lists
