local elixir = require('elixir')

elixir.setup({
  -- default settings, use the `settings` function to override settings
  settings = elixir.settings({
    dialyzerEnabled = true,
    fetchDeps = true,
    enableTestLenses = true,
    suggestSpecs = true,
  }),

  on_attach = function(client, bufnr)
    local opts = { buffer = true, noremap = true}


    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
    vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
    vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, opts)
    vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)
    vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, opts)
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
    vim.keymap.set('n', '<space>e', vim.diagnostic.show, opts)
    vim.keymap.set('n', '[d', vim.lsp.diagnostic.goto_prev, opts)
    vim.keymap.set('n', ']d', vim.lsp.diagnostic.goto_next, opts)
    vim.keymap.set('n', '<space>q', vim.lsp.diagnostic.set_loclist, opts)
    vim.keymap.set('n', '<space>f', vim.lsp.buf.formatting, opts)
    -- run the codelens under the cursor
    vim.keymap.set("n", "<space>r",  vim.lsp.codelens.run, map_opts)
    -- remove the pipe operator
    vim.keymap.set("n", "<space>fp", ":ElixirFromPipe<cr>", map_opts)
    -- add the pipe operator
    vim.keymap.set("n", "<space>tp", ":ElixirToPipe<cr>", map_opts)
    vim.keymap.set("v", "<space>em", ":ElixirExpandMacro<cr>", map_opts)

    -- Telescope keybinds
    vim.keymap.set("n", "gr", ":Telescope lsp_references<cr>", map_opts)
    vim.keymap.set("n", "g0", ":Telescope lsp_document_symbols<cr>", map_opts)
    vim.keymap.set("n", "gW", ":Telescope lsp_workspace_symbols<cr>", map_opts)
    vim.keymap.set("n", "<leader>d", ":Telescope diagnostics<cr>", map_opts)




    -- keybinds for vim-vsnip: https://github.com/hrsh7th/vim-vsnip
    --vim.cmd([[imap <expr> <C-l> vsnip#available(1) ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>']])
    --vim.cmd([[smap <expr> <C-l> vsnip#available(1) ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>']])

    -- update capabilities for nvim-cmp: https://github.com/hrsh7th/nvim-cmp
    --require("cmp_nvim_lsp").update_capabilities(capabilities)
  end
})
