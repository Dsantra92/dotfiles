------------
-- Aliases --
-------------
local g = vim.g
local map = vim.api.nvim_set_keymap


--------------
-- Mappings --
--------------

g.mapleader = ';'
map('n','<Leader>v',':vsplit<CR>',{noremap = true})

-- Tabs --

map('n',	'<A-1>',	'1gt',{noremap = true, silent=true})
map('n',	'<A-2>',	'2gt',{noremap = true, silent=true})
map('n',	'<A-3>',	'3gt',{noremap = true, silent=true})
map('n',	'<A-4>',	'4gt',{noremap = true, silent=true})
map('n',	'<A-5>',	'5gt',{noremap = true, silent=true})
map('n',	'H',		'gT',{noremap = true, silent=true})
map('n',	'L',		'gt',{noremap = true, silent=true})
map('n',	'td',		':tabclose<CR>',{noremap = true, silent=true})

-- Splits --

map('n',	'<Leader>v',	':vsplit<CR>', {noremap = true, silent=true})
map('n',	'<Leader>s',	':split<CR>', {noremap = true, silent=true})
map('n',	'<Leader>t',	':tab split', {noremap = true, silent=true})
map('n',	'fh',		'<C-W><C-h>', {noremap = true, silent=true})
map('n',	'fj',		'<C-W><C-j>', {noremap = true, silent=true})
map('n',	'fk',		'<C-W><C-k>', {noremap = true, silent=true})
map('n',	'fl',		'<C-W><C-l>', {noremap = true, silent=true})

-- Misc. --

map('n',	' ', ':update<CR>', {noremap = true, silent=true})

map('n',	'<Leader>d',	'daw', {noremap = true, silent=true})
map('n',	'<Leader>c',	'caw', {noremap = true, silent=true})
map('v',	'<Leader>y',	'"+y', {noremap = true, silent=true})
map('n',	'<Leader>p',	'"+p', {noremap = true, silent=true})

-- Move selected block of text
map('x',	'K',	":move '<-2<CR>gv=gv", {noremap = true, silent=true})
map('x',	'J',	":move '>+1<CR>gv=gv", {noremap = true, silent=true})


-- Better indenting
map('v',    '>',    '>gv', {noremap = true, silent=true})
map('v',    '<',    '<gv', {noremap = true, silent=true})

-- make joining lines keep cursor position
map('n', 'J', 'mzJ`z', {noremap = true})

-- go to previous or next buffer with arrow keys
map('n', '<Left>', ':BufferLineCyclePrev<CR>', {noremap = true, silent = true})
map('n', '<Right>', ':BufferLineCycleNext<CR>', {noremap = true, silent = true})
