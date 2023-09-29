require("ishaan.tools")
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

autocmd('FileType', {
    pattern = { "help", "man" },
    group = augroup("Close Help", {}),
    desc = "Use q to close help windows",
    callback = function()
        vim.cmd('setlocal nonumber norelativenumber nowrap')
        vim.keymap.set('n', 'q', '<cmd>q<CR>', { buffer = true })
    end,
})

