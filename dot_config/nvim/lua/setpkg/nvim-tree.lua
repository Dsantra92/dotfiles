local g = vim.g
--------------
-- Defaults --
--------------
g.nvim_tree_highlight_opened_files = 2 
g.nvim_quit_on_open = 1
g.nvim_tree_git_hl = 1

local tree_cb = require'nvim-tree.config'.nvim_tree_callback

require'nvim-tree'.setup {
      disable_netrw       = true,
      hijack_netrw        = true,
      open_on_setup       = true,
      ignore_ft_on_setup  = {},
      update_to_buf_dir   = {
        enable = true,
        auto_open = true,
      },
      auto_close          = true,
      open_on_tab         = false,
      hijack_cursor       = true,
      update_cwd          = false,
      diagnostics         = {
        enable = false,
        icons = {
          hint = "",
          info = "",
          warning = "",
          error = "",
        }
      },
      update_focused_file = {
        enable      = false,
        update_cwd  = false,
        ignore_list = {}
      },
      system_open = {
        cmd  = nil,
        args = {}
      },
      view = {
        width = 30,
        height = 30,
        side = 'right',
        auto_resize = true,
        mappings = {
          custom_only = false,
          list = {
              { key = "u",        cb = tree_cb("dir_up") },
              { key = "b",        cb = tree_cb("cd") },
        }
      },
      filters = {
	dotfiles = true,
	custom = { '.git', 'node_modules', '.cache', '.vscode' }
    },
    git = {
      enable = true,
      ignore = false,
      timeout = 500,
    }
  }
}

--------------
-- Mappings --
--------------

local map = vim.api.nvim_set_keymap

map('n',    '<Leader>g',    ':NvimTreeToggle<CR>', {noremap = true, silent=true})
map('n',    'ff',           ':NvimTreeFocus<CR>', {noremap = true, silent=true})

