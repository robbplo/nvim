-- disable netrw at the very start of your init.lua (strongly advised for nvim-tree)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require 'packer_init'
require 'core.autocmds'
require 'core.colors'
require 'core.options'
require 'core.keymap'
require 'plugins.barbar'
require 'plugins.gitsigns'
require 'plugins.lualine'
require 'plugins.indent-blankline'
require 'plugins.nvim-cmp'
require 'plugins.nvim-lspconfig'
require 'plugins.nvim-telescope'
require 'plugins.nvim-tree'
require 'plugins.nvim-treesitter'
require 'plugins.trouble'
