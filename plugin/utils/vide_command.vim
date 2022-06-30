vim9script

# Dump output help you debug and see error easier.
# Example: Dump verbose imap <Tab>
def Dump(cmd: string): number
    vnew
    setlocal buftype=nowrite bufhidden=delete noswapfile
    const result = trim(execute(cmd))
    put! = result
    return 0
enddef
command! -nargs=* -complete=command Dump call Dump(<q-args>)
command! -range=% TrimSpaces :<line1>,<line2>s/\s\+$//gec


