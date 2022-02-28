"Keybindings
nmap <Space> <nop>
nnoremap <leader>x :x<Cr>
nnoremap <leader>w :w<Cr>
nnoremap <leader>d :up<Cr>:bd<CR>
nnoremap <C-a> ggVG<Cr>

"run block of code in visual mode
vnoremap <Enter> :w !

"Negate u in visual mode
"IMPORTANT!!!
vnoremap u <nul>

"Command mode more ergonomic
nnoremap ; :
vnoremap ; :

"Resize
nnoremap <Up> :resize +1<CR>
nnoremap <Down> :resize -1<CR>
nnoremap <Left> :vert resize +2 <CR>
nnoremap <Right> :vert resize -2 <CR>

"Vimrc config
nnoremap <leader>ev :edit $MYVIMRC<CR>
nnoremap <leader>sv :source % <bar> source $MYVIMRC<CR>

"Nagvigation buffers
nnoremap <leader>1 1gt
nnoremap <leader>2 2gt
nnoremap <leader>3 3gt
nnoremap <leader>4 4gt
nnoremap <leader>5 5gt

"Copy paste with clipboard
set clipboard="unnameplus"
nnoremap <C-p> "*p
nnoremap Y "*y$
nnoremap y "*y
xnoremap y "*y

"Buffers navigation
nnoremap <S-h> :bpre<CR>
nnoremap <S-l> :bnext<CR>

"Split navigation
nnoremap <C-j> <C-W><C-j>
nnoremap <C-k> <C-W><C-k>
nnoremap <C-l> <C-W><C-l>
nnoremap <C-h> <C-W><C-h>

"Searching
nmap s <Plug>(easymotion-s)
vmap s <Plug>(easymotion-s)
nmap f <Plug>(easymotion-s)
omap f <Plug>(easymotion-s)
nmap t <Plug>(easymotion-t)
omap t <Plug>(easymotion-t)
vmap j <Plug>(easymotion-j)
omap j <Plug>(easymotion-j)
vmap k <Plug>(easymotion-k)
omap k <Plug>(easymotion-k)
