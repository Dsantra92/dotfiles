local map = vim.api.nvim_set_keymap

map('n', '<Leader>ff', "<cmd>lua require('telescope.builtin').find_files()<cr>", {noremap = true})
map('n', "<leader>fg", "<cmd>lua require('telescope.builtin').live_grep()<cr>", {noremap = true})
map('n', "<leader>fb", "<cmd>lua require('telescope.builtin').buffers()<cr>", {noremap = true})
map('n', "<leader>fh", "<cmd>lua require('telescope.builtin').help_tags()<cr>", {noremap = true})
require('telescope').load_extension('media_files')
