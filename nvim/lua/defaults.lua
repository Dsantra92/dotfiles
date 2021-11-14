local o = vim.opt

o.number = true
o.relativenumber = true
o.mouse = 'a'
o.linebreak = true 
o.termguicolors = true
o.autoindent = true

o.splitbelow = true
o.splitright = true

o.shiftwidth = 2
o.shiftround = true
o.tabstop = 8
o.softtabstop = 4
o.expandtab = true
o.smarttab = true

o.swapfile = false
o.undodir = vim.fn.stdpath("cache") .. "/undodir"
o.backupdir = vim.fn.stdpath("cache") .. "/backup"
o.directory = vim.fn.stdpath("cache") .. "/swap"

vim.o.undofile = true
vim.o.backup = false --  no backup before overwriting a file
vim.o.writebackup = false --  no backups when writing a file
vim.o.autowrite = true --  Automatically :write before running commands

o.ignorecase = true
o.smartcase = true

o.completeopt = 'menuone,longest,noinsert,noselect'
o.wildmode = {'longest:full', 'full'}

o.colorcolumn = "93" 
vim.o.diffopt = vim.o.diffopt .. ",vertical" --  Always use vertical diffs
vim.o.diffopt = vim.o.diffopt .. ",algorithm:patience"
vim.o.diffopt = vim.o.diffopt .. ",indent-heuristic"
-- vim.o.cursorline = true --  highlight current line

vim.o.list = true
vim.o.listchars = "tab:»·,trail:·,conceal:┊,nbsp:×,extends:❯,precedes:❮" --  Display extra whitespace
vim.o.nrformats = "bin,hex,alpha" --  increment or decrement alpha
vim.o.joinspaces = false --  Use one space, not two, after punctuation
vim.o.redrawtime = 10000 -- set higher redrawtime so that vim does not hang on difficult syntax highlighting
vim.o.updatetime = 250 -- set lower updatetime so that vim git gutter updates sooner
