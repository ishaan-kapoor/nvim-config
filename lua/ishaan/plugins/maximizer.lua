local plugin = {
  'szw/vim-maximizer',
  keys = {
    { '<C-w>z',     '<cmd>MaximizerToggle<CR>', desc = "Toggle pane maximization" },
    { '<leader>wz', '<cmd>MaximizerToggle<CR>', desc = "Toggle pane maximization" },
    { '<leader>wm', '<cmd>MaximizerToggle<CR>', desc = "Toggle pane maximization" },
  },
}

return plugin
