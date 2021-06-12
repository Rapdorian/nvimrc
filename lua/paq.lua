-- load package manager
vim.cmd 'packadd paq-nvim'
paq = require('paq-nvim').paq
paq {'savq/paq-nvim', opt = true}
