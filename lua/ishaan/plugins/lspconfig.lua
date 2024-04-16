local plugin = {
  "neovim/nvim-lspconfig",
  -- event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    -- "hrsh7th/cmp-nvim-lsp",
    -- { "antosha417/nvim-lsp-file-operations", config = true },
    -- "nvim-telescope/telescope.nvim",
    -- "ray-x/lsp_signature.nvim",
  },
  priority = 100,
  -- ft = { "c", "cpp", "python", "lua", "rust" },
}

vim.lsp.set_log_level("off")

-- enable keybinds only for when lsp server available
function plugin.config()
  local lspconfig = require("lspconfig") -- import lspconfig plugin
  local cmp_nvim_lsp = require("cmp_nvim_lsp") -- import cmp-nvim-lsp plugin
  local capabilities = cmp_nvim_lsp.default_capabilities() -- used to enable autocompletion (assign to every lsp server config)
  -- local capabilities = vim.lsp.protocol.make_client_capabilities()
  -- capabilities = vim.tbl_extend("force", capabilities, cmp_nvim_lsp.default_capabilities())
  -- capabilities = vim.tbl_extend("keep", capabilities, cmp_nvim_lsp.update_capabilities(capabilities))

  local signs = { Error = " ", Warn = " ", Hint = "󰠠 ", Info = " " } -- Change the Diagnostic symbols in the sign column (gutter)
  for type, icon in pairs(signs) do
    local hl = "DiagnosticSign" .. type
    vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
  end

  lspconfig["clangd"].setup({
    capabilities = capabilities,
    on_attach = LSP_onAttach,
    -- filetypes = { "c", "cpp" },
    cmd = {
      "clangd",
      "--offset-encoding=utf-16",
    },
  })

  lspconfig.pyright.setup({
    settings = { python = { analysis = { typeCheckingMode = "off" } } },
    capabilities = capabilities,
    on_attach = LSP_onAttach,
    -- filetypes = { "python" },
    root_dir = function(fname)
      local util = require("lspconfig/util")
      local root_pattern = util.root_pattern(".git", "setup.py", "setup.cfg", "pyproject.toml", "requirements.txt")(fname)
      local dirname = util.path.dirname(fname)
      return root_pattern or dirname
    end,
  })

  lspconfig.bashls.setup({
    capabilities = capabilities,
    on_attach = LSP_onAttach,
    -- filetypes = { "bash", "sh" },
  })

  lspconfig.tsserver.setup({
    capabilities = capabilities,
    on_attach = LSP_onAttach,
    -- filetypes = { "typescript", "javascript", "typescriptreact", "javascriptreact" },
  })

  -- lspconfig.eslint.setup({
  --     capabilities = capabilities,
  --     on_attach = on_attach,
  --     -- filetypes = { "typescript", "javascript", "typescriptreact", "javascriptreact" },
  --     root_dir = function(fname) return require("lspconfig/util").root_pattern(".git", "setup.cfg")(fname) or require("lspconfig/util").path.dirname(fname) end,
  -- })

  lspconfig.hls.setup({
    capabilities = capabilities,
    on_attach = LSP_onAttach,
    -- filetypes = { 'haskell', 'lhaskell', 'cabal' },
  })

  lspconfig.rust_analyzer.setup({
    capabilities = capabilities,
    on_attach = LSP_onAttach,
    -- filetypes = { "rust" },
    -- root_dir = lspconfig.util.root_pattern("Cargo.toml", "rust-project.json"),
    settings = {
      ["rust-analyzer"] = {
        cargo = { allFeatures = true, },
        diagnostics = { enable = true, }
      },
    },
  })

  lspconfig.emmet_language_server.setup({})

  lspconfig["lua_ls"].setup({
    capabilities = capabilities,
    on_attach = LSP_onAttach,
    -- filetypes = { "lua" },
    settings = { -- custom settings for lua
      Lua = {
        -- make the language server recognize "vim" global
        diagnostics = { globals = { "vim" }, },
        workspace = {
          -- make language server aware of runtime files
          library = {
            [vim.fn.expand("$VIMRUNTIME/lua")] = true,
            [vim.fn.stdpath("config") .. "/lua"] = true,
          },
        },
      },
    },
  })
end

return plugin
