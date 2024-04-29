local plugin = {
  "rcarriga/nvim-dap-ui",
  dependencies = {
    "mfussenegger/nvim-dap",
    "theHamsta/nvim-dap-virtual-text",
    "nvim-telescope/telescope.nvim",
    "nvim-telescope/telescope-dap.nvim",
    "nvim-neotest/nvim-nio"
  },
  keys = {
    { "<leader>db", "<cmd>DapToggleBreakpoint<CR>",    desc = "Toggle Line Breakpoint" },
    { "<leader>dr", "<cmd>DapContinue<CR>",            desc = "Continue Debugger" },
    { "<leader>df", "<cmd>Telescope dap commands<cr>", desc = "Debug Telescope" },
  }
}

function plugin.config()
  local dap = require("dap")
  dap.adapters.codelldb = {
    type = "server",
    port = "${port}",
    executable = {
      -- CHANGE THIS to your path!
      command = "/home/ishaan/.local/share/nvim/mason/bin/codelldb",
      args = { "--port", "${port}" },

      -- On windows you may have to uncomment this:
      -- detached = false,
    }
  }
  dap.configurations.cpp = { {
    name = "Launch file",
    type = "codelldb",
    request = "launch",
    program = function()
      return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. '/', "file")
    end,
    cwd = "${workspaceFolder}",
    stopOnEntry = false,
  }, }
  dap.configurations.c = dap.configurations.cpp
  dap.configurations.rust = dap.configurations.cpp

  require("telescope").load_extension("dap")

  local dapui = require("dapui")
  dapui.setup()
  dap.listeners.after.event_initialized["dapui_config"] = function() dapui.open() end
  dap.listeners.before.event_terminated["dapui_config"] = function() dapui.close() end
  dap.listeners.before.event_exited["dapui_config"] = function() dapui.close() end

  require("nvim-dap-virtual-text").setup()
end

return plugin
