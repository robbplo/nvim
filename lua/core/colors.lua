vim.opt.termguicolors = true
vim.opt.cursorline = true

vim.cmd [[let &t_8f = "\<Esc>[38:2:%lu:%lu:%lum"]]
vim.cmd [[let &t_8b = "\<Esc>[48:2:%lu:%lu:%lum"]]

vim.g.gruvbox_italic = 1
vim.cmd [[colorscheme gruvbox]]
