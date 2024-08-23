local plugin = {
  "RRethy/vim-illuminate",
  lazy = { large_file_cutoff = 1000 },
  -- event = { "VeryLazy", "BufRead" },
  event = "VeryLazy",
  keys = {
    { ']w', "<cmd>lua require('illuminate').goto_next_reference(false)<CR>",  desc = "Next word occurance" },
    { '[w', "<cmd>lua require('illuminate').goto_prev_reference(false)<CR>",  desc = "Prev word occurance" },
  },
}

-- function plugin.config()
--
-- end

return plugin
