call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-obsession'
Plug 'dhruvasagar/vim-table-mode'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'arcticicestudio/nord-vim'
Plug 'chrisbra/Colorizer'

Plug 'majutsushi/tagbar'

Plug 'rust-lang/rust.vim', {'for': 'rust'}
Plug 'rhysd/vim-clang-format'
Plug 'vim-scripts/asmM6502.vim'

Plug 'dense-analysis/ale'
call plug#end()

let g:colorizer_auto_filetype='css,html,conf'

let mapleader = " "
let maplocalleader = ";"

set list listchars=tab:»»,trail:·

autocmd BufNewFile,BufRead *.s set filetype=asmM6502
autocmd BufNewFile,BufRead *.inc set filetype=asmM6502
autocmd BufNewFile,BufRead *.tsx set filetype=typescript
autocmd BufNewFile,BufRead *.plant set filetype=plantuml

" Setup ctrlp
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

nmap <C-b> :CtrlPBuffer<CR>

set shiftwidth=4
set tabstop=4
set hidden

set expandtab

set relativenumber number

syntax on
filetype on

set termguicolors

colorscheme nord
set background=dark
hi Normal guibg=NONE ctermbg=NONE
hi SignColumn guibg=NONE ctermbg=NONE

packadd termdebug

nmap go :Over<CR>
nmap gs :Step<CR>
nmap gb :Break<CR>
nmap gc :Continue<CR>
nmap ge :Evaluate 

set omnifunc=ale#completion#OmniFunc

set completeopt+=noinsert
set completeopt+=longest

let g:ale_open_list = 1
let g:ale_virtualtext_cursor = 1
let g:ale_echo_cursor = 1

let g:ale_fix_on_save = 1

let g:ale_completion_enabled = 1
let g:ale_set_balloons = 1

nmap <leader>s :TagbarToggle<CR>
