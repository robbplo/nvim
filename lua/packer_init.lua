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
    requires = { 'kyazdani42/nvim-web-devicons' }
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
      vim.g.hardtime_showmsg = 1
    end
  }

  ---- Language specific

  -- Elixir
  use 'elixir-editors/vim-elixir'
--   use {
--     "mhanberg/elixir.nvim",
--     requires = { "nvim-lua/plenary.nvim" },
--     config = function()
--       local elixir = require("elixir")
--       elixir.setup({
--         -- specify a repository and branch
--         -- repo = "mhanberg/elixir-ls", -- defaults to elixir-lsp/elixir-ls
--         -- branch = "mh/all-workspace-symbols", -- defaults to nil, just checkouts out the default branch, mutually exclusive with the `tag` option
--         -- tag = "v0.12.0", -- defaults to nil, mutually exclusive with the `branch` option
--
--         -- alternatively, point to an existing elixir-ls installation (optional)
--         -- not currently supported by elixirls, but can be a table if you wish to pass other args `{"path/to/elixirls", "--foo"}`
--         -- cmd = "/usr/local/bin/elixir-ls.sh",
--
--         -- default settings, use the `settings` function to override settings
--         settings = elixir.settings({
--           dialyzerEnabled = true,
--           fetchDeps = false,
--           enableTestLenses = true,
--           suggestSpecs = krue,
--         }),
--
--         on_attach = function(client, bufnr)
--           local map_opts = { buffer = true, noremap = true }
--
--           -- run the codelens under the cursor
--           vim.keymap.set("n", "<space>r", vim.lsp.codelens.run, map_opts)
--           -- remove the pipe operator
--           vim.keymap.set("n", "<space>fp", ":ElixirFromPipe<cr>", map_opts)
--           -- add the pipe operator
--           vim.keymap.set("n", "<space>tp", ":ElixirToPipe<cr>", map_opts)
--           vim.keymap.set("v", "<space>em", ":ElixirExpandMacro<cr>", map_opts)
--
--           -- bindings for standard LSP functions.
--           vim.keymap.set("n", "<space>df", "<cmd>lua vim.lsp.buf.formatting_seq_sync()<cr>", map_opts)
--           vim.keymap.set("n", "<space>gd", "<cmd>lua vim.diagnostic.open_float()<cr>", map_opts)
--           vim.keymap.set("n", "<space>dt", "<cmd>lua vim.lsp.buf.definition()<cr>", map_opts)
--           vim.keymap.set("n", "<space>K", "<cmd>lua vim.lsp.buf.hover()<cr>", map_opts)
--           vim.keymap.set("n", "<space>gD", "<cmd>lua vim.lsp.buf.implementation()<cr>", map_opts)
--           vim.keymap.set("n", "<space>1gD", "<cmd>lua vim.lsp.buf.type_definition()<cr>", map_opts)
--           -- keybinds for fzf-lsp.nvim: https://github.com/gfanto/fzf-lsp.nvim
--           -- you could also use telescope.nvim: https://github.com/nvim-telescope/telescope.nvim
--           -- there are also core vim.lsp functions that put the same data in the loclist
--           vim.keymap.set("n", "<space>gr", ":References<cr>", map_opts)
--           vim.keymap.set("n", "<space>g0", ":DocumentSymbols<cr>", map_opts)
--           vim.keymap.set("n", "<space>gW", ":WorkspaceSymbols<cr>", map_opts)
--           vim.keymap.set("n", "<leader>d", ":Diagnostics<cr>", map_opts)
--
--
--           -- keybinds for vim-vsnip: https://github.com/hrsh7th/vim-vsnip
--           vim.cmd([[imap <expr> <C-l> vsnip#available(1) ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>']])
--           vim.cmd([[smap <expr> <C-l> vsnip#available(1) ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>']])
--
--           -- update capabilities for nvim-cmp: https://github.com/hrsh7th/nvim-cmp
--           require("cmp_nvim_lsp").update_capabilities(capabilities)
--         end
--       })
--     end
--   }

  use {
    'mhinz/vim-mix-format',
    config = function()
      vim.g.mix_format_on_save = 1
    end
  }
  use 'tpope/vim-endwise'

  -- Kitty
  use "fladson/vim-kitty"

  -- Fish shell
  use "dag/vim-fish"

end)
