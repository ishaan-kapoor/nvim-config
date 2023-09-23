vim.opt.hidden = true

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.smartindent = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.autoindent = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true
vim.opt.undodir = os.getenv("HOME") .. "/.nvim/undodir"

vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.scrolloff = 2
vim.opt.signcolumn = "yes"
vim.opt.colorcolumn = {"80", "120"}
vim.opt.cursorline = true
vim.opt.cursorcolumn = true
vim.opt.laststatus = 3

vim.opt.termguicolors = true
vim.opt.background = "dark"
vim.opt.wrap = true

vim.opt.backspace = {"indent", "eol", "start"}
vim.opt.splitright = true
vim.opt.splitbelow = true

vim.opt.isfname:append("@-@")
vim.opt.updatetime = 50
vim.opt.cmdheight = 0

vim.api.nvim_set_hl(0, "Pmenu", { ctermbg="gray", bg="gray", blend=10 })

vim.lsp.set_log_level("debug")

vim.opt.list = true
vim.opt.listchars:append "space:⋅"
vim.opt.listchars:append "multispace:⋅⋅⋅󱁐"
vim.opt.listchars:append "tab:> " -- "tab:-->"
vim.opt.listchars:append "eol:$" -- "eol:↴"
vim.opt.listchars:append "conceal:"

vim.opt.path:append "**"

vim.g.loaded_perl_provider = 0
vim.g.loaded_ruby_provider = 0
vim.g.loaded_node_provider = 0
vim.g.python3_host_prog = "/usr/bin/python3"

-- vim.cmd [[autocmd! CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]]
