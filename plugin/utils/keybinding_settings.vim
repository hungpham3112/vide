"Keybindings
nmap <Space> <nul>
nnoremap <C-a> ggVG<Cr>
au TerminalOpen * tnoremap <Esc> <c-\><c-n>
au FileType fzf tunmap <Esc>

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
nmap s <Plug>(easymotion-overwin-f)
omap f <Plug>(easymotion-bd-f)
xmap f <Plug>(easymotion-bd-f)
omap t <Plug>(easymotion-bd-t)
xmap t <Plug>(easymotion-bd-t)
omap j <Plug>(easymotion-j)
xmap j <Plug>(easymotion-j)
omap k <Plug>(easymotion-k)
xmap k <Plug>(easymotion-k)

"Pattern matching
map n  <Plug>(incsearch-nohl-n)
map N  <Plug>(incsearch-nohl-N)
map *   <Plug>(incsearch-nohl)<Plug>(asterisk-*)
map g*  <Plug>(incsearch-nohl)<Plug>(asterisk-g*)
map #   <Plug>(incsearch-nohl)<Plug>(asterisk-#)
map g#  <Plug>(incsearch-nohl)<Plug>(asterisk-g#)

