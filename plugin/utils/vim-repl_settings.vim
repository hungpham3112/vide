"let g:repl_program = {
            "\   'python': 'ipython',
            "\   'default': 'zsh',
            "\   'r': 'R',
            "\   'lua': 'lua',
            "\   'vim': 'vim -e',
            "\   'julia': 'julia',
            "\   }
"let g:repl_predefine_python = {
            "\   'numpy': 'import numpy as np',
            "\   'matplotlib': 'from matplotlib import pyplot as plt'
            "\   }
"let g:repl_cursor_down = 1
"let g:repl_python_automerge = 1
"let g:repl_ipython_version = '7'
"let g:repl_output_copy_to_register = "t"
"nnoremap <leader>r :REPLToggle<Cr>
"nnoremap <leader>e :REPLSendSession<Cr>
"autocmd Filetype python nnoremap <F12> <Esc>:REPLDebugStopAtCurrentLine<Cr>
"autocmd Filetype python nnoremap <F10> <Esc>:REPLPDBN<Cr>
"autocmd Filetype python nnoremap <F11> <Esc>:REPLPDBS<Cr>
"let g:repl_position = 3
