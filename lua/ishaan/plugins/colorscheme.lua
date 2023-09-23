local gruvbox = {
    "ellisonleao/gruvbox.nvim",
    lazy = false,
    priority = 1000,
}
function gruvbox.config()
    require("gruvbox").setup()
    ApplyColorScheme("gruvbox")
end

return gruvbox
