local ts = require'nvim-treesitter.configs'

ts.setup{
    ensure_installed = "maintained",
    autotag = { enable = true },
    highlight = { enable = true },
    indent = { enable = false },
    textobjects = {
      enable = true,
      select = {
        enable = true,
        -- Automatically jump forward to textobj, similar to targets.vim
        lookahead = true,
        keymaps = {
          -- You can load the capture groups defined in textobjects.scm
          ["af"] = "@function.outer",
          ["if"] = "@function.inner",
          ["ac"] = "@class.outer",
          ["ic"] = "@class.inner",
        },
        lsp_interop = {
          enable = true,
          border = "none",
          peek_definition_code = { ["df"] = "@function.outer", ["dF"] = "@class.outer" },
        },
      },
      swap = {
        enable = true,
        swap_next = { ["<leader>a"] = "@parameter.inner" },
        swap_previous = { ["<leader>A"] = "@parameter.inner" },
      },
      move = {
        enable = true,
        set_jumps = true, -- whether to set jumps in the jumplist
        goto_next_start = { ["]m"] = "@function.outer", ["]]"] = "@class.outer" },
        goto_next_end = { ["]M"] = "@function.outer", ["]["] = "@class.outer" },
        goto_previous_start = { ["[m"] = "@function.outer", ["[["] = "@class.outer" },
        goto_previous_end = { ["[M"] = "@function.outer", ["[]"] = "@class.outer" },
      },
    },
    autopairs = { enable = true },
    context_commentstring = { enable = true },
}

