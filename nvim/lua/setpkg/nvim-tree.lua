local tree_cb = require'nvim-tree.config'.nvim_tree_callback
local g = vim.g

g.nvim_tree_bindings = {
      { key = "u",        cb = tree_cb("dir_up") },
      { key = "b",        cb = tree_cb("cd") },
    }

--------------
-- Defaults --
--------------
g.nvim_tree_side = 'right'
g.nvim_tree_ignore = { '.git', 'node_modules', '.cache', '.vscode' }
g.nvim_tree_auto_close = 1
g.nvim_tree_highlight_opened_files = 1 
g.nvim_tree_hijack_cursor = 0
g.nvim_tree_auto_open = 1

--------------
-- Mappings --
--------------

local map = vim.api.nvim_set_keymap

map('n',    '<Leader>g',    ':NvimTreeToggle<CR>', {noremap = true, silent=true})
map('n',    'ff',           ':NvimTreeFocus<CR>', {noremap = true, silent=true})

