local plugin = {
  "williamboman/mason.nvim",
  dependencies = {
    -- "williamboman/mason-lspconfig.nvim",
    -- "jayp0521/mason-null-ls.nvim",
  },
  event = "VeryLazy",
  priority = 99,
  -- ft = { "c", "cpp", "python", "lua", "rust" },
}

function plugin.config()
  local mason = require("mason")   -- import mason
  -- local mason_lspconfig = require("mason-lspconfig")  -- import mason-lspconfig
  -- local mason_null_ls = require("mason-null-ls") -- import mason-null-ls

  -- enable mason
  mason.setup({
    -- list of servers for mason to install
    ensure_installed = {
      "lua_ls",
      "clangd",
      "pyright",
      "rust-analyzer",
      "codellb",
      "debugpy",
    },
    ui = {     -- configure icons
      icons = {
        package_installed = "✓",
        package_pending = "➜",
        package_uninstalled = "✗"
      }
    }
  })

  -- mason_lspconfig.setup({
  --   -- auto-install configured servers (with lspconfig)
  --   automatic_installation = true, -- not the same as ensure_installed
  -- })

  -- mason_null_ls.setup({
  --   -- list of formatters & linters for mason to install
  --   ensure_installed = {
  --     "prettier", -- ts/js formatter
  --     "stylua", -- lua formatter
  --     "eslint_d", -- ts/js linter
  --   },
  --   -- auto-install configured servers (with lspconfig)
  --   automatic_installation = true,
  -- })
end

return plugin
