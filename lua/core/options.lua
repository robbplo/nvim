-- Relative line numbers
vim.o.number = true
vim.o.relativenumber = true

vim.o.ignorecase = true

-- Default to 2 spaces
vim.o.expandtab = true
vim.o.shiftwidth = 2

-- Who needs it?
vim.o.mouse = nil

-- Timers
vim.o.timeoutlen = 500
vim.o.updatetime = 2000

-- Prefer splitting to the bottom right
vim.o.splitbelow = true
vim.o.splitright = true

-- Persistent undo history
vim.o.undofile = true

-- Add colon to keyword
vim.o.iskeyword = "@,48-57,_,192-255,!,?,@-@,:"

-- Global statusline
vim.o.laststatus = 3
