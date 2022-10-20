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
local function cmap(lhs, rhs, opts) map('c', lhs, rhs, opts) end
local function omap(lhs, rhs, opts) map('o', lhs, rhs, opts) end

vim.g.mapleader = " "
-- Navigate panes
nmap('<leader>h', '<C-w>h')
nmap('<leader>j', '<C-w>j')
nmap('<leader>k', '<C-w>k')
nmap('<leader>l', '<C-w>l')

nmap('<C-h>', ':BufferPrevious<cr>')
nmap('<C-l>', ':BufferNext<cr>')
nmap('<C-j>', ':BufferClose<cr>')

nmap('<leader><c-r>', ':source ~/.config/nvim/init.lua<cr>')
vmap('<leader>y', '"+y')
nmap('<leader>y', '"+yy')
nmap('<leader>n', ':NvimTreeToggle<cr>')
nmap('<leader>N', ':NvimTreeFindFile<cr>')
nmap('<leader>w', ':w<cr>')

nmap('<C-n>', ':let @/ = ""<cr>')

-- Barbar
nmap('<C-Left>', ':BufferMovePrevious<cr>')
nmap('<C-Right>', ':BufferMoveNext<cr>')
nmap('<C-Down>', ':BufferClose<cr>')

nmap('<S-Left>', ':vertical resize -1<cr>')
nmap('<S-Right>', ':vertical resize +1<cr>')
nmap('<S-Up>', ':resize -1<cr>')
nmap('<S-Down>', ':resize +1<cr>')

nmap('<leader>p', ':PackerSync<cr>')


nmap('<cr>', ':')

nmap('<C-Up>', ':Telescope buffers<cr>')
nmap('<C-p>', ':Telescope find_files<cr>')
nmap('<leader><C-p>', ':lua require("telescope.builtin").find_files({ hidden = true, no_ignore = true})<cr>')
nmap('<leader>f', ':Telescope live_grep<cr>')
