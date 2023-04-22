require('Comment').setup()
local api = require('Comment.api')
-- comment.setup()
vim.keymap.set({'n', 'i'}, '<C-_>', api.toggle.linewise.current)
