-- This file can be loaded by calling `lua require('plugins')` from your init.vim
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path })
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrapped = ensure_packer()

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- File navigation
  use { 'nvim-telescope/telescope.nvim', requires = 'nvim-lua/plenary.nvim' }
  use "stevearc/oil.nvim"

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

  -- File explorer
  use "lambdalisue/fern.vim"

  -- Copilot
  use "github/copilot.vim"

  -- Snippets
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'

  -- Indentation guides
  use "lukas-reineke/indent-blankline.nvim"

  -- Keymap hints
  use {
    "folke/which-key.nvim",
    config = function()
      require("which-key").setup()
    end
  }

  -- Big brain replacing
  use 'tpope/vim-abolish'

  -- Surround
  use 'tpope/vim-surround'

  -- Git labels
  use { 'lewis6991/gitsigns.nvim', requires = 'nvim-lua/plenary.nvim' }

  -- Treesitter
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use { "nvim-treesitter/nvim-treesitter-textobjects" }
  --use { "nvim-treesitter/nvim-treesitter-textobjects", requires = "nvim-treesitter/nvim-treesitter" }

  -- Tab bar
  -- use { 'romgrk/barbar.nvim', requires = 'kyazdani42/nvim-web-devicons' }
  -- temp bugfix fork:
  use { 'taketwo/barbar.nvim', requires = 'kyazdani42/nvim-web-devicons' }


  -- Statusline
  use { 'nvim-lualine/lualine.nvim', requires = 'kyazdani42/nvim-web-devicons' }

  -- Themes
  use 'folke/tokyonight.nvim'
  use "savq/melange"
  use "morhetz/gruvbox"

  -- Language specific

  ---- Neovim
  use 'folke/neodev.nvim'

  ---- Laravel
  use 'jwalton512/vim-blade'

  ---- Kitty
  use "fladson/vim-kitty"

  ---- Fish shell
  use "dag/vim-fish"

  ---- Go templ
  use "joerdav/templ.vim"

  ---- Gleam
  use "gleam-lang/gleam.vim"

  if (packer_bootstrapped) then
    require('packer').sync()
  end
end)
