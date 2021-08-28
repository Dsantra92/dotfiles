local cmp = require('cmp')
cmp.setup {
-- You can set mappings if you want
mapping = {
  ['<C-p>'] = cmp.mapping.select_prev_item(),
  ['<C-n>'] = cmp.mapping.select_next_item(),
  ['<C-d>'] = cmp.mapping.scroll_docs(-4),
  ['<C-f>'] = cmp.mapping.scroll_docs(4),
  ['<C-Space>'] = cmp.mapping.complete(),
  ['<Tab>'] = cmp.mapping(cmp.mapping.select_next_item(), { 'i', 's' }),
  ['<C-e>'] = cmp.mapping.close(),
  ['<CR>'] = cmp.mapping.confirm({
    behavior = cmp.ConfirmBehavior.Insert,
    select = true,
  })
},

-- You should specify your *installed* sources.
sources = {
  { name = 'buffer' },
  { name = 'emoji' },
  { name = 'nvim_lsp' },
  { name = 'nvim_lua' },
  { name = 'path' },
  { name = 'latex_symbols'},
  { name = 'spell'},
  { name = 'treesitter'}
},
formatting = {
    format = function(entry, vim_item)
        -- fancy icons and a name of kind
        vim_item.kind = require("lspkind").presets.default[vim_item.kind]
        .. " "
        .. vim_item.kind
        -- set a name for each source
        vim_item.menu = ({
            buffer = "[Buffer]",
            nvim_lsp = "[LSP]",
            luasnip = "[LuaSnip]",
            nvim_lua = "[Lua]",
            latex_symbols = "[Latex]",
        })[entry.source.name]
        return vim_item
    end,
},
}

