local actions = require('telescope.actions')

require('telescope').setup{
  defaults = {
    prompt_prefix = "🧲 ",
    selection_caret = ">> ",
    entry_prefix = "   ",
    initial_mode = "insert",
      mappings = {
      i = {
        ["<cr>"] = actions.select_tab,
      },
      n = {
        ["<cr>"] = actions.select_tab,
      },
    },
  } 
} 

