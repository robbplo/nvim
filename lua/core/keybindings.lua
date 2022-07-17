-- Functional wrapper for mapping custom keybindings
local function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

local function vmap(lhs, rhs, opts) map('v', lhs, rhs, opts) end
local function nmap(lhs, rhs, opts) map('n', lhs, rhs, opts) end
local function imap(lhs, rhs, opts) map('i', lhs, rhs, opts) end
local function cmap(lhs, rhs, opts) map('i', lhs, rhs, opts) end

vim.g.mapleader = " "

-- Navigate panes
nmap('<leader>h', '<C-w>h')
nmap('<leader>j', '<C-w>j')
nmap('<leader>k', '<C-w>k')
nmap('<leader>l', '<C-w>l')

nmap('<C-h>', '<C-w>h')
nmap('<C-j>', '<C-w>j')
nmap('<C-k>', '<C-w>k')
nmap('<C-l>', '<C-w>l')

imap('kj', "<Esc>")
vmap('kj', "<Esc>")
cmap('kj', "<Esc>")

nmap('<leader><c-r>', ':source ~/.config/nvim/init.lua<cr>')
vmap('<leader>y', '"+y')
nmap('<leader>y', '"+yy')
nmap('<leader>n', ':NvimTreeToggle<cr>')

nmap('<C-Left>', ':bprevious<cr>')
nmap('<C-Right>', ':bnext<cr>')
nmap('<C-Up>', ':Telescope buffers<cr>')
nmap('<C-Down>', ':bdelete<cr>')

nmap('<S-Left>', ':vertical resize -1<cr>')
nmap('<S-Right>', ':vertical resize +1<cr>')
nmap('<S-Up>', ':resize -1<cr>')
nmap('<S-Down>', ':resize +1<cr>')

nmap('<leader>p', ':PackerSync<cr>')

nmap('<C-p>', ':Telescope find_files<cr>')
nmap('<cr>', ':let @/ = ""<cr>')

