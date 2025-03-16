local plugin = {
  "chrisgrieser/nvim-chainsaw",
  event = "VeryLazy",
  -- keys = {
  --   { "<leader>lv", "<cmd>ChainSaw variableLog<CR>",   desc = "[L]og [V]ariable" },
  --   { "<leader>lo", "<cmd>ChainSaw objectLog<CR>",     desc = "[L]og [O]bject" },
  --   { "<leader>la", "<cmd>ChainSaw assertLog<CR>",     desc = "[L]og [A]ssert" },
  --   { "<leader>lm", "<cmd>ChainSaw messageLog<CR>",    desc = "[L]og [M]essage" },
  --   { "<leader>ls", "<cmd>ChainSaw stackTraceLog<CR>", desc = "[L]og [S]tackTrace" },
  --   { "<leader>lb", "<cmd>ChainSaw beepLog<CR>",       desc = "[L]og [B]eep" },
  --   { "<leader>lt", "<cmd>ChainSaw timeLog<CR>",       desc = "[L]og [T]ime" },
  --   { "<leader>ld", "<cmd>ChainSaw debugLog<CR>",      desc = "[L]og [D]ebug" },
  --   { "<leader>lr", "<cmd>ChainSaw removeLogs<CR>",    desc = "[L]og [R]emove" },
  -- },
  -- config = function() require("chainsaw").setup({marker = "󱂅"}) end
}

local function map(key, cmd, desc)
  key = "<leader>" .. key
  local opts = { noremap = true, silent = true, desc = desc }
  vim.keymap.set("n", key, cmd, opts)
end

function plugin.config()
  local chainsaw = require("chainsaw")
  map("lv", chainsaw.variableLog, "[L]og [V]ariable")
  map("lo", chainsaw.objectLog, "[L]og [O]bject")
  map("la", chainsaw.assertLog, "[L]og [A]ssert")
  map("lm", chainsaw.messageLog, "[L]og [M]essage")
  map("ls", chainsaw.stackTraceLog, "[L]og [S]tackTrace")
  map("lb", chainsaw.beepLog, "[L]og [B]eep")
  map("lt", chainsaw.timeLog, "[L]og [T]ime")
  map("ld", chainsaw.debugLog, "[L]og [D]ebug")
  map("lr", chainsaw.removeLogs, "[L]og [R]emove")
  chainsaw.setup({ marker = "󱂅" })
end

return plugin
