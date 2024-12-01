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

-- go to last loc when opening a buffer
-- this mean that when you open a file, you will be at the last position
autocmd("BufReadPost", {
  group = augroup('OpenBufferInLastLocation', {}),
  callback = function()
    local mark = vim.api.nvim_buf_get_mark(0, '"')
    local lcount = vim.api.nvim_buf_line_count(0)
    if mark[1] > 0 and mark[1] <= lcount then
      pcall(vim.api.nvim_win_set_cursor, 0, mark)
    end
  end,
})

local help_group = augroup("helpGroup", {})

autocmd('FileType', {
  pattern = { "checkhealth", "help", "man", "lspinfo", "notify" },
  group = help_group,
  desc = "Use q to close help buffer",
  callback = function()
    vim.cmd('setlocal nonumber norelativenumber nowrap')
    vim.keymap.set('n', 'q', '<cmd>bd<CR>', { buffer = true })
  end,
})

autocmd("BufEnter", {
  pattern = "*",
  group = help_group,
  callback = function()
    if vim.bo.filetype == "help" then
      vim.cmd("wincmd L")
    end
  end,
})

-- resize neovim split when terminal is resized
vim.api.nvim_command("autocmd VimResized * wincmd =")

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


local terminal_group = augroup('Terminal Options', {})
autocmd("TermOpen", {
  pattern = "term://*",
  group = terminal_group,
  callback = function()
    vim.opt_local.number = false
    vim.opt_local.relativenumber = false
    vim.opt_local.cursorline = false
    vim.opt_local.signcolumn = "no"
    -- vim.opt_local.listchars = ""
    vim.opt_local.list = false
    vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], { buffer = 0 })
  end,
})

autocmd('TermOpen', { -- Enter insert mode when switching to terminal
  group = terminal_group,
  pattern = '',
  command = 'startinsert'
})

autocmd('BufLeave', { -- Close terminal buffer on process exit
  group = terminal_group,
  pattern = 'term://*',
  command = 'stopinsert'
})

local buffer_group = augroup('Buffer Options', {})

autocmd("BufWinEnter", {
  pattern = "*",
  group = buffer_group,
  callback = function()
    vim.opt.formatoptions = vim.opt.formatoptions + {
      c = false,
      o = false,
      r = true,
    }
  end,
})
