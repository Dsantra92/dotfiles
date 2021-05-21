
call plug#begin('~/.config/nvim/plugged')

Plug 'tyru/open-browser.vim'											| " opens url in browser
Plug 'tpope/vim-surround'												| " Surrounding ysw)
Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle'}					| " NERDTree for file manager									 
Plug 'ap/vim-css-color'													| " CSS Color Preview
Plug 'tpope/vim-commentary'												| " For Commenting gcc & gc
Plug 'vim-airline/vim-airline'											| " Status bar
Plug 'ryanoasis/vim-devicons'											| " Developer Icons
Plug 'neoclide/coc.nvim'												| " Auto Completion
Plug 'psliwka/vim-smoothie'												| " Smooth Scrolling
Plug 'junegunn/fzf'														| " Fuzzy Finder
Plug 'vim-airline/vim-airline-themes'									| " Airline Themes
Plug 'joshdick/onedark.vim'												| " Atom one-dark theme

"" Git
Plug 'airblade/vim-gitgutter'											| " Gutter for showing chnage in git
Plug 'tpope/vim-fugitive'												| " vim plugin for Git that is so awesome, it should be illegal
Plug 'tpope/vim-rhubarb'												| " vim plugin for github
Plug 'samoshkin/vim-mergetool'											| " Merge tool for git
Plug 'kdheepak/lazygit.vim'												| " lazygit


"Language Plugins

Plug 'neovim/nvim-lspconfig'											| " LSP for Neo-Vim
Plug 'hrsh7th/nvim-compe'												| " NVIM complete

"" Julia
Plug 'julialang/julia-vim'												| " The julia plugin
call plug#end()


lua << EOF
    require'lspconfig'.julials.setup{}
EOF


source $HOME/.config/nvim/themes/onedark.vim

:set background=dark
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
:set background=dark
:set splitbelow
:set splitright


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
:nnoremap <silent> <Leader>g :GitGutterBufferToggle<CR>
:let NERDTreeQuitOnOpen = 1

" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif


if exists('g:vscode')
    " VSCode extension
	:nnoremap <space> <Cmd>call VSCodeNotify('workbench.action.files.save')<CR>
else
    " ordinary neovim
endif
