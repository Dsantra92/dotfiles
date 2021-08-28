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
o.tabstop = 8
o.softtabstop = 4
o.expandtab = true
o.smarttab = true


o.swapfile = false
o.undofile = true
o.undodir = os.getenv('HOME').."/.nv/undodir/"

o.ignorecase = true
o.smartcase = true

o.completeopt = 'menuone,longest,noinsert,noselect'
o.wildmode = {'longest:full', 'full'}
