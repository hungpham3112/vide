""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                             Plugin: Tagbar                                 "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"TODO: In progress
nnoremap <silent> <F7> :TagbarToggle<CR>
let g:tagbar_width = 43
let g:tagbar_visibility_symbols = {
    \ 'public'    : 'O',
    \ 'protected' : '!',
    \ 'private'   : 'X'
    \ }
let g:tagbar_singleclick = 1
let g:tagbar_wrap = 1
let g:tagbar_map_showproto = ''
"TODO:In progress
"if !exists(':Tagbar') || rust#tags#IsUCtags()
"    finish
"endif
"
"" vint: -ProhibitAbbreviationOption
"let s:save_cpo = &cpo
"set cpo&vim
"" vint: +ProhibitAbbreviationOption
"
"if !exists('g:tagbar_type_rust')
"    let g:tagbar_type_rust = {
"                \ 'ctagstype' : 'rust',
"                \ 'kinds' : [
"                \'T:types',
"                \'f:functions',
"                \'g:enumerations',
"                \'s:structures',
"                \'m:modules',
"                \'c:constants',
"                \'t:traits',
"                \'i:trait implementations',
"                \ ]
"                \ }
"endif
"
"" In case you've updated/customized your ~/.ctags and prefer to use it.
"if !get(g:, 'rust_use_custom_ctags_defs', 0)
"    let g:tagbar_type_rust.deffile = expand('<sfile>:p:h:h:h') . '/ctags/rust.ctags'
"endif
"
"" vint: -ProhibitAbbreviationOption
"let &cpo = s:save_cpo
"unlet s:save_cp
