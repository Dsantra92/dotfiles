------------
-- Aliases --
-------------
local g = vim.g
local map = vim.api.nvim_set_keymap


--------------
-- Mappings --
--------------

g.mapleader = ';'

-- Splits --

map('n','<Leader>v',':vsplit<CR>',{noremap = true, silent=true})
map('n','<Leader>s',':split<CR>',{noremap = true, silent=true})


-- Buffers --

map('n',	'<A-1>',        	':BufferLineGoToBuffer 1<CR>',{noremap = true, silent=true})
map('n',	'<A-2>',        	':BufferLineGoToBuffer 2<CR>',{noremap = true, silent=true})
map('n',	'<A-3>',        	':BufferLineGoToBuffer 3<CR>',{noremap = true, silent=true})
map('n',	'<A-4>',        	':BufferLineGoToBuffer 4<CR>',{noremap = true, silent=true})
map('n',	'<A-5>',        	':BufferLineGoToBuffer 5<CR>',{noremap = true, silent=true})
map('n',	'H',	        	':BufferLineCyclePrev<CR>',{noremap = true, silent=true})
map('n',	'L',	        	':BufferLineCycleNext<CR>',{noremap = true, silent=true})
map('n',	'gb',	        	':BufferLinePick<CR>',{noremap = true, silent=true})
map('n',	'<Leader>ld',		':BufferLineCloseLeft<CR>',{noremap = true, silent=true})
map('n',	'<Leader>rd',		':BufferLineCloseRight<CR>',{noremap = true, silent=true})
map('n',	'<Leader>d',	        ':BufferLinePickClose<CR>',{noremap = true, silent=true})

-- Splits --

map('n',	'<Leader>v',	':vsplit<CR>', {noremap = true, silent=true})
map('n',	'<Leader>s',	':split<CR>', {noremap = true, silent=true})
map('n',	'fh',		'<C-W><C-h>', {noremap = true, silent=true})
map('n',	'fj',		'<C-W><C-j>', {noremap = true, silent=true})
map('n',	'fk',		'<C-W><C-k>', {noremap = true, silent=true})
map('n',	'fl',		'<C-W><C-l>', {noremap = true, silent=true})

-- Misc. --

map('n',	' ', ':update<CR>', {noremap = true, silent=true})

-- Registers
map('v',	'<Leader>y',	'"+y', {noremap = true, silent=true})
map('n',	'<Leader>p',	'"+p', {noremap = true, silent=true})

-- delete words
map('n',	'gd',	        'daw', {noremap = true, silent=true})
map('n',	'gc',	        'caw', {noremap = true, silent=true})

-- Move selected block of text
map('x',	'K',	":move '<-2<CR>gv=gv", {noremap = true, silent=true})
map('x',	'J',	":move '>+1<CR>gv=gv", {noremap = true, silent=true})


-- Better indenting
map('v',    '>',    '>gv', {noremap = true, silent=true})
map('v',    '<',    '<gv', {noremap = true, silent=true})

-- make joining lines keep cursor position
map('n', 'J', 'mzJ`z', {noremap = true})

-- go to previous or next buffer with arrow keys
map('n', 'H', ':BufferLineCyclePrev<CR>', {noremap = true, silent = true})
map('n', 'L', ':BufferLineCycleNext<CR>', {noremap = true, silent = true})

-- Stop the highlight easily
map('n','<Leader>h',':nohlsearch<CR>',{noremap = true, silent=true})
