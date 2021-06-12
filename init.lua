require 'util'
require 'paq'
require 'ui'
require 'keys'

-- plugins
paq {'tpope/vim-sensible'}
paq {'tpope/vim-fugitive'}
paq {'junegunn/fzf.vim'}
paq {'vimwiki/vimwiki'}
paq {'rust-lang/rust.vim'}
paq {'cespare/vim-toml'}
paq {'neovim/nvim-lspconfig'}
paq {'nvim-lua/completion-nvim'}
paq {'gfanto/fzf-lsp.nvim'}

tablen (4)

mapft('*.dnd', 'dnd')
mapft('*.plant', 'plantuml')

-- languages
require'lspconfig'.rust_analyzer.setup{}
require'fzf_lsp'.setup()

-- lsp completion
autocmd "BufEnter * lua require'completion'.on_attach()"
cmd 'inoremap <expr> <Tab>   pumvisible() ? "\\<C-n>" : "\\<Tab>"'
cmd 'inoremap <expr> <S-Tab> pumvisible() ? "\\<C-p>" : "\\<S-Tab>"'
cmd 'set completeopt=menuone,noinsert,noselect'

style = { border = 'single' }

--LSP keymaps
nmap('F', '<cmd>lua vim.lsp.buf.formatting()<CR>')
nmap('K', '<cmd>lua vim.lsp.buf.hover()<CR>')
nmap('<localleader>c', '<cmd>lua vim.lsp.buf.code_action()<CR>')
nmap('<localleader>n', '<cmd>lua vim.lsp.buf.rename()<CR>')
nmap('<localleader>r', '<cmd>lua vim.lsp.buf.references()<CR>')
nmap('<localleader>i', '<cmd>lua vim.lsp.buf.implementation()<CR>')
nmap('<localleader>D', '<cmd>lua vim.lsp.buf.declaration()<CR>')
nmap('<localleader>d', '<cmd>lua vim.lsp.buf.definition()<CR>')
nmap('<localleader>t', '<cmd>lua vim.lsp.buf.type_definition()<CR>')
nmap('d]', '<cmd>lua vim.lsp.diagnostic.goto_next({popup_opts = style})<CR>')
nmap('d[', '<cmd>lua vim.lsp.diagnostic.goto_prev({popup_opts = style})<CR>')

vim.lsp.handlers["textDocument/hover"] =
  vim.lsp.with(
  vim.lsp.handlers.hover,
  style
)

vim.lsp.handlers["textDocument/signatureHelp"] =
  vim.lsp.with(
  vim.lsp.handlers.signature_help,
  style
)

fn.sign_define("LspDiagnosticsSignError",
{text = "", texthl = "ErrSign"})
fn.sign_define("LspDiagnosticsSignWarning",
{text = "", texthl = "WarnSign"})
fn.sign_define("LspDiagnosticsSignInformation",
{text = "", texthl = "WarnSign"})
fn.sign_define("LspDiagnosticsSignHint",
{text = "", texthl = "WarnSign"})
