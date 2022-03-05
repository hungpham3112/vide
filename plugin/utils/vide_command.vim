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

function ShowSpaces(...)
  let @/='\v(\s+$)|( +\ze\t)'
  let oldhlsearch=&hlsearch
  if !a:0
    let &hlsearch=!&hlsearch
  else
    let &hlsearch=a:1
  end
  return oldhlsearch
endfunction

function TrimSpaces() range
  let oldhlsearch=ShowSpaces(1)
  execute a:firstline.",".a:lastline."substitute ///gec"
  let &hlsearch=oldhlsearch
endfunction

command -bar -nargs=0 -range=% TrimSpaces <line1>,<line2>call TrimSpaces()
