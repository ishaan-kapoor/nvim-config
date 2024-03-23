local plugin = {
  "kevinhwang91/nvim-ufo",
  dependencies = { 'kevinhwang91/promise-async', "neovim/nvim-lspconfig" },
  -- event = { "VeryLazy", "BufRead" },
  event = "VeryLazy",
  keys = {
    { 'zR', "<cmd>lua require('ufo').openAllFolds()<CR>",  desc = "Open all Folds" },
    { 'zM', "<cmd>lua require('ufo').closeAllFolds()<CR>", desc = "Close all Folds" },
  },
}

function plugin.config()
  -- vim.o.foldcolumn = '1'
  vim.o.foldlevel = 99
  vim.o.foldlevelstart = 99
  vim.o.foldenable = true

  local capabilities = vim.lsp.protocol.make_client_capabilities()
  capabilities.textDocument.foldingRange = {
    dynamicRegistration = false,
    lineFoldingOnly = true
  }

  local ufo = require('ufo')
  -- vim.keymap.set('n', 'zR', ufo.openAllFolds)
  -- vim.keymap.set('n', 'zM', ufo.closeAllFolds)
  ufo.setup()
  -- vim.lsp.handlers["textDocument/foldingRange"] = ufo.lspFoldingRangeHandler
  -- vim.lsp.handlers["textDocument/publishDiagnostics"] = ufo.lspPublishDiagnosticsHandler
  -- vim.lsp.handlers["textDocument/didChange"] = ufo.lspDidChangeHandler
  -- vim.lsp.handlers["textDocument/didOpen"] = ufo.lspDidOpenHandler
  -- vim.lsp.handlers["textDocument/didClose"] = ufo.lspDidCloseHandler
  -- vim.lsp.handlers["textDocument/didSave"] = ufo.lspDidSaveHandler
  -- vim.lsp.handlers["textDocument/willSave"] = ufo.lspWillSaveHandler
  -- vim.lsp.handlers["textDocument/willSaveWaitUntil"] = ufo.lspWillSaveWaitUntilHandler
  -- vim.lsp.handlers["textDocument/formatting"] = ufo.lspFormattingHandler
  -- vim.lsp.handlers["textDocument/rangeFormatting"] = ufo.lspRangeFormattingHandler
  -- vim.lsp.handlers["textDocument/onTypeFormatting"] = ufo.lspOnTypeFormattingHandler
  -- vim.lsp.handlers["textDocument/rename"] = ufo.lspRenameHandler
  -- vim.lsp.handlers["textDocument/prepareRename"] = ufo.lspPrepareRenameHandler
  -- vim.lsp.handlers["textDocument/foldingRange"] = ufo.lspFoldingRangeHandler
end

return plugin
