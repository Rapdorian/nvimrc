local lspconfig = require('lspconfig')
lspconfig.rust_analyzer.setup {
    settings = {
        ['rust-analyzer'] = {},
    },
}

local tele = require 'telescope.builtin'
require("symbols-outline").setup()

-- Use LspAttach autocommand to only map the following keys
-- after the language server attaches to the current buffer
vim.api.nvim_create_autocmd('LspAttach', {
    group = vim.api.nvim_create_augroup('UserLspConfig', {}),
    callback = function(ev)
        -- setup completion

        local opts = { buffer = ev.buf }
        vim.keymap.set('n', '<localleader>d', vim.lsp.buf.definition, opts)
        vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
        vim.keymap.set('n', '<localleader>i', vim.lsp.buf.implementation, opts)
        vim.keymap.set('n', '<localleader>c', vim.lsp.buf.code_action, opts)
        vim.keymap.set('n', '<localleader>r', vim.lsp.buf.references, opts)
        vim.keymap.set('n', 'F', vim.lsp.buf.format, opts)
    end
})

vim.fn.sign_define("DiagnosticSignError", {text = "⮾", texthl = "DiagnosticSignError"})
vim.fn.sign_define("DiagnosticSignWarning", {text = "⚠", texthl = "DiagnosticSignWarning"})
vim.fn.sign_define("DiagnosticSignInformation", {text = "🛈", texthl = "DiagnosticSignInformation"})
vim.fn.sign_define("DiagnosticSignHint", {text = "🛈", texthl = "DiagnosticSignHint"})
