vim9script
# Keybindings
nnoremap <C-a> ggVG<Cr>
if !has('nvim')
    augroup terminal_settings
        autocmd!
            au TerminalOpen * tnoremap <Esc> <c-\><c-n>
#             au TermEnter set norelativenumber nonumber
#             au TermLeave set relativenumber number
    augroup END
    au FileType fzf tunmap <Esc>
endif

# Copy paste with clipboard
set clipboard^=unnamedplus
nnoremap <C-p> "*p
xnoremap <C-p> "*p
cnoremap <C-v> <MiddleMouse>
tnoremap <C-v> <C-w>
nnoremap Y "+y$
nnoremap y "+y
xnoremap y "+y

# Hien tai 2 dong o duoi nay hoat dong
# tren cmd and window powershell, con alacritty thi khong
# nmap <C-/> :Commentary<CR>
# nmap <C-/> :Commentary<CR>

# Buffers navigation
nnoremap <S-Tab> :bpre<CR>
nnoremap <Tab> :bnext<CR>
nnoremap <S-l> :tabnext<CR>
nnoremap <S-H> :tabprevious<CR>

# Windows navigation
nnoremap <C-j> <C-W><C-j>
nnoremap <C-k> <C-W><C-k>
nnoremap <C-l> <C-W><C-l>
nnoremap <C-h> <C-W><C-h>

# Searching
nmap f <Plug>(easymotion-bd-f)
omap f <Plug>(easymotion-bd-f)
xmap f <Plug>(easymotion-bd-f)

# Pattern matching
map n  <Plug>(incsearch-nohl-n)
map N  <Plug>(incsearch-nohl-N)
map *  <Plug>(incsearch-nohl)<Plug>(asterisk-*)
map g* <Plug>(incsearch-nohl)<Plug>(asterisk-g*)
map #  <Plug>(incsearch-nohl)<Plug>(asterisk-#)
map g# <Plug>(incsearch-nohl)<Plug>(asterisk-g#)
