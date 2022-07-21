-----------------------------------------------------------
-- Autocomplete configuration file
-----------------------------------------------------------

-- Plugin: nvim-cmp
-- url: https://github.com/hrsh7th/nvim-cmpa


vim.g.coq_settings = {
  auto_start = 'shut-up',

  keymap = {
    manual_complete = '<c-cr>'
  }
}

require('coq')
