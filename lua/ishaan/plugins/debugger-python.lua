local plugin = {
    'mfussenegger/nvim-dap-python',
    dependencies = {
        'mfussenegger/nvim-dap',
        -- 'theHamsta/nvim-dap-virtual-text',
        'rcarriga/nvim-dap-ui',
        -- 'nvim-telescope/telescope-dap.nvim',
    },
    ft = { 'python' },
    -- keys = {
    --     {"<leader>dpr", function() require("dap-python").test_method() end, },
    -- }
}

function plugin.config()
    local path = "/home/ishaan/.local/share/nvim/mason/packages/debugpy/venv/bin/python"
    vim.keymap.set('n', '<leader>dpr', '<cmd>lua require("dap-python").test_method()<CR>', {noremap = true, silent = true, desc = "Debug Python Run"})
    require('dap-python').setup(path)
end

return plugin
