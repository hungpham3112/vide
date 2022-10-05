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
nnoremap <C-p> "+p
xnoremap <C-p> "+p
cnoremap <C-v> <MiddleMouse>
tnoremap <C-v> <C-w>
nnoremap Y "+y$
nnoremap y "+y
xnoremap y "+y

# Buffers navigation
nnoremap <S-h> :bpre<CR>
nnoremap <S-l> :bnext<CR>

# Windows navigation
nnoremap <C-j> <C-W><C-j>
nnoremap <C-k> <C-W><C-k>
nnoremap <C-l> <C-W><C-l>
nnoremap <C-h> <C-W><C-h>

# Searching
nmap s <Plug>(easymotion-overwin-f)
omap f <Plug>(easymotion-bd-f)
xmap f <Plug>(easymotion-bd-f)
omap t <Plug>(easymotion-bd-t)
xmap t <Plug>(easymotion-bd-t)
omap j <Plug>(easymotion-j)
xmap j <Plug>(easymotion-j)
omap k <Plug>(easymotion-k)
xmap k <Plug>(easymotion-k)

# Pattern matching
map n  <Plug>(incsearch-nohl-n)
map N  <Plug>(incsearch-nohl-N)
map *  <Plug>(incsearch-nohl)<Plug>(asterisk-*)
map g* <Plug>(incsearch-nohl)<Plug>(asterisk-g*)
map #  <Plug>(incsearch-nohl)<Plug>(asterisk-#)
map g# <Plug>(incsearch-nohl)<Plug>(asterisk-g#)
