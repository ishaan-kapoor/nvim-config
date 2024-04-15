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

-- return plugin

local copilot_lua = {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  event = { "VeryLazy", "InsertEnter" },
  config = true
}
copilot_lua.opts = {
  panel = { enabled = false },
  suggestion = { enabled = false },
  -- suggestion = {
  --     enabled = true,
  --     auto_trigger = true,
  --     keymap = {
  --         accept = "<C-y>",
  --         accept_word = "<C-y>w",
  --         accept_line = "<C-y>l",
  --         dismiss = "<Esc>",
  --     }
  -- },
}

local copilot_cmp = {
  "zbirenbaum/copilot-cmp",
  dependencies = {
    "zbirenbaum/copilot.lua",
    "hrsh7th/nvim-cmp",
  },
  config = true,
}

return {}
-- return { copilot_lua, copilot_cmp }
