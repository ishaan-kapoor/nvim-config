local plugin = {
  "shellRaining/hlchunk.nvim",
  event = "VeryLazy",
  config = true,
  opts = {
    chunk = { enable = true },
    indent = { enable = true },
    line_num = { enable = true },
    blank = { enable = false },
  }
}
return plugin
