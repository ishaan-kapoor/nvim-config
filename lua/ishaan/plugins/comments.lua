local plugin = {
  "numToStr/Comment.nvim",
  event = { "BufReadPre", "BufNewFile" },
  -- dependencies = { "JoosepAlviste/nvim-ts-context-commentstring" },
  config = true
}
-- function plugin.config()
--   local comment = require("Comment")
--   local context_comment = require("ts_context_commentstring.integrations.comment_nvim")
--   comment.setup({ pre_hook = context_comment.create_pre_hook() })
-- end

return plugin
