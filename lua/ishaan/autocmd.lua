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

-- autocmd("FileType", {
--   pattern = {
--     "vim",
--     "html",
--     "css",
--     "json",
--     "javascript",
--     "javascriptreact",
--     "markdown.mdx",
--     "typescript",
--     "typescriptreact",
--     "lua",
--     "sh",
--     "zsh",
--     "bash",
--   },
--   callback = function()
--     vim.opt.shiftwidth = 2
--     vim.opt.softtabstop = 2
--     vim.opt.tabstop = 2
--   end,
-- })


autocmd("TermOpen", {
  pattern = "term://*",
  callback = function()
    vim.opt_local.number = false
    vim.opt_local.relativenumber = false
    vim.opt_local.cursorline = false
    vim.opt_local.signcolumn = "no"
  end,
})

autocmd("BufWinEnter", {
  pattern = "*",
  callback = function()
    vim.opt.formatoptions = vim.opt.formatoptions + {
      c = false,
      o = false,
      r = true,
    }
  end,
})
