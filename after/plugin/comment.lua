local setup, plugin = pcall(require, "Comment")
if not setup then
  return
end

plugin.setup()
local api = require('Comment.api')
vim.keymap.set({'n', 'i'}, '<C-_>', api.toggle.linewise.current)
