local plugin = {
    'nvim-treesitter/nvim-treesitter-context',
    dependencies = {
        'nvim-treesitter/nvim-treesitter',
    },
    keys = {
        { "<F9>", "<cmd>TSContextToggle<CR>", mode = { 'i', 'n' }, desc = "Toggle Treesitter context" },
        { "[s", "<cmd>TSContextToggle<CR>", mode = { 'i', 'n' }, desc = "Toggle Treesitter context" },
        { "[c",function() require("treesitter-context").go_to_context() end, silent = true, desc = "Debug Telescope" },
    }
}

function plugin.config()
    -- vim.cmd([[hi TreesitterContext gui=underline guisp=Grey]])
    -- vim.cmd([[hi TreesitterContextLineNumber gui=underline guisp=Grey]])
    -- vim.cmd([[hi TreesitterContextSeparator gui=underline guisp=Grey]])
    vim.cmd([[hi TreesitterContextBottom gui=underline guisp=Grey]])
 
    require'treesitter-context'.setup{
        enable = false, -- Enable this plugin (Can be enabled/disabled later via commands)
        max_lines = 5, -- How many lines the window should span. Values <= 0 mean no limit.
        min_window_height = 10, -- Minimum editor window height to enable context. Values <= 0 mean no limit.
        line_numbers = true,
        multiline_threshold = 5, -- Maximum number of lines to show for a single context
        trim_scope = 'outer', -- Which context lines to discard if `max_lines` is exceeded. Choices: 'inner', 'outer'
        mode = 'cursor',  -- Line used to calculate context. Choices: 'cursor', 'topline'
        -- Separator between context and content. Should be a single character string, like '-'.
        -- When separator is set, the context will only show up when there are at least 2 lines above cursorline.
        separator = "-"  --[[ nil ]],
        zindex = 20, -- The Z-index of the context window
        on_attach = nil, -- (fun(buf: integer): boolean) return false to disable attaching
    }
end

return plugin
