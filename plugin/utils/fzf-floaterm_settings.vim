""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                             Plugin: Fzf-floaterm                           "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd FileType floaterm * set shell="~/scoop/shims/pwsh.exe"
let g:fzf_floaterm_newentries = {
  \ '+root' : {
    \ 'title': 'Root Shell',
    \ 'cmd': 'sudo sh' },
  \ '+fish' : {
    \ 'title': 'Fish Shell',
    \ 'cmd': 'fish' },
  \ '+pwsh' : {
    \ 'title': 'Powershell',
    \ 'cmd': 'pwsh' }
  \ }
