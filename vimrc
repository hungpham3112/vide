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
vim9script
if has("win32")
    source ~/vimfiles/autoload/vim-plug.vim             # This line must be sourced first
    source ~/vimfiles/plugin/appearance/colorschemes.vim # This line must be second
    source ~/vimfiles/autoload/general_settings.vim
    source ~/vimfiles/user_config.vim
else
    source ~/.vim/autoload/vim-plug.vim                 # This line must be sourced first
    source ~/.vim/plugin/appearance/colorschemes.vim     # This line must be second
    source ~/.vim/autoload/general_settings.vim
    source ~/.vim/user_config.vim
endif
