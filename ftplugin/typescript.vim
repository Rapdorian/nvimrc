"let g:ale_linters = {'typescript': ['tsserver']}

setlocal tabstop=2
setlocal shiftwidth=2

nmap <buffer> gd <plug>(ts-def)
nmap <buffer> gr <plug>(ts-refs)
nmap <buffer> gt <plug>(ts-type-def)
nmap <buffer> gn <plug>(ts-rename)
nmap <buffer> K <plug>(ts-type)
nmap <buffer> ga <plug>(ts-get-code-fix)
"runtime ale_keys.vim
