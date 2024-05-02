local options = vim.opt

options.hidden = true

options.number = true
options.relativenumber = true

options.smartindent = true
options.smarttab = true
options.tabstop = 8
options.softtabstop = 2
options.shiftwidth = 2
options.expandtab = true
options.autoindent = true

options.exrc = true -- To enable local config
options.secure = true -- To disable autocmd, etc in local config

options.swapfile = false
options.backup = false
options.undofile = true
-- options.undodir = os.getenv("HOME") .. "/.nvim/undodir"
options.undodir = os.getenv("HOME") .. "/.local/share/nvim/undodir"
options.confirm = true

options.ignorecase = true
options.smartcase = true

options.wildignore = { ".git/*", "node_modules/*" }
options.wildignorecase = true

options.hlsearch = false
options.incsearch = true

options.scrolloff = 2
options.signcolumn = "yes"
options.colorcolumn = { "80", "120" }
-- options.cursorline = true
options.cursorcolumn = false
options.laststatus = 3
-- options.statuscolumn = "%s %C %l %r"
options.foldcolumn = '1'
options.showcmdloc = "statusline"

options.termguicolors = true
options.background = "dark"
options.wrap = true

options.backspace = { "indent", "eol", "start" }
options.splitright = true
options.splitbelow = true
options.virtualedit = "block"

options.isfname:append("@-@")
options.updatetime = 50
options.cmdheight = 1

vim.api.nvim_set_hl(0, "Pmenu", { ctermbg = "gray", bg = "gray", blend = 10 })

vim.lsp.set_log_level("debug")

options.list = true
options.listchars = {
  space = "⋅",
  -- multispace = "|⋅⋅⋅",
  multispace = "⋅⋅⋅󱁐",
  tab = "  »",
  eol = "↴",
  conceal = "",
  nbsp = "•",
  extends = "❯",
  precedes = "❮",
}
options.formatoptions = options.formatoptions + {
  c = false, -- don't auto-wrap comments
  o = false, -- O and o, don't continue comments
  r = true,  -- Pressing Enter will continue comments
}
options.conceallevel = 1

options.path:append "**"

vim.g.loaded_perl_provider = 0
vim.g.loaded_ruby_provider = 0
vim.g.node_host_prog = "/usr/bin/neovim-node-host"
vim.g.python3_host_prog = "/usr/bin/python3"

vim.g.clipboard = {
  name = 'WslClipboard',
  copy = {
    ['+'] = 'clip.exe',
    ['*'] = 'clip.exe',
  },
  paste = {
    ['+'] = 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
    ['*'] = 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
  },
  cache_enabled = 1,
}

require('editorconfig').properties.trim_trailing_whitespace = nil

-- BlockRepeatedMotion()

-- local highlight = vim.api.nvim_get_hl(0,{["name"]="WinSeparator"})
-- highlight["fg"] = "None"
-- vim.api.nvim_set_hl(0,"WinSeparator",highlight)
