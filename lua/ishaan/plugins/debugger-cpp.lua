local plugin = {
    "jay-babu/mason-nvim-dap.nvim",
    ft = { "cpp", "c", "rust" },
    dependencies = {
        "williamboman/mason.nvim",
        "mfussenegger/nvim-dap",
    },
    opts = {
        handlers = {},
    },
    -- event = "VeryLazy"
}

return plugin

