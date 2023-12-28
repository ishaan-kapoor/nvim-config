vim.api.nvim_create_autocmd("InsertLeave", {
    pattern = "*.md",
    group = vim.api.nvim_create_augroup("Obsidian", {}),
    callback = function()
        print("Saving")
        vim.cmd("w")
    end,
})
vim.opt_local.wrap = true
vim.opt_local.linebreak = true
vim.opt_local.conceallevel = 2
