call plug#begin()

" Global
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-obsession'
Plug 'dhruvasagar/vim-table-mode'
Plug 'junegunn/fzf.vim'
"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'
Plug 'majutsushi/tagbar'

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'prabirshrestha/vim-lsp'
Plug 'lighttiger2505/deoplete-vim-lsp'
Plug 'matze/vim-move'
"Plug 'Rapdorian/discord.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'ChesleyTan/wordCount.vim'
" Language specific

" Rust
Plug 'rust-lang/rust.vim', {'for': 'rust'}
Plug 'cespare/vim-toml', {'for': 'toml' }

" Typescript/javascript
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'branch': 'release/0.x'
  \ }
Plug 'mhartington/nvim-typescript', {'do': './install.sh'}
Plug 'HerringtonDarkholme/yats.vim'

" C#
Plug 'OmniSharp/omnisharp-vim', {'for': ['cs']}

" Java

" C/C++
Plug 'rhysd/vim-clang-format'
Plug 'tikhomirov/vim-glsl'

" ASM
Plug 'vim-scripts/asmM6502.vim'
Plug 'Harenome/vim-mipssyntax'


call plug#end()

let g:lsp_documentation_float = 0

set clipboard=unnamedplus

let g:discord_fts_whitelist_enabled=0

"inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
"inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
"inoremap <expr> <cr>    pumvisible() ? "\<C-y>" : "\<cr>"

let g:deoplete#enable_at_startup = 1
set mouse=a
let mapleader = " "
let maplocalleader = ";"

set foldmethod=syntax
set foldlevelstart=10

set list listchars=tab:»»,trail:·

autocmd BufNewFile,BufRead *.s set filetype=mips
autocmd BufNewFile,BufRead *.dnd set filetype=dnd
autocmd BufNewFile,BufRead *.inc set filetype=asmM6502
"autocmd BufNewFile,BufRead *.tsx set filetype=typescript.tsx
autocmd BufNewFile,BufRead *.plant set filetype=plantuml

nmap <C-b> :Buffers<CR>
nmap <C-p> :GFiles<CR>
nmap <leader>g :Commits<CR>
nmap <leader>lg :Commits<CR>
nmap <leader>a :Lines<CR>

map <leader>n :NERDTree %<CR>

set shiftwidth=4
set tabstop=4
set hidden

set expandtab

" set relativenumber number

syntax on
filetype on

colorscheme term
let g:airline_theme='term'
set background=dark

packadd termdebug

nmap go :Over<CR>
nmap gs :Step<CR>
nmap gb :Break<CR>
nmap gc :Continue<CR>
nmap ge :Evaluate 

nmap <leader>s :TagbarToggle<CR>

" Open vim session if it exists
if filereadable("Session.vim") && argc() == 0
    source Session.vim
endif

nmap <leader>hg :call <SID>SynStack()<CR>
function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

" LSP config

if (executable('rust-analyzer'))
    augroup LspRust
        autocmd!
        autocmd User lsp_setup call lsp#register_server({
     \ 'name': 'rust-lang',
     \ 'cmd': {server_info->['rust-analyzer']},
     \ 'allowlist': ['rust'],
     \ })
    augroup END
endif

" setup keys
function! s:on_lsp_buffer_enabled() abort
    setlocal omnifunc=lsp#complete
    setlocal signcolumn=yes
    if exists('+tagfunc') | setlocal tagfunc=lsp#tagfunc | endif
    nmap <buffer> gd <plug>(lsp-definition)
    nmap <buffer> gr <plug>(lsp-references)
    nmap <buffer> gi <plug>(lsp-implementation)
    nmap <buffer> gt <plug>(lsp-type-definition)
    nmap <buffer> gn <plug>(lsp-rename)
    nmap <buffer> [g <Plug>(lsp-previous-diagnostic)
    nmap <buffer> ]g <Plug>(lsp-next-diagnostic)
    nmap <buffer> K <plug>(lsp-hover)
    nmap <buffer> F <plug>(lsp-document-format)
    nmap <buffer> ga <plug>(lsp-code-action)
endfunction

augroup lsp_install
    au!
    " call s:on_lsp_buffer_enabled only for languages that has the server registered.
    autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
augroup END

map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

autocmd VimEnter * set laststatus=0
autocmd VimEnter * set noruler
set statusline=-
set fillchars+=stl:-,stlnc:-,eob:\ 
augroup cmdline
    autocmd!
    autocmd CmdlineLeave : echo ''
augroup end
