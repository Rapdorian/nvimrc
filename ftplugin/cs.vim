let g:OmniSharp_server_stdio = 1
let g:ale_linters = {'cs': ['Omnisharp']}

nmap <buffer> K  :OmniSharpTypeLookup<CR>
nmap <buffer> gn :OmniSharpRename<CR>
nmap <buffer> gd :OmniSharpGotoDefinition<CR>
nmap <buffer> gr :OmniSharpFindUsages<CR>
nmap <buffer> gi :OmniSharpFindImplementations<CR>
nmap <buffer> <leader>ca :OmniSharpGetCodeActions<CR>
