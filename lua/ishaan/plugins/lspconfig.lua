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
local on_attach = function(client, bufnr)
  local telescope = require("telescope.builtin")
  -- require("lsp_signature").on_attach({
  --     bind = true,
  --     toggle_key = '<M-x>',
  --     floating_window = false,
  --     select_signature_key = '<M-j>',
  --     move_cursor_key = '<M-f>',
  --     handler_opts = { border = "shadow" }
  -- }, bufnr)
  print("LSP atached")

  if client.name == "tsserver" then
    client.server_capabilities.documentFormattingProvider = false
  end

  vim.api.nvim_create_autocmd("CursorHold", {
    buffer = bufnr,
    callback = function()
      vim.diagnostic.open_float(nil, {
        close_events = { "BufLeave", "CursorMoved", "InsertEnter", "FocusLost" },
        focusable = false,
        border = 'rounded',
        source = 'always',
        prefix = ' ',
        scope = 'cursor',
      })
    end
  })

  -- set keybinds
  local map = vim.keymap.set
  local opts = { noremap = true, silent = true, buffer = bufnr, desc = "LSP Keybinds" } -- keybind options
  opts.desc = "Restart LSP"; map('n', "<leader>lr", ":LspRestart<CR>", opts);
  -- opts.desc = "Format Document"; map('n', "<leader>gf", vim.lsp.buf.format, opts);
  opts.desc = "Go to Definition"; map('n', "gd", telescope.lsp_definitions, opts);                -- map('n', "gd", vim.lsp.buf.definition, opts)
  opts.desc = "Go to Declaration"; map('n', "gD", vim.lsp.buf.declaration, opts);
  opts.desc = "List Implementations"; map('n', "gi", telescope.lsp_implementations, opts);        -- map('n', "gi", vim.lsp.buf.implementation, opts)
  opts.desc = "List References"; map('n', "gr", telescope.lsp_references, opts);                  -- map('n', "gr", vim.lsp.buf.references, opts)
  opts.desc = "Telescope type Definitions"; map('n', "gt", telescope.lsp_type_definitions, opts); -- map('n', "gt", vim.lsp.buf.type_definition, opts)
  opts.desc = "LSP Hover"; map('n', "K", vim.lsp.buf.hover, opts);
  opts.desc = "LSP Workspace Symbol"; map('n', "<leader>ws", vim.lsp.buf.workspace_symbol, opts);
  -- opts.desc = "Open Diagnostic Float"; map('n', "<leader>vd", vim.diagnostic.open_float, opts); -- autocommand executed on cursor hold
  -- opts.desc = "Telescope Diagnostics"; map('n', "<leader>vD", telescope.diagnostics, opts) -- <leader>fd in Telescope
  opts.desc = "next Diagnostic"; map('n', "]d", vim.diagnostic.goto_next, opts);
  opts.desc = "prev Diagnostic"; map('n', "[d", vim.diagnostic.goto_prev, opts);
  opts.desc = "LSP Code Action"; map({ 'n', "v" }, "<leader>ca", vim.lsp.buf.code_action, opts);
  opts.desc = "LSP Rename in all files"; map('n', "<leader>rn", vim.lsp.buf.rename, opts);
  opts.desc = "Signature help"; map('n', "<leader>h", vim.lsp.buf.signature_help, opts);
  opts.desc = "Add Workspace Folder"; map('n', "<leader>wa", vim.lsp.buf.add_workspace_folder, opts);
  opts.desc = "Remove Workspace folder"; map('n', "<leader>wr", vim.lsp.buf.remove_workspace_folder, opts);
  opts.desc = "List workspace Folder"; map('n', "<leader>wl",
    function() print(vim.inspect(vim.lsp.buf.list_workspace_folders())) end, opts);
  -- opts.desc = "Go to type Definition"; map('n', "<leader>D", vim.lsp.buf.type_definition, opts)
  -- opts.desc = "Show line diagnostics"; map('n', "<leader>l", vim.lsp.diagnostic.show_line_diagnostics, opts)
  -- opts.desc = "Set Loclist"; map('n', "<leader>q", vim.lsp.diagnostic.set_loclist, opts)
  -- map('n', "gf", "<cmd>Lspsaga lsp_finder<CR>", opts) -- show definition, references
  -- map('n', "gd", "<cmd>Lspsaga peek_definition<CR>", opts) -- see definition and make edits in window
  -- map('n', "<leader>ca", "<cmd>Lspsaga code_action<CR>", opts) -- see available code actions
  -- map('n', "<leader>rn", "<cmd>Lspsaga rename<CR>", opts) -- smart rename
  -- map('n', "<leader>D", "<cmd>Lspsaga show_line_diagnostics<CR>", opts) -- show  diagnostics for line
  -- map('n', "<leader>d", "<cmd>Lspsaga show_cursor_diagnostics<CR>", opts) -- show diagnostics for cursor
  -- map('n', "[d", "<cmd>Lspsaga diagnostic_jump_prev<CR>", opts) -- jump to previous diagnostic in buffer
  -- map('n', "]d", "<cmd>Lspsaga diagnostic_jump_next<CR>", opts) -- jump to next diagnostic in buffer
  -- map('n', "K", "<cmd>Lspsaga hover_doc<CR>", opts) -- show documentation for what is under cursor
  -- map('n', "<leader>o", "<cmd>LSoutlineToggle<CR>", opts) -- see outline on right hand side
end

function plugin.config()
  local lspconfig = require("lspconfig") -- import lspconfig plugin
  local cmp_nvim_lsp = require("cmp_nvim_lsp") -- import cmp-nvim-lsp plugin
  local capabilities = cmp_nvim_lsp.default_capabilities() -- used to enable autocompletion (assign to every lsp server config)

  local signs = { Error = " ", Warn = " ", Hint = "󰠠 ", Info = " " } -- Change the Diagnostic symbols in the sign column (gutter)
  for type, icon in pairs(signs) do
    local hl = "DiagnosticSign" .. type
    vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
  end


  lspconfig["clangd"].setup({
    capabilities = capabilities,
    on_attach = on_attach,
    -- filetypes = { "c", "cpp" },
    cmd = {
      "clangd",
      "--offset-encoding=utf-16",
    },
  })

  lspconfig.pyright.setup({
    settings = { python = { analysis = { typeCheckingMode = "off" } } },
    capabilities = capabilities,
    on_attach = on_attach,
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
    on_attach = on_attach,
    -- filetypes = { "bash", "sh" },
  })

  lspconfig.tsserver.setup({
    capabilities = capabilities,
    on_attach = on_attach,
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
    on_attach = on_attach,
    -- filetypes = { 'haskell', 'lhaskell', 'cabal' },
  })

  lspconfig.rust_analyzer.setup({
    capabilities = capabilities,
    on_attach = on_attach,
    -- filetypes = { "rust" },
    -- root_dir = lspconfig.util.root_pattern("Cargo.toml", "rust-project.json"),
    settings = {
      ["rust-analyzer"] = {
        cargo = { allFeatures = true, },
        diagnostics = { enable = true, }
      },
    },
  })

  -- configure lua server (with special settings)
  lspconfig["lua_ls"].setup({
    capabilities = capabilities,
    on_attach = on_attach,
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
