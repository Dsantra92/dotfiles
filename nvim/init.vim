:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set nowrap
:set mouse=a
:set noswapfile
:set nobackup
:set undodir=~/.nv/undodir
:set undofile
:set incsearch

"""""""""""""""""
"				"
"	Mappings	"
"				"
"""""""""""""""""
:let mapleader=";"
:nnoremap <space> :update<CR>
:nnoremap <Leader>f :NERDTreeToggle<CR>
:nnoremap <Leader>d daw
:nnoremap <Leader>c caw
:vnoremap <Leader>y "+y

:nnoremap <Leader>p "+p
:let NERDTreeQuitOnOpen = 1

call plug#begin()

Plug 'tyru/open-browser.vim' " opens url in browser
Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
Plug 'https://github.com/preservim/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion
Plug 'psliwka/vim-smoothie' " Smooth Scrolling
Plug 'vim-airline/vim-airline-themes'      

"" Git
Plug 'airblade/vim-gitgutter'


Plug 'neovim/nvim-lsp'
Plug 'nvim-lua/diagnostic-nvim'
Plug 'nvim-lua/diagnostic-nvim'
Plug 'hrsh7th/vim-vsnip'
Plug 'JuliaEditorSupport/julia-vim'




" Plugin for julia
Plug 'julialang/julia-vim'

call plug#end()

