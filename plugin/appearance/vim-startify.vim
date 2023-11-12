""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                             Plugin: Vim-startify                           "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
vim9script
g:startify_custom_header = [
\ '                                                             ',
\ '        $$\    $$\ $$$$$$\ $$$$$$$\  $$$$$$$$\               ',
\ '        $$ |   $$ |\_$$  _|$$  __$$\ $$  _____               ',
\ '        $$ |   $$ |  $$ |  $$ |  $$ |$$ |                    ',
\ '        \$$\  $$  |  $$ |  $$ |  $$ |$$$$\                   ',
\ '         \$$\$$  /   $$ |  $$ |  $$ |$$  __|                 ',
\ '          \$$$  /    $$ |  $$ |  $$ |$$ |                    ',
\ '           \$  /   $$$$$$\ $$$$$$$  |$$$$$$$$\               ',
\ '            \_/    \______|\_______/ \________|              ',
\ ]
# autocmd User Startified setlocal buftype=nofile
autocmd Filetype startify setlocal nocursorline
autocmd Filetype startify setlocal nocursorcolumn
g:plug_window = 'enew'
g:startify_files_number        = 5
g:startify_relative_path       = 1
g:startify_change_to_dir       = 1
g:startify_update_oldfiles     = 1
