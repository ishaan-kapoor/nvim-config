local plugin = {
    "kevinhwang91/nvim-ufo",
    dependencies = { 'kevinhwang91/promise-async', "neovim/nvim-lspconfig" },
    -- event = { "VeryLazy", "BufRead" },
    event = "VeryLazy",
}

function plugin.config()
    vim.o.foldcolumn = '1'
    vim.o.foldlevel = 99
    vim.o.foldlevelstart = 99
    vim.o.foldenable = true

    vim.keymap.set('n', 'zR', require('ufo').openAllFolds)
    vim.keymap.set('n', 'zM', require('ufo').closeAllFolds)
    local capabilities = vim.lsp.protocol.make_client_capabilities()
    capabilities.textDocument.foldingRange = {
        dynamicRegistration = false,
        lineFoldingOnly = true
    }
    require('ufo').setup()
end

return plugin
