local cmp = require 'cmp'
cmp.setup({
    snippet = {
        expand = function(args)
        end
    },
    window = {
        -- nope
    },
    preselect = cmp.PreselectMode.None,
    mapping = cmp.mapping.preset.insert({
        ['<Tab>'] = cmp.mapping.select_next_item(),
        ['<S-Tab>'] = cmp.mapping.select_prev_item(),
    }),
    sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'crates' }
    }, {
        { name = 'buffer' }
    })
})


