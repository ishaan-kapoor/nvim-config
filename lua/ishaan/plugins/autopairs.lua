local plugin = {
  "windwp/nvim-autopairs",
  event = "VeryLazy",
  config = true
}

-- function plugin.config()
--   npairs = require("nvim-autopairs")
--   npairs.setup({
--     fast_wrap = {
--       map = '<M-e>',
--       chars = { '{', '[', '(', '"', "'" },
--       pattern = [=[[%'%"%>%]%)%}%,]]=],
--       end_key = '$',
--       before_key = 'h',
--       after_key = 'l',
--       cursor_pos_before = true,
--       keys = 'qwertyuiopzxcvbnmasdfghjkl',
--       manual_position = true,
--       highlight = 'Search',
--       highlight_grey='Comment'
--     },
--   })
-- end

return plugin
