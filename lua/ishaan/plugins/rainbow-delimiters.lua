local plugin = {
    "HiPhish/rainbow-delimiters.nvim",
}

function plugin.config()
    local rainbow_delimiters = require 'rainbow-delimiters'

    vim.g.rainbow_delimiters = {
        strategy = {
            [''] = rainbow_delimiters.strategy['global'],
            vim = rainbow_delimiters.strategy['local'],
        },
        query = {
            [''] = 'rainbow-delimiters',
            lua = 'rainbow-blocks',
        },
        highlight = {
            'RainbowDelimiterRed',
            'RainbowDelimiterYellow',
            'RainbowDelimiterBlue',
            'RainbowDelimiterOrange',
            'RainbowDelimiterGreen',
            'RainbowDelimiterViolet',
            'RainbowDelimiterCyan',
        },
    }
    vim.g.rainbow_active = 1
    vim.g.rainbow_conf = {
        guifgs = {
            "#ff0000",
            "#ffa500",
            "#ffff00",
            "#008000",
            "#0000ff",
            "#4b0082",
            "#ee82ee",
        },
    }
end

return plugin
