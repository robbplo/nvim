return require('packer').startup(function(use)
  -- https://github.com/wbthomason/packer.nvim

  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- File explorer
  use 'kyazdani42/nvim-web-devicons'
  use 'kyazdani42/nvim-tree.lua'

  -- File navigation
  use {
    'nvim-telescope/telescope.nvim',
    requires = { 'nvim-lua/plenary.nvim' }
  }

  -- LSP and autocomplete
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'

  -- Snippets
  use 'L3MON4D3/LuaSnip'

  -- Indentation guides
  use "lukas-reineke/indent-blankline.nvim"

  -- Auto close brackets
  use {
    'windwp/nvim-autopairs',
    config = function()
      require('nvim-autopairs').setup()
    end
  }

  -- Surround
  use 'tpope/vim-surround'

  -- Git labels
  use {
    'lewis6991/gitsigns.nvim',
    requires = { 'nvim-lua/plenary.nvim' },
    config = function()
      require('gitsigns').setup()
    end
  }

  -- Highlighting
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  -- Highligting for specific languages
  use "fladson/vim-kitty"

  -- Statusline
  use {
    'feline-nvim/feline.nvim',
    requires = { 'kyazdani42/nvim-web-devicons' },
  }

  -- Themes
  --use 'folke/tokyonight.nvim'
  use "savq/melange"

  -- Dashboard
  use {
    'goolord/alpha-nvim',
    requires = { 'kyazdani42/nvim-web-devicons' },
  }

  -- Hardmode
  use {
    'takac/vim-hardtime',
    config = function()
      vim.g.hardtime_default_on = 1
      vim.g.hardtime_showmsg = 1
    end
  }

  -- Elixir
  use { "mhanberg/elixir.nvim", requires = { "nvim-lua/plenary.nvim" } }
end)
