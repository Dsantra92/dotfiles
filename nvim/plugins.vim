call plug#begin('~/.config/nvim/plugged')

Plug 'tpope/vim-surround'								| " Surrounding ysw)
Plug 'tpope/vim-commentary'								| " For Commenting gcc & gc

Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle'}					| " NERDTree for file manager
Plug 'ap/vim-css-color'									| " CSS Color Preview
Plug 'vim-airline/vim-airline'								| " Status bar

Plug 'psliwka/vim-smoothie'								| " Smooth Scrolling
Plug 'joshdick/onedark.vim'								| " Atom one-dark theme
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/playground'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'							| " Neovim-telescope

Plug 'kyazdani42/nvim-web-devicons'

"" Git
Plug 'airblade/vim-gitgutter'								| " Gutter for showing chnage in git
Plug 'tpope/vim-fugitive'								| " vim plugin for Git that is so awesome, it should be illegal
Plug 'tpope/vim-rhubarb'								| " vim plugin for github
Plug 'samoshkin/vim-mergetool'								| " Merge tool for git
Plug 'kdheepak/lazygit.vim'								| " lazygit
Plug 'cohama/agit.vim'

"Language Plugins

Plug 'nvim-lua/completion-nvim'
Plug 'onsails/lspkind-nvim'
Plug 'L3MON4D3/LuaSnip'
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-nvim-lua'
Plug 'neovim/nvim-lspconfig'								| " LSP for Neo-Vim

"" Julia
Plug 'julialang/julia-vim'								| " The julia plugin

Plug 'ryanoasis/vim-devicons'
call plug#end()


"""""""""""""""""""""
" Plugin Defaults	"
"					"
"""""""""""""""""""""

:nnoremap <silent> <Leader>g :GitGutterBufferToggle<CR>

" NERDTree
source $HOME/.config/nvim/setplugs/nerdtree.vim

:nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
:nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
:nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
:nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>

:luafile $HOME/.config/nvim/setplugs/telescope.lua
source $HOME/.config/nvim/setplugs/compe.vim
:luafile $HOME/.config/nvim/setplugs/lspkind.lua
