require 'util'


vim.g.mapleader = ' '
vim.g.maplocalleader = ';'
nmap('<C-b>', ':Buffers<CR>')
nmap('<C-p>', ':GFiles?<CR>')
nmap('L', ':echo line(".")<CR>')
