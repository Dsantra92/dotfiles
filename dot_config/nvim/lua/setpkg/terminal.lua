function _G.set_terminal_keymaps()
  local opts = {noremap = true}
  local remap = {noremap = false}
  vim.api.nvim_buf_set_keymap(0, 't', 'jk', [[<C-\><C-n>]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<C-h>', [[jk<C-W>h]], remap)
  vim.api.nvim_buf_set_keymap(0, 't', '<C-j>', [[jk<C-W>j]], remap)
  vim.api.nvim_buf_set_keymap(0, 't', '<C-k>', [[jk<C-W>k]], remap)
  vim.api.nvim_buf_set_keymap(0, 't', '<C-l>', [[jk<C-W>l]], remap)
end

-- if you only want these mappings for toggle term use term://*toggleterm#* instead
vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')

require("toggleterm").setup{
  -- size can be a number or function which is passed the current terminal
  size =function(term)
    if term.direction == "horizontal" then
      return 15
    elseif term.direction == "vertical" then
      return vim.o.columns * 0.4
    end
  end,
  hide_numbers = true, -- hide the number column in toggleterm buffers
  shade_filetypes = {},
  shade_terminals = true,
  shading_factor = 2, -- the degree by which to darken to terminal colour, default: 1 for dark backgrounds, 3 for light
  start_in_insert = true,
  insert_mappings = true, -- whether or not the open mapping applies in insert mode
  persist_size = true,
  direction = 'horizontal',
  close_on_exit = true, -- close the terminal window when the process exits
  -- This field is only relevant if direction is set to 'float'
  float_opts = {
    border =  'curved',
    }
}

local map = vim.api.nvim_set_keymap

map('n',    '<Leader>t',    '<cmd>ToggleTerm direction=horizontal<CR>',{noremap = true, silent=true})
map('n',    '<A-t>',        '<cmd>ToggleTerm direction=vertical<CR>',{noremap = true, silent=true})
map('t',    '<Leader>t',    '<cmd>ToggleTerm direction=horizontal<CR>',{noremap = true, silent=true})


local Terminal  = require('toggleterm.terminal').Terminal

local lazygit = Terminal:new({
  cmd = "lazygit",
  dir = ".",
  direction = "float",
  float_opts = {
    border = "double",
    height = 35 
  },
  -- function to run on opening the terminal
  on_open = function(term)
    vim.cmd("startinsert!")
    vim.api.nvim_buf_set_keymap(term.bufnr, "n", "q", "<cmd>close<CR>", {noremap = true, silent = true})
  end,
  -- function to run on closing the terminal
  on_close = function(term)
    vim.cmd("Closing terminal")
  end,
})

function _lazygit_toggle()
  lazygit:toggle()
end

vim.api.nvim_set_keymap("n", "<A-g>", "<cmd>lua _lazygit_toggle()<CR>", {noremap = true, silent = true})
