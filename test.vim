call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/vimfiles/plugged')
Plug 'https://github.com/itchyny/lightline.vim.git'
call plug#end()
set laststatus=2
