local plugin = {
  "nvim-tree/nvim-tree.lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  keys = {
    { "<leader>ee", ":NvimTreeFindFileToggle<CR>", desc = "Toggle file explorer" },
    { "<leader>ex", ":NvimTreeFocus<CR>",          desc = "Focus file explorer" },
    { "<leader>ec", "<cmd>NvimTreeCollapse<CR>",   desc = "Collapse file explorer" },
  },
  event = { "VeryLazy" },
}

local function on_attach(bufnr)
  local api = require("nvim-tree.api")

  api.config.mappings.default_on_attach(bufnr) -- default mappings

  local function opts(desc)
    return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
  end

  -- custom mappings
  vim.keymap.set('n', '?', api.tree.toggle_help, opts('Help'))
end


function plugin.config()
  local nvim_tree = require("nvim-tree")
  -- diable netrw
  vim.g.loaded_netrw = 1
  vim.g.loaded_netrwPlugin = 1

  nvim_tree.setup({
    view = {
      width = 25,
      side = "right",
    },
    -- disable window_picker for explorer to work well with window splits
    actions = {
      open_file = {
        window_picker = { enable = false },
      },
    },
    on_attach = on_attach,
  })
end

return plugin
