local plugin = {
  'kylechui/nvim-surround',
  -- event = { 'BufReadPre', 'BufNewFile' },
  -- event = { 'VeryLazy', 'BufReadPre', 'BufNewFile' },
  version = "*",   -- Use for stability; omit to use `main` branch for the latest features
  event = "VeryLazy",
  config = true
}

return plugin
