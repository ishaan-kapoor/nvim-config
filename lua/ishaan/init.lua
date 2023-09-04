require("ishaan.set")
require("ishaan.remap")
require("ishaan.vimscript")
require("ishaan.lazy")

local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

autocmd('TextYankPost', {
    group = augroup('HighlightYank', {}),
    pattern = '*',
    callback = function()
        vim.highlight.on_yank({
            higroup = 'IncSearch',
            timeout = 60,
        })
    end,
})
