local gruvbox = {
    "ellisonleao/gruvbox.nvim",
    lazy = true,
    priority = 1000,
    config = function()
        require("gruvbox").setup()
        ApplyColorScheme("gruvbox")
    end,
}

local themes = {
    gruvbox,
}

-- ApplyColorScheme("firefly-pro-bright")
ApplyColorScheme("volatile")

return themes
