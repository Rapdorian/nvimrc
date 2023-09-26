require 'plugins'
require 'completion'
require 'lsp'

-- base setup
vim.opt.clipboard = 'unnamedplus'
vim.opt.mouse = 'a'
vim.cmd.colorscheme "gruvbox"

vim.opt.listchars = { tab = '»»', trail = '·' }
vim.opt.fillchars = { eob = ' ' }
vim.opt.list = true

vim.opt.foldmethod = 'syntax'
vim.opt.foldlevelstart = 10
vim.opt.hidden = true
vim.wo.number = true

-- tablen
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.expandtab = true

-- base keys
vim.g.mapleader = ' '
vim.g.maplocalleader = ';'
vim.keymap.set('n', '-', ':Neotree current %:h<CR>')
vim.keymap.set('n', 't', ':Neotree reveal left<CR>')
vim.keymap.set('n', 'H', ':vsp<CR>:Neotree current %:h<CR>')
vim.keymap.set('n', 'J', ':sp<CR><C-w>j:Neotree current %:h<CR>')
vim.keymap.set('n', 'd]', vim.diagnostic.goto_next)
vim.keymap.set('n', 'd[', vim.diagnostic.goto_prev)

require("toggleterm").setup {
    open_mapping = "<C-t>",
    direction = "horizontal"
}

require('telescope').setup {
    extensions = {
        ["ui-select"] = {
            require("telescope.themes").get_dropdown {

            }
        }
    }
}
require('telescope').load_extension('ui-select')

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<C-b>', builtin.buffers)
vim.keymap.set('n', '<C-g>', builtin.git_files)
vim.keymap.set('n', '<C-p>', builtin.find_files)

require('lualine').setup()


-- file browser
require("neo-tree").setup({
    filesystem = {
        hijack_netrw_behaviour = "open_current"
    },
    window = {
        mappings = {
            ['-'] = "navigate_up",
        }
    }
})
