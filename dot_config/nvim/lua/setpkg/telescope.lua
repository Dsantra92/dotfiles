local map = vim.api.nvim_set_keymap


require('telescope').setup {
    defaults = {
        file_sorter = require("telescope.sorters").get_fzy_sorter,

        file_previewer = require("telescope.previewers").vim_buffer_cat.new,
        grep_previewer = require("telescope.previewers").vim_buffer_vimgrep.new,
        qflist_previewer = require("telescope.previewers").vim_buffer_qflist.new,
    },
    extensions = {
        fzy_native = {
            override_generic_sorter = false,
            override_file_sorter = true,
        },
	media_files = {
	  -- filetypes whitelist
	  -- defaults to {"png", "jpg", "mp4", "webm", "pdf"}
	  filetypes = {"png", "webp", "jpg", "jpeg", "pdf"},
	  find_cmd = "rg" -- find command (defaults to `fd`)
	}
    }
}

-- Plugins
require('telescope').load_extension('media_files')
require('telescope').load_extension('fzy_native')

-- Special functions
local M = {}
M.search_dotfiles = function()
    require("telescope.builtin").find_files({
        prompt_title = "< VimRC >",
        cwd = vim.env.DOTFILES,
        hidden = true,
    })
end

M.git_branches = function()
    require("telescope.builtin").git_branches({
        attach_mappings = function(_, map)
            map("i", "<c-d>", actions.git_delete_branch)
            map("n", "<c-d>", actions.git_delete_branch)
            return true
        end,
    })
end

map('n', '<Leader>ff', "<cmd>lua require('telescope.builtin').find_files()<cr>", {noremap = true})
map('n', "<leader>fg", "<cmd>lua require('telescope.builtin').live_grep()<cr>", {noremap = true})
map('n', "<leader>fb", "<cmd>lua require('telescope.builtin').buffers()<cr>", {noremap = true})
map('n', "<leader>fh", "<cmd>lua require('telescope.builtin').help_tags()<cr>", {noremap = true})

