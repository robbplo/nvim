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
--local function imap(lhs, rhs, opts) map('i', lhs, rhs, opts) end
--local function cmap(lhs, rhs, opts) map('c', lhs, rhs, opts) end
--local function omap(lhs, rhs, opts) map('o', lhs, rhs, opts) end

vim.g.mapleader = " "
-- Navigate panes
nmap('<leader>h', '<C-w>h')
nmap('<leader>j', '<C-w>j')
nmap('<leader>k', '<C-w>k')
nmap('<leader>l', '<C-w>l')

nmap('<leader><c-r>', ':source ~/.config/nvim/init.lua<cr>')
vmap('<leader>y', '"+y')
nmap('<leader>y', '"+y')
nmap('<leader>n', ':NvimTreeToggle<cr>')
nmap('<leader>N', ':NvimTreeFindFile<cr>')
nmap('<leader>w', ':w<cr>')

nmap('<C-n>', ':let @/ = ""<cr>')

---- Barbar
-- Move to previous/next
nmap('<A-h>', '<Cmd>BufferPrevious<CR>')
nmap('<A-l>', '<Cmd>BufferNext<CR>')
-- Re-order to previous/next
nmap('<A-Left>', '<Cmd>BufferMovePrevious<CR>')
nmap('<A-Right>', '<Cmd>BufferMoveNext<CR>')
-- Goto buffer in position...
nmap('<A-1>', '<Cmd>BufferGoto 1<CR>')
nmap('<A-2>', '<Cmd>BufferGoto 2<CR>')
nmap('<A-3>', '<Cmd>BufferGoto 3<CR>')
nmap('<A-4>', '<Cmd>BufferGoto 4<CR>')
nmap('<A-5>', '<Cmd>BufferGoto 5<CR>')
nmap('<A-6>', '<Cmd>BufferGoto 6<CR>')
nmap('<A-7>', '<Cmd>BufferGoto 7<CR>')
nmap('<A-8>', '<Cmd>BufferGoto 8<CR>')
nmap('<A-9>', '<Cmd>BufferGoto 9<CR>')
nmap('<A-0>', '<Cmd>BufferLast<CR>')
-- Pin/unpin buffer
nmap('<A-p>', '<Cmd>BufferPin<CR>')
-- Close buffer
nmap('<A-c>', '<Cmd>BufferClose<CR>')
nmap('<A-C>', '<Cmd>BufferCloseAllButCurrentOrPinned<CR>')
----

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

-- Git stuff
nmap('gb', ':Gitsigns blame_line<cr>')
nmap('g[', ':Gitsigns prev_hunk<cr>')
nmap('g]', ':Gitsigns next_hunk<cr>')
nmap('gs', ':Telescope git_status<cr>')
