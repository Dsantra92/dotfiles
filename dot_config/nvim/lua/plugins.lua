return require('packer').startup(function()

  use 'wbthomason/packer.nvim'

  use 'b3nj5m1n/kommentary'
  use 'karb94/neoscroll.nvim'
  use 'lukas-reineke/indent-blankline.nvim'

  use 'folke/which-key.nvim'
  use 'AckslD/nvim-neoclip.lua'
  use 'preservim/tagbar'

  -- To-be configured --
  use 'andymass/vim-matchup'

  -- Themes --
  use {'dracula/vim', as = 'dracula'}
  use {'joshdick/onedark.vim', as = 'onedark'}
  use {'rebelot/kanagawa.nvim', as = 'kanagawa'}

  -- Statusline --
  use {
      'hoob3rt/lualine.nvim',  
      requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }

  -- Terminal support
  use {"akinsho/nvim-toggleterm.lua"}

  -- Navigation --
  use {
      'kyazdani42/nvim-tree.lua',
      requires = 'kyazdani42/nvim-web-devicons'
  }
  use 'Yggdroot/LeaderF'
  use {
      'nvim-telescope/telescope.nvim',
      requires = { 'nvim-lua/plenary.nvim', 
                   'nvim-lua/popup.nvim', 
                   'nvim-telescope/telescope-media-files.nvim',
                   'nvim-telescope/telescope-fzy-native.nvim'}
     }
  use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons'}
  use 'phaazon/hop.nvim'

  -- TreeSitter --
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate',
        requires = {'nvim-treesitter/nvim-treesitter-textobjects',
                     "windwp/nvim-ts-autotag",
                     "JoosepAlviste/nvim-ts-context-commentstring"}
      }

  -- Git --
  use {
    'lewis6991/gitsigns.nvim',
    requires = {
      'nvim-lua/plenary.nvim'
    }
  }
  use 'tpope/vim-fugitive'

  -- Completion --
  use 'neovim/nvim-lspconfig'
  -- Co-Pilot
  use 'github/copilot.vim'

  -- Either coq or cmp is to be used. Both provide same completion
  use { 'ms-jpq/coq_nvim', branch = 'coq'} -- main one
  use { 'ms-jpq/coq.artifacts', branch= 'artifacts'} -- 9000+ Snippets
  use 'ms-jpq/coq.thirdparty'

  --[[ use({
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
  } ]]

end)

