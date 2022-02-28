""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                             Plugin: Hexokinase                             "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"TODO: In progress
if exists('Hexokinase')
    autocmd BufEnter * HexokinaseTurnOn
endif

let g:Hexokinase_highlighters = [
\   'foregroundfull',
\ ]

let g:Hexokinase_optInPatterns = [
\     'full_hex',
\     'triple_hex',
\     'rgb',
\     'rgba',
\     'hsl',
\     'hsla',
\     'colour_names',
\ ]

