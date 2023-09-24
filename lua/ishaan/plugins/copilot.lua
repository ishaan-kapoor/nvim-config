local plugin = {
    "github/copilot.vim",
    event = { "VeryLazy", "InsertEnter" },
}

function plugin.config()
    vim.g.copilot_no_tab_map = true
    vim.api.nvim_set_keymap("i", "<C-y>", 'copilot#Accept("<CR>")', { silent = true, expr = true })
    vim.g.copilot_assume_mapped = true
    vim.g.copilot_filetypes = {
        rust = false,
    }
end

local copilot_lua = {
    "zbirenbaum/copilot-lua",
    event = { "VeryLazy", "InsertEnter" },
    cmd = "CopilotLua",
    config = true
}
copilot_lua.opts = {
    suggestion = {
        enabled = true,
        auto_trigger = true,
        keymap = {
            accept = "<C-y>",
            accept_word = "<C-y>w",
            accept_line = "<C-y>l",
            dismiss = "<Esc>",
        }
    },
}

return plugin
