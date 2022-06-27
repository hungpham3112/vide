""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                             Plugin: Vim-startify                           "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:startify_custom_header = [
\'                                                             ',
\'        $$\    $$\ $$$$$$\ $$$$$$$\  $$$$$$$$\               ',
\'        $$ |   $$ |\_$$  _|$$  __$$\ $$  _____               ',
\'        $$ |   $$ |  $$ |  $$ |  $$ |$$ |                    ',
\'        \$$\  $$  |  $$ |  $$ |  $$ |$$$$\                   ',
\'         \$$\$$  /   $$ |  $$ |  $$ |$$  __|                 ',
\'          \$$$  /    $$ |  $$ |  $$ |$$ |                    ',
\'           \$  /   $$$$$$\ $$$$$$$  |$$$$$$$$\               ',
\'            \_/    \______|\_______/ \________|              ',
\ ]
autocmd User Startified setlocal buftype=nofile
let g:startify_files_number        = 5
let g:startify_relative_path       = 1
let g:startify_change_to_dir       = 1
let g:startify_update_oldfiles     = 1
