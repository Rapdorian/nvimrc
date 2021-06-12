-- aliases
cmd = vim.cmd  -- to execute Vim commands e.g. cmd('pwd')

fn = vim.fn    -- to call Vim functions e.g. fn.bufnr()
g = vim.g      -- a table to access global variables
opt = vim.opt  -- to set options
map = vim.api.nvim_set_keymap -- to set keymaps

-- glue code to things without APIs

function autocmd(x)
    cmd ('autocmd ' .. x)
end

function mapft(ext, ft)
    autocmd('BufNewFile,BufRead ' .. ext .. ' set filetype=' .. ft)
end

function nmap(key, cmd)
    map('n', key, cmd, {})
end
