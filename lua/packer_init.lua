-- This file can be loaded by calling `lua require('plugins')` from your init.vim
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrapped = ensure_packer()

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

  -- QFlist and diagnostics list
  use 'folke/trouble.nvim'

  -- LSP and autocomplete
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'

  -- Language server management
  use {
    "williamboman/mason.nvim",
    config = function()
      require('mason').setup()
    end
  }

  -- Snippets
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'

  -- Indentation guides
  use "lukas-reineke/indent-blankline.nvim"

  -- Keymap hints
  use {
    "folke/which-key.nvim",
    config = function()
      require("which-key").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end
  }

  -- Auto close brackets
  use {
    'windwp/nvim-autopairs',
    config = function()
      require('nvim-autopairs').setup()
    end
  }

  -- Surround
  use 'tpope/vim-surround'

  -- Focus events
  use 'tmux-plugins/vim-tmux-focus-events'

  -- Git labels
  use {
    'lewis6991/gitsigns.nvim',
    requires = { 'nvim-lua/plenary.nvim' },
  }

  -- Highlighting
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  -- Tab bar
  use {
    'romgrk/barbar.nvim',
    requires = { 'kyazdani42/nvim-web-devicons' },
  }

  -- Statusline
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons' }
  }

  -- Themes
  use 'folke/tokyonight.nvim'
  use "savq/melange"
  use "morhetz/gruvbox"

  -- Hardmode
  use {
    'takac/vim-hardtime',
    config = function()
      vim.g.hardtime_default_on = 0
      vim.g.hardtime_showmsg = 0
    end
  }

  ---- Language specific

  -- Elixir
  use 'elixir-editors/vim-elixir'

  use {
    'mhinz/vim-mix-format',
    config = function()
      vim.g.mix_format_on_save = 1
      vim.g.mix_format_silent_errors = 1
    end
  }
  use 'tpope/vim-endwise'

  use 'tpope/vim-abolish'

  -- Kitty
  use "fladson/vim-kitty"

  -- Fish shell
  use "dag/vim-fish"

  if (packer_bootstrapped) then
    require('packer').sync()
  end
end)
