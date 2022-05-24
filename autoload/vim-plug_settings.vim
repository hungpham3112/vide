"Install vim-plug if not found
if empty(glob('~/vimfiles/autoload/plug.vim'))
  silent execute '!C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe
    \ -ExecutionPolicy Bypass Invoke-WebRequest
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    \ -OutFile $env:userprofile\vimfiles\autoload\plug.vim'
endif

"Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | q | source $MYVIMRC
  \| endif

function! s:plug_doc()
  let name = matchstr(getline('.'), '^- \zs\S\+\ze:')
  if has_key(g:plugs, name)
    for doc in split(globpath(g:plugs[name].dir, 'doc/*.txt'), '\n')
      execute 'tabe' doc
    endfor
  endif
endfunction

function! s:plug_help_sink(line)
  let dir = g:plugs[a:line].dir
  for pat in ['doc/*.txt', 'README.md']
    let match = get(split(globpath(dir, pat), "\n"), 0, '')
    if len(match)
      execute 'tabedit' match
      return
    endif
  endfor
  tabnew
  execute 'Explore' dir
endfunction

command! PlugHelp call fzf#run(fzf#wrap({
  \ 'source': sort(keys(g:plugs)),
  \ 'sink':   function('s:plug_help_sink')}))

function! s:scroll_preview(down)
  silent! wincmd P
  if &previewwindow
    execute 'normal!' a:down ? "\<c-e>" : "\<c-y>"
    wincmd p
  endif
endfunction

"Installation starts here
if has('win32')
    call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/vimfiles/plugged')
else
    call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')
endif

"Snippet
Plug 'https://github.com/honza/vim-snippets.git'

"Tree explorer
Plug 'https://github.com/hungpham3112/nerdtree-visual-selection.git', { 'for': ['nerdtree'] }
Plug 'https://github.com/preservim/nerdcommenter.git'
Plug 'https://github.com/preservim/nerdtree.git'
Plug 'https://github.com/preservim/tagbar.git'
Plug 'https://github.com/unkiwii/vim-nerdtree-sync.git'

"IndentLine
Plug 'https://github.com/Yggdroot/indentLine.git'

"Float terminal
Plug 'https://github.com/voldikss/vim-floaterm.git'
Plug 'https://github.com/voldikss/fzf-floaterm.git'

"Powerful Movement
Plug 'https://github.com/easymotion/vim-easymotion.git'
Plug 'https://github.com/haya14busa/incsearch.vim.git'
Plug 'https://github.com/haya14busa/incsearch-easymotion.vim.git'
Plug 'https://github.com/haya14busa/incsearch-fuzzy.vim.git'
Plug 'https://github.com/haya14busa/vim-asterisk.git'
Plug 'https://github.com/tpope/vim-repeat'

"fuzzy file findfing fun
Plug 'https://github.com/junegunn/fzf.git', { 'do': { -> fzf#install() } }
Plug 'https://github.com/junegunn/fzf.vim.git'

"Theme for vim
Plug 'https://github.com/rakr/vim-one.git', {'as':'one'}
Plug 'https://github.com/sainnhe/edge.git', {'as': 'edge'}

"Syntax highlighting
let g:polyglot_disabled = ['ftdetect', 'sensible']
Plug 'https://github.com/sheerun/vim-polyglot.git'

"Autocomplete
Plug 'https://github.com/neoclide/coc.nvim.git', {'branch': 'release'}

"Vim-brackets
Plug 'https://github.com/tpope/vim-surround.git'
Plug 'https://github.com/luochen1990/rainbow.git'


"Auto pairs
Plug 'https://github.com/LunarWatcher/auto-pairs', {'branch': 'develop'}

"Statusline and bufferline
Plug 'https://github.com/itchyny/lightline.vim.git'
Plug 'https://github.com/itchyny/vim-gitbranch.git'
Plug 'https://github.com/mengelbrecht/lightline-bufferline.git'

"Icon for vim
Plug 'https://github.com/ryanoasis/vim-devicons.git'

"Git
Plug 'https://github.com/tpope/vim-fugitive.git'

"Animation and resize
Plug 'https://github.com/kovetskiy/vim-autoresize.git'

"Markdown preview
Plug 'https://github.com/iamcco/markdown-preview.nvim.git', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

"Display mapping
Plug 'https://github.com/liuchengxu/vim-which-key.git'

"Benchmark
Plug 'https://github.com/dstein64/vim-startuptime.git'

"Startup screen
Plug 'https://github.com/mhinz/vim-startify.git', {'branch': 'center'}

"Multiple cursor
Plug 'https://github.com/mg979/vim-visual-multi.git'

"Moving block of code
Plug 'https://github.com/matze/vim-move.git'

"REPL for vim
Plug 'https://github.com/jpalardy/vim-slime.git'

"Vim-open-url
Plug 'https://github.com/dhruvasagar/vim-open-url.git'

"Resizing the screen using arrow keys
Plug 'https://github.com/simeji/winresizer.git'



call plug#end()
