require 'util'

-- OS integration
opt.clipboard = 'unnamedplus'
opt.mouse = 'a'

-- colorscheme
cmd 'colorscheme term'

-- Show some whitespace
opt.listchars = { tab = '»»', trail = '·' }
opt.list = true

-- set tabs
function tablen(x)
    opt.shiftwidth = x
    opt.tabstop = x
    opt.expandtab = true
end

-- statusline
opt.statusline = '─%f'
opt.fillchars = { stl = '─', stlnc = '─', eob = ' ' }

-- autocmd 'VimEnter * set laststatus=0'
autocmd 'VimEnter * set noruler'

-- folding
opt.foldmethod = 'syntax'
opt.foldlevelstart = 10

-- misc
opt.hidden = true







