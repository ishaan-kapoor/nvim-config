local plugin = {
  'mfussenegger/nvim-dap-python',
  dependencies = {
    'mfussenegger/nvim-dap',
    -- 'theHamsta/nvim-dap-virtual-text',
    'rcarriga/nvim-dap-ui',
    -- 'nvim-telescope/telescope-dap.nvim',
  },
  -- ft = { 'python' },
  -- event = "VeryLazy",
  -- keys = {
  --     {"<leader>dpr", function() require("dap-python").test_method() end, },
  -- }
  lazy = true,
}

function plugin.config()
  local path = "/home/ishaan/.local/share/nvim/mason/packages/debugpy/venv/bin/python"
  vim.keymap.set('n', '<leader>dbpt', '<cmd>lua require("dap-python").test_method()<CR>',
    { noremap = true, silent = true, desc = "Debug Python Test Method" })
  require('dap-python').setup(path)
end

return plugin
