local navigator = {
  'christoomey/vim-tmux-navigator',
  event = 'VeryLazy',
  keys = {
    { "<C-Left>",  "<Cmd><C-U>TmuxNavigateLeft<cr>",  desc = "Vim-Tmux Navigate Left" },
    { "<C-Down>",  "<Cmd><C-U>TmuxNavigateDown<cr>",  desc = "Vim-Tmux Navigate Down" },
    { "<C-UP>",    "<Cmd><C-U>TmuxNavigateUP<cr>",    desc = "Vim-Tmux Navigate UP" },
    { "<C-Right>", "<Cmd><C-U>TmuxNavigateRight<cr>", desc = "Vim-Tmux Navigate Right" },
  },
}

local resizer = {
  'RyanMillerC/better-vim-tmux-resizer',
  event = 'VeryLazy',
  keys = {
    { "<M-Left>",  "<Cmd><C-U>TmuxResizeLeft<cr>",  desc = "Vim-Tmux Resize Left" },
    { "<M-Down>",  "<Cmd><C-U>TmuxResizeDown<cr>",  desc = "Vim-Tmux Resize Down" },
    { "<M-UP>",    "<Cmd><C-U>TmuxResizeUP<cr>",    desc = "Vim-Tmux Resize UP" },
    { "<M-Right>", "<Cmd><C-U>TmuxResizeRight<cr>", desc = "Vim-Tmux Resize Right" },
  },
}

return {navigator, resizer}
