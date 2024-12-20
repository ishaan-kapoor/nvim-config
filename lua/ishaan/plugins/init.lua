local plugins = {
  { "kshenoy/vim-signature", event = "VeryLazy" },
  { "shellRaining/hlchunk.nvim", event = "VeryLazy", opts = {blank = {enable = false}}, config = true },
  { "wakatime/vim-wakatime", event = "VeryLazy" },
  { "stevearc/dressing.nvim", event = "VeryLazy" },
  { "mfussenegger/nvim-jdtls", config = false, lazy = true },
}

return plugins
