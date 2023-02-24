-- Functional wrapper for mapping custom keybindings
local function mapfun(mode)
  return function (lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
  end
end

local nmap = mapfun('n')
local map = mapfun('')

vim.g.mapleader = " "

---- General
nmap('<leader>p', '<cmd>PackerSync<cr>')
map('<leader>y', '"+y')
nmap('<leader>w', '<cmd>w<cr>')

nmap('<cr>', ':')
nmap('<C-n>', '<cmd>let @/ = ""<cr>')

---- Panes
-- Resize
nmap('<S-Left>', '<cmd>vertical resize -1<cr>')
nmap('<S-Right>', '<cmd>vertical resize +1<cr>')
nmap('<S-Up>', '<cmd>resize -1<cr>')
nmap('<S-Down>', '<cmd>resize +1<cr>')

-- Navigate
nmap('<leader>h', '<C-w>h')
nmap('<leader>j', '<C-w>j')
nmap('<leader>k', '<C-w>k')
nmap('<leader>l', '<C-w>l')

---- Barbar
-- Move to previous/next buffer
map('<A-h>', '<cmd>BufferPrevious<cr>')
map('<A-l>', '<cmd>BufferNext<cr>')
-- Re-order to previous/next buffer
map('<A-Left>', '<cmd>BufferMovePrevious<cr>')
map('<A-Right>', '<cmd>BufferMoveNext<cr>')
-- Goto buffer in position...
map('<A-1>', '<cmd>BufferGoto 1<cr>')
map('<A-2>', '<cmd>BufferGoto 2<cr>')
map('<A-3>', '<cmd>BufferGoto 3<cr>')
map('<A-4>', '<cmd>BufferGoto 4<cr>')
map('<A-5>', '<cmd>BufferGoto 5<cr>')
map('<A-6>', '<cmd>BufferGoto 6<cr>')
map('<A-7>', '<cmd>BufferGoto 7<cr>')
map('<A-8>', '<cmd>BufferGoto 8<cr>')
map('<A-9>', '<cmd>BufferGoto 9<cr>')
map('<A-0>', '<cmd>BufferLast<cr>')
-- Pin/unpin buffer
map('<A-p>', '<cmd>BufferPin<cr>')
-- Close buffer
map('<A-c>', '<cmd>BufferClose<cr>')
map('<A-C>', '<cmd>BufferCloseAllButCurrentOrPinned<cr>')

---- Trouble
nmap('<leader>xx', '<cmd>TroubleToggle<cr>')
nmap('<leader>xw', '<cmd>TroubleToggle workspace_diagnostics<cr>')
nmap('<leader>xd', '<cmd>TroubleToggle document_diagnostics<cr>')
nmap('<leader>xq', '<cmd>TroubleToggle quickfix<cr>')
nmap('<leader>xl', '<cmd>TroubleToggle loclist<cr>')
nmap('<leader>xn', '<cmd>lua require("trouble").next({skip_groups = true, jump = true})<cr>')
nmap('<leader>xp', '<cmd>lua require("trouble").previous({skip_groups = true, jump = true})<cr>')

---- Tree view
nmap('<leader>n', '<cmd>NvimTreeToggle<cr>')
nmap('<leader>N', '<cmd>NvimTreeFindFile<cr>')

---- Telescope
nmap('<leader>T', '<cmd>Telescope<cr>')
nmap('<leader>tt', '<cmd>Telescope resume<cr>')
nmap('<leader>tp', '<cmd>Telescope find_files<cr>')
nmap('<leader>tP', '<cmd>lua require("telescope.builtin").find_files({ hidden = true, no_ignore = true})<cr>')
nmap('<leader>tf', '<cmd>Telescope live_grep<cr>')

---- Git
nmap('<leader>g[', '<cmd>Gitsigns prev_hunk<cr>')
nmap('<leader>g]', '<cmd>Gitsigns next_hunk<cr>')
nmap('<leader>gb', '<cmd>Gitsigns blame_line<cr>')
nmap('<leader>gd', '<cmd>Gitsigns diffthis<cr>')
nmap('<leader>gr', '<cmd>Gitsigns reset_hunk<cr>')

-- Telescope mappings
nmap('<leader>gs', '<cmd>Telescope git_status<cr>')
nmap('<leader>gB', '<cmd>Telescope git_branches<cr>')
