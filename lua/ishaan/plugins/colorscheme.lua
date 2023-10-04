local gruvbox = {
    "ellisonleao/gruvbox.nvim",
    lazy = false,
    priority = 1000,
    -- config = function()
    --     require("gruvbox").setup()
    --     ApplyColorScheme("gruvbox", {transparent = true})
    -- end,
}

local tokyonight = {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    config = function()
        require("tokyonight").setup()
        ApplyColorScheme("tokyonight-night", {transparent = true})
    end,
    opts = {}
}

local themes = {
    gruvbox,
    tokyonight
}

return themes
