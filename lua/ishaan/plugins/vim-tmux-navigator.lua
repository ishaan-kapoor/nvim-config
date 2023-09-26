return {
    'christoomey/vim-tmux-navigator',
    event = 'VeryLazy',
    keys = {
        { "<C-Left>",  "<Cmd><C-U>TmuxNavigateLeft<cr>",  desc = "Vim-Tmux Left"  },
        { "<C-Down>",  "<Cmd><C-U>TmuxNavigateDown<cr>",  desc = "Vim-Tmux Down"  },
        { "<C-UP>",    "<Cmd><C-U>TmuxNavigateUP<cr>",    desc = "Vim-Tmux UP"    },
        { "<C-Right>", "<Cmd><C-U>TmuxNavigateRight<cr>", desc = "Vim-Tmux Right" },
    },
}
