"Keybindings
nmap <Space> <nul>
nnoremap <C-a> ggVG<Cr>
au TerminalOpen * tnoremap <Esc> <c-\><c-n>
au FileType fzf tunmap <Esc>

"Resize
nnoremap <Up> :resize +1<CR>
nnoremap <Down> :resize -1<CR>
nnoremap <Left> :vert resize +2 <CR>
nnoremap <Right> :vert resize -2 <CR>

"Copy paste with clipboard
set clipboard="unnameplus"
nnoremap <C-p> "*p
xnoremap <C-p> "*p
cnoremap <C-v> <MiddleMouse>
nnoremap Y "*y$
nnoremap y "*y
xnoremap y "*y

"Buffers navigation
nnoremap <S-h> :bpre<CR>
nnoremap <S-l> :bnext<CR>

"Windows navigation
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
