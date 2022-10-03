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

nmap('<C-h>', '<C-w>h')
nmap('<C-j>', '<C-w>j')
nmap('<C-k>', '<C-w>k')
nmap('<C-l>', '<C-w>l')

nmap('<leader><c-r>', ':source ~/.config/nvim/init.lua<cr>')
vmap('<leader>y', '"+y')
nmap('<leader>y', '"+yy')
nmap('<leader>n', ':NvimTreeToggle<cr>')
nmap('<leader>w', ':w<cr>')

nmap('<C-n>', ':let @/ = ""<cr>')

nmap('<C-Left>', ':bprevious<cr>')
nmap('<C-Right>', ':bnext<cr>')
nmap('<C-Down>', ':bdelete<cr>')

nmap('<S-Left>', ':vertical resize -1<cr>')
nmap('<S-Right>', ':vertical resize +1<cr>')
nmap('<S-Up>', ':resize -1<cr>')
nmap('<S-Down>', ':resize +1<cr>')

nmap('<leader>p', ':PackerSync<cr>')

nmap('<leader><C-p>', ':lua require("telescope.builtin").find_files({ hidden = true, no_ignore = true})<cr>')
nmap('<cr>', ':')

nmap('<C-Up>', ':Telescope buffers<cr>')
nmap('<C-p>', ':Telescope find_files<cr>')
nmap('<leader>f', ':Telescope live_grep<cr>')

-- Russian keymap
local function rusmap(lhs, rhs)
  nmap(lhs, rhs, {})
  vmap(lhs, rhs, {})
  cmap(lhs, rhs, {})
  omap(lhs, rhs, {})
end
--
-- rusmap('я', 'q')
-- rusmap('ш', 'w')
-- rusmap('е', 'e')
-- rusmap('р', 'r')
-- rusmap('т', 't')
-- rusmap('ы', 'y')
-- rusmap('у', 'u')
-- rusmap('и', 'i')
-- rusmap('о', 'o')
-- rusmap('п', 'p')
-- rusmap('а', 'a')
-- rusmap('с', 's')
-- rusmap('д', 'd')
-- rusmap('ф', 'f')
-- rusmap('г', 'g')
-- rusmap('ч', 'h')
-- rusmap('й', 'j')
-- rusmap('к', 'k')
-- rusmap('л', 'l')
-- rusmap('з', 'z')
-- rusmap('х', 'x')
-- rusmap('ц', 'c')
-- rusmap('в', 'v')
-- rusmap('б', 'b')
-- rusmap('н', 'n')
-- rusmap('м', 'm')
--
-- rusmap('Я', 'Q')
-- rusmap('Ш', 'W')
-- rusmap('Е', 'E')
-- rusmap('Р', 'R')
-- rusmap('Т', 'T')
-- rusmap('Ы', 'Y')
-- rusmap('У', 'U')
-- rusmap('И', 'I')
-- rusmap('О', 'O')
-- rusmap('П', 'P')
-- rusmap('А', 'A')
-- rusmap('С', 'S')
-- rusmap('Д', 'D')
-- rusmap('Ф', 'F')
-- rusmap('Г', 'G')
-- rusmap('Ч', 'H')
-- rusmap('Й', 'J')
-- rusmap('К', 'K')
-- rusmap('Л', 'L')
-- rusmap('З', 'Z')
-- rusmap('Х', 'X')
-- rusmap('Ц', 'C')
-- rusmap('В', 'V')
-- rusmap('Б', 'B')
-- rusmap('Н', 'N')
-- rusmap('М', 'M')
--

-- rusmap('Я', 'Q')
-- rusmap('Ш', 'W')
-- rusmap('Е', 'E')
-- rusmap('Р', 'R')
-- rusmap('Т', 'T')
-- rusmap('Ы', 'Y')
-- rusmap('У', 'U')
-- rusmap('И', 'I')
-- rusmap('О', 'O')
-- rusmap('П', 'P')
-- rusmap('А', 'A')
-- rusmap('С', 'S')
-- rusmap('Д', 'D')
-- rusmap('Ф', 'F')
-- rusmap('Г', 'G')
-- rusmap('Ч', 'H')
-- rusmap('Й', 'J')
-- rusmap('К', 'K')
-- rusmap('Л', 'L')
-- rusmap('З', 'Z')
-- rusmap('Х', 'X')
-- rusmap('Ц', 'C')
-- rusmap('В', 'V')
-- rusmap('Б', 'B')
-- rusmap('Н', 'N')
-- rusmap('М', 'M')

