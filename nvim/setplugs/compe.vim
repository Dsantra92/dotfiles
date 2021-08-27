" Setup global configuration. More on configuration below.
lua <<EOF
  local cmp = require('cmp')
  cmp.setup {
    completion = {
	autocomplete = false
    },
    snippet = {
      expand = function(args)
        -- You must install `vim-vsnip` if you use the following as-is.
        vim.fn['vsnip#anonymous'](args.body)
      end
    },

    -- You can set mapping if you want.
    mapping = {
      ['<C-p>'] = cmp.mapping.select_prev_item(),
      ['<C-n>'] = cmp.mapping.select_next_item(),
      ['<C-d>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-Space>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.close(),
      ['<CR>'] = cmp.mapping.confirm({
        behavior = cmp.ConfirmBehavior.Insert,
        select = true,
      })
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
    -- You should specify your *installed* sources.
    sources = {
      { name = 'buffer' , 'path', 'spell', 'nvim_lua', 'nvim_lsp'},
    },
  }
EOF

" Setup buffer configuration (nvim-lua source only enables in Lua filetype).
autocmd FileType lua lua require'cmp'.setup.buffer {
\   sources = {
\     { name = 'buffer' },
\     { name = 'nvim_lua' },
\   },
\ }
