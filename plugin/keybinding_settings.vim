"Keybindings
nnoremap <leader>x :x<Cr>
nnoremap <leader>w :up<Cr>
nnoremap <C-a> ggVG<Cr>
nmap <Space> <nop>
tnoremap <Esc> <C-\><C-n>

"Navigate block of code
xnoremap J :m '>+1<CR>gv=gv
xnoremap K :m '<-2<CR>gv=gv
xnoremap H <gv
xnoremap L >gv

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
nnoremap <leader>sv :source $MYVIMRC<CR>

"Nagvigation buffers
nnoremap <leader>1 1gt
nnoremap <leader>2 2gt
nnoremap <leader>3 3gt
nnoremap <leader>4 4gt
nnoremap <leader>5 5gt

"Copy paste with clipboard
set clipboard="unnameplus"
noremap <C-p> "*p
nnoremap Y "*y$
nnoremap y "*y
xnoremap y "*y

"Buffers navigation
nnoremap <S-h> :bpre<CR>
nnoremap <S-l> :bnext<CR>

"Split navigation
nnoremap <leader>j <C-W>j
nnoremap <leader>k <C-W>k
nnoremap <leader>l <C-W>l
nnoremap <leader>h <C-W>h

"User-defined command:
command! VideInstall PlugInstall | set guifont=*

"Dump output help you debug and see error easier.
"Example: Dump verbose imap <Tab>
function! Dump(cmd)
    vnew
    setlocal buftype=nowrite bufhidden=delete noswapfile
    let result = trim(execute(a:cmd))
    put! =result
    1
endfunction
command! -nargs=* -complete=command Dump call Dump(<q-args>)
nnoremap <leader>d :Dump 

