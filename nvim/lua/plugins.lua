return require('packer').startup(function()

  use 'wbthomason/packer.nvim'

  use 'b3nj5m1n/kommentary'
  use 'karb94/neoscroll.nvim'

  use 'folke/which-key.nvim'

  -- To-be configured --
  use 'andymass/vim-matchup'

  -- Themes --
  use {'dracula/vim', as = 'dracula'}
  use {'joshdick/onedark.vim', as = 'onedark'}

  -- Statusline --
  use {
      'hoob3rt/lualine.nvim',  
      requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }

  -- Navigation --
  use {
      'kyazdani42/nvim-tree.lua',
      requires = 'kyazdani42/nvim-web-devicons'
  }
  use {
      'nvim-telescope/telescope.nvim',
      requires = { {'nvim-lua/plenary.nvim'} }
  }
  use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons'}

  -- TreeSitter --
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use 'nvim-treesitter/nvim-treesitter-textobjects'

  -- Completion --
  use 'neovim/nvim-lspconfig'

  -- Either coq or cmp is to be used. Both provide same completion
  -- use { 'ms-jpq/coq_nvim', branch = 'coq'} -- main one
  -- use { 'ms-jpq/coq.artifacts', branch= 'artifacts'} -- 9000+ Snippets
  use({
      "hrsh7th/nvim-cmp",
      requires = {
        { "kdheepak/cmp-latex-symbols",
          'hrsh7th/cmp-buffer',
          'hrsh7th/cmp-emoji',
          'hrsh7th/cmp-nvim-lsp',
          'hrsh7th/cmp-nvim-lua',
          'hrsh7th/cmp-path',
          'hrsh7th/cmp-vsnip',
          'quangnguyen30192/cmp-nvim-tags',
          'f3fora/cmp-spell',
          'onsails/lspkind-nvim',
        },
      },
    })
  use {
    "ray-x/lsp_signature.nvim",
  }

end)

