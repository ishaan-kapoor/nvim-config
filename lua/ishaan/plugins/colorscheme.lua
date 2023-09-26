local gruvbox = {
    "ellisonleao/gruvbox.nvim",
    lazy = false,
    priority = 1000,
    config = function()
        require("gruvbox").setup()
        ApplyColorScheme("gruvbox")
    end,
}

local themes = {
    gruvbox,
}

return themes
