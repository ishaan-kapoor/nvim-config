local plugin = {
  "chrisgrieser/nvim-chainsaw",
  event = "VeryLazy",
  keys = {
    { "<leader>lv", "<cmd>ChainSaw variableLog<CR>", desc = "[L]og [V]ariable" },
    { "<leader>lo", "<cmd>ChainSaw objectLog<CR>", desc = "[L]og [O]bject" },
    { "<leader>la", "<cmd>ChainSaw assertLog<CR>", desc = "[L]og [A]ssert" },
    { "<leader>lm", "<cmd>ChainSaw messageLog<CR>", desc = "[L]og [M]essage" },
    { "<leader>ls", "<cmd>ChainSaw stackTraceLog<CR>", desc = "[L]og [S]tackTrace" },
    { "<leader>lb", "<cmd>ChainSaw beepLog<CR>", desc = "[L]og [B]eep" },
    { "<leader>lt", "<cmd>ChainSaw timeLog<CR>", desc = "[L]og [T]ime" },
    { "<leader>ld", "<cmd>ChainSaw debugLog<CR>", desc = "[L]og [D]ebug" },
    { "<leader>lr", "<cmd>ChainSaw removeLogs<CR>", desc = "[L]og [R]emove" },
  },
  config = function() require("chainsaw").setup({marker = "󱂅"}) end
}
return plugin
