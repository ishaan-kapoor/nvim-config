local plugin = {
    'rcarriga/nvim-dap-ui',
    dependencies = {
        'mfussenegger/nvim-dap',
        -- 'theHamsta/nvim-dap-virtual-text',
        'nvim-telescope/telescope.nvim',
        'nvim-telescope/telescope-dap.nvim',
    },
    keys = {
        { "<leader>db", "<cmd>DapToggleBreakpoint<CR>", desc = "Toggle Line Breakpoint" },
        { "<leader>dr", "<cmd>DapContinue<CR>", desc = "Continue Debugger" },
        { "<leader>df", "<cmd>Telescope dap commands<cr>", desc = "Debug Telescope" },
    }
}

function plugin.config()
    local dap = require('dap')
    local dapui = require('dapui')
    dapui.setup()
    dap.listeners.after.event_initialized["dapui_config"] = function()
        dapui.open()
    end
    dap.listeners.before.event_terminated["dapui_config"] = function()
        dapui.close()
    end
    dap.listeners.before.event_exited["dapui_config"] = function()
        dapui.close()
    end
    require('telescope').load_extension('dap')
end

return plugin
