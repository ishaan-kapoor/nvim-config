local plugin = {
  "nvimtools/none-ls.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
}

function plugin.config()
  local null_ls = require("null-ls")
  local formatting = null_ls.builtins.formatting
  local diagnostics = null_ls.builtins.diagnostics
  local completion = null_ls.builtins.completion
  null_ls.setup({
    sources = {
      -- formatting.prettier.with({ extra_args = { "--no-semi", "--single-quote", "--jsx-single-quote" } }),
      -- diagnostics.eslint_d,
      -- completion.luasnip,
      formatting.prettier,
      formatting.black,
    },
  })
  vim.keymap.set('n', "<leader>gf", vim.lsp.buf.format, { noremap = true, silent = true, desc = "Format Document" });
  vim.keymap.set('v', "<leader>gf", vim.lsp.buf.format, { noremap = true, silent = true, desc = "Format Selection" });
end

return plugin
