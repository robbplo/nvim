-----------------------------------------------------------
-- Autocommand functions
-----------------------------------------------------------

-- Define autocommands with Lua APIs
-- See: h:api-autocmd, h:augroup

local augroup = vim.api.nvim_create_augroup -- Create/get autocommand group
local autocmd = vim.api.nvim_create_autocmd -- Create autocommand

-- Highlight on yank
augroup('YankHighlight', { clear = true })
autocmd('TextYankPost', {
  group = 'YankHighlight',
  callback = function()
    vim.highlight.on_yank({ higroup = 'IncSearch', timeout = '1000' })
  end
})

-- Remove whitespace on save
autocmd('BufWritePre', {
  pattern = '*',
  command = ":%s/\\s\\+$//e"
})

-- Don't auto commenting new lines
autocmd('BufEnter', {
  pattern = '*',
  command = 'set fo-=c fo-=r fo-=o'
})

-- Set indentation to 2 spaces
augroup('setIndent', { clear = true })
autocmd('Filetype', {
  group = 'setIndent',
  pattern = { 'xml', 'html', 'xhtml', 'css', 'scss', 'javascript', 'typescript',
    'yaml', 'lua', 'json'
  },
  command = 'setlocal shiftwidth=2 tabstop=2'
})

-- Terminal settings:
-- Open a Terminal on the right tab
autocmd('CmdlineEnter', {
  command = 'command! Term :botright vsplit term://$SHELL'
})

-- Enter insert mode when switching to terminal
autocmd('TermOpen', {
  command = 'setlocal listchars= nonumber norelativenumber nocursorline',
})

autocmd('TermOpen', {
  pattern = '*',
  command = 'startinsert'
})

-- Close terminal buffer on process exit
autocmd('BufLeave', {
  pattern = 'term://*',
  command = 'stopinsert'
})

-- Autosave
local function save_buffer()
  if vim.bo.modifiable
      and vim.bo.modified
      and vim.bo.buftype ~= 'nofile'
      and vim.bo.filetype ~= 'gitcommit'
      and vim.bo.filetype ~= 'gitrebase'
      and vim.api.nvim_buf_get_name(0) ~= ''
      and vim.fn.filereadable(vim.api.nvim_buf_get_name(0)) == 1 then
    vim.cmd('silent! write')
  end
end

augroup('AutoSave', { clear = true })
autocmd('FocusLost', {
  group = 'AutoSave',
  callback = save_buffer,
  pattern = '*.*'
})
autocmd('BufLeave', {
  group = 'AutoSave',
  callback = save_buffer,
  pattern = '*.*'
})

-- Display current dir in Oil.nvim buffer
local function oil_current_dir()
  if vim.bo.filetype == 'oil' then
    vim.wo.winbar = require('oil').get_current_dir()
  end
end
augroup('OilCurrentDir', { clear = true })
autocmd('BufEnter', {
  group = 'OilCurrentDir',
  callback = oil_current_dir,
})
