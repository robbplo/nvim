vim.g.barbar_auto_setup = false -- disable auto-setup

require('barbar').setup {
  sidebar_filetypes = {
    NvimTree = true
  },
  focus_on_close = "right",
  pinned = { button = '-', filename = true, separator = { right = '' } },
}
