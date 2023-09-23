local plugin = {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
    -- refer to the configuration section below
  }
}

function plugin.init()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
end

return plugin
