
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

    vim.api.nvim_create_autocmd("CursorHold", {
        buffer = bufnr,
        callback = function()
            vim.diagnostic.open_float(nil, {
                close_events = { "BufLeave", "CursorMoved", "InsertEnter", "FocusLost" },
                focusable = false, border = 'rounded', source = 'always', prefix = ' ', scope = 'cursor',
            })
        end
    })

    -- set keybinds
    local opts = { noremap = true, silent = true, buffer = bufnr, desc = "LSP Keybinds"} -- keybind options
    opts.desc = "Restart LSP"; vim.keymap.set('n', "<leader>lr", ":LspRestart<CR>", opts);
    opts.desc = "Go to Definition"; vim.keymap.set('n', "gd", telescope.lsp_definitions, opts); -- vim.keymap.set('n', "gd", vim.lsp.buf.definition, opts)
    opts.desc = "Go to Declaration"; vim.keymap.set('n', "gD", vim.lsp.buf.declaration, opts);
    opts.desc = "List Implementations"; vim.keymap.set('n', "gi", telescope.lsp_implementations, opts); -- vim.keymap.set('n', "gi", vim.lsp.buf.implementation, opts)
    opts.desc = "List References"; vim.keymap.set('n', "gr", telescope.lsp_references, opts); -- vim.keymap.set('n', "gr", vim.lsp.buf.references, opts)
    opts.desc = "Telescope type Definitions"; vim.keymap.set('n', "gt", telescope.lsp_type_definitions, opts); -- vim.keymap.set('n', "gt", vim.lsp.buf.type_definition, opts)
    opts.desc = "LSP Hover"; vim.keymap.set('n', "K", vim.lsp.buf.hover, opts);
    opts.desc = "LSP Workspace Symbol"; vim.keymap.set('n', "<leader>ws", vim.lsp.buf.workspace_symbol, opts);
    -- opts.desc = "Open Diagnostic Float"; vim.keymap.set('n', "<leader>vd", vim.diagnostic.open_float, opts); -- autocommand executed on cursor hold
    -- opts.desc = "Telescope Diagnostics"; vim.keymap.set('n', "<leader>vD", telescope.diagnostics, opts) -- <leader>fd in Telescope
    opts.desc = "next Diagnostic"; vim.keymap.set('n', "]d", vim.diagnostic.goto_next, opts);
    opts.desc = "prev Diagnostic"; vim.keymap.set('n', "[d", vim.diagnostic.goto_prev, opts);
    opts.desc = "LSP Code Action"; vim.keymap.set({'n',"v"}, "<leader>ca", vim.lsp.buf.code_action, opts);
    opts.desc = "LSP Rename in all files"; vim.keymap.set('n', "<leader>rn", vim.lsp.buf.rename, opts);
    opts.desc = "Signature help"; vim.keymap.set('n', "<leader>h", vim.lsp.buf.signature_help, opts);
    opts.desc = "Add Workspace Folder"; vim.keymap.set('n', "<leader>wa", vim.lsp.buf.add_workspace_folder, opts);
    opts.desc = "Remove Workspace folder"; vim.keymap.set('n', "<leader>wr", vim.lsp.buf.remove_workspace_folder, opts);
    opts.desc = "List workspace Folder"; vim.keymap.set('n', "<leader>wl", function() print(vim.inspect(vim.lsp.buf.list_workspace_folders())) end, opts);
    -- opts.desc = "Go to type Definition"; vim.keymap.set('n', "<leader>D", vim.lsp.buf.type_definition, opts)
    -- opts.desc = "Show line diagnostics"; vim.keymap.set('n', "<leader>l", vim.lsp.diagnostic.show_line_diagnostics, opts)
    -- opts.desc = "Set Loclist"; vim.keymap.set('n', "<leader>q", vim.lsp.diagnostic.set_loclist, opts)
    -- vim.keymap.set('n', "gf", "<cmd>Lspsaga lsp_finder<CR>", opts) -- show definition, references
    -- vim.keymap.set('n', "gd", "<cmd>Lspsaga peek_definition<CR>", opts) -- see definition and make edits in window
    -- vim.keymap.set('n', "<leader>ca", "<cmd>Lspsaga code_action<CR>", opts) -- see available code actions
    -- vim.keymap.set('n', "<leader>rn", "<cmd>Lspsaga rename<CR>", opts) -- smart rename
    -- vim.keymap.set('n', "<leader>D", "<cmd>Lspsaga show_line_diagnostics<CR>", opts) -- show  diagnostics for line
    -- vim.keymap.set('n', "<leader>d", "<cmd>Lspsaga show_cursor_diagnostics<CR>", opts) -- show diagnostics for cursor
    -- vim.keymap.set('n', "[d", "<cmd>Lspsaga diagnostic_jump_prev<CR>", opts) -- jump to previous diagnostic in buffer
    -- vim.keymap.set('n', "]d", "<cmd>Lspsaga diagnostic_jump_next<CR>", opts) -- jump to next diagnostic in buffer
    -- vim.keymap.set('n', "K", "<cmd>Lspsaga hover_doc<CR>", opts) -- show documentation for what is under cursor
    -- vim.keymap.set('n', "<leader>o", "<cmd>LSoutlineToggle<CR>", opts) -- see outline on right hand side
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
        filetypes = { "c", "cpp" },
        cmd = {
            "clangd",
            "--offset-encoding=utf-16",
        },
    })

    lspconfig.pyright.setup({
        settings = { python = { analysis = { typeCheckingMode = "off" } } },
        capabilities = capabilities,
        on_attach = on_attach,
        filetypes = { "python" },
        root_dir = function(fname)
            return require("lspconfig/util").root_pattern(".git", "setup.py",  "setup.cfg", "pyproject.toml", "requirements.txt")(fname) or require("lspconfig/util").path.dirname(fname)
        end,
    })

    lspconfig.bashls.setup({
        capabilities = capabilities,
        on_attach = on_attach,
        filetypes = { "bash" , "sh" },
    })

    lspconfig.hls.setup({
        capabilities = capabilities,
        on_attach = on_attach,
        filetypes = { 'haskell', 'lhaskell', 'cabal' },
    })

    lspconfig.rust_analyzer.setup({
        capabilities = capabilities,
        on_attach = on_attach,
        filetypes = { "rust" },
        -- root_dir = lspconfig.util.root_pattern("Cargo.toml", "rust-project.json"),
        settings = {
            ["rust-analyzer"] = {
                cargo = {
                    allFeatures = true,
                },
                diagnostics = {
                    enable = true;
                }
            },
        },
    })

    -- configure lua server (with special settings)
    lspconfig["lua_ls"].setup({
        capabilities = capabilities,
        on_attach = on_attach,
        filetypes = { "lua" },
        settings = { -- custom settings for lua
            Lua = {
                -- make the language server recognize "vim" global
                diagnostics = {
                    globals = { "vim" },
                },
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
