local plugin = {
    "github/copilot.vim",
    event = { 'VeryLazy', 'InsertEnter' },
}

function plugin.config()
    vim.g.copilot_no_tab_map = true
    vim.api.nvim_set_keymap("i", "<C-y>", 'copilot#Accept("<CR>")', { silent = true, expr = true })
    vim.g.copilot_assume_mapped = true
    vim.g.copilot_filetypes = {
        rust = false,
    }
end

return plugin
