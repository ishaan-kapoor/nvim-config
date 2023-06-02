vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.smartindent = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true
vim.opt.undodir = os.getenv("HOME") .. "/.nvim/undodir"

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.scrolloff = 10
vim.opt.signcolumn = "yes"
vim.opt.colorcolumn = {"80", "120"}

vim.opt.termguicolors = true
vim.opt.wrap = false

vim.g.loaded_perl_provide = 0
vim.g.loaded_ruby_provider = 0
vim.g.python3_host_prog = "/usr/bin/python3"
