local elixir = require('elixir')

elixir.setup({
  -- default settings, use the `settings` function to override settings
  settings = elixir.settings({
    dialyzerEnabled = true,
    fetchDeps = true,
    enableTestLenses = true,
    suggestSpecs = false,
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
    -- run the codelens under the cursor
    vim.keymap.set("n", "<space>r",  vim.lsp.codelens.run, opts)
    -- remove the pipe operator
    vim.keymap.set("n", "<space>fp", ":ElixirFromPipe<cr>", opts)
    -- add the pipe operator
    vim.keymap.set("n", "<space>tp", ":ElixirToPipe<cr>", opts)
    vim.keymap.set("v", "<space>em", ":ElixirExpandMacro<cr>", opts)

    -- Telescope keybinds
    vim.keymap.set("n", "gr", ":Telescope lsp_references<cr>", opts)
    vim.keymap.set("n", "g0", ":Telescope lsp_document_symbols<cr>", opts)
    vim.keymap.set("n", "gW", ":Telescope lsp_workspace_symbols<cr>", opts)
    vim.keymap.set("n", "<leader>d", ":Telescope diagnostics<cr>", opts)
  end
})
