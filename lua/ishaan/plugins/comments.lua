local plugin = {
    'numToStr/Comment.nvim',
    event = { 'BufReadPre', 'BufNewFile' },
    -- event = { 'VeryLazy', 'BufReadPre', 'BufNewFile' },
    config = true
}

return plugin
