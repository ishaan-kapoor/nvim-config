local plugin = {
  "aznhe21/actions-preview.nvim",
  -- event = "VeryLazy",
  lazy = true,
  keys = {
    { "<leader>bca", "<CMD>lua require('actions-preview').code_actions()<CR>", { noremap = true, silent = true, desc = "Code Actions in the entire buffer" } },
  }
}

function plugin.config()
  require("actions-preview").setup {
    telescope = {
      sorting_strategy = "ascending",
      layout_strategy = "vertical",
      layout_config = {
        width = 0.8,
        height = 0.9,
        prompt_position = "top",
        preview_cutoff = 20,
        preview_height = function(_, _, max_lines)
          return max_lines - 15
        end,
      },
    },
  }
end

return plugin
