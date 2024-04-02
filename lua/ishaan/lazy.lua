local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
  'google/executor.nvim',
  { 'mg979/vim-visual-multi', { branch = 'master' } },
  'mattn/emmet-vim',
  'Rasukarusan/nvim-select-multi-line',
  'notomo/gesture.nvim',
  'lervag/vimtex',
  'sirver/ultisnips',
  'mhinz/neovim-remote',
  'dylanaraps/wal.vim',
  'jpalardy/vim-slime',
  'monaqa/dial.nvim',
  'sindrets/winshift.nvim',
  'anuvyklack/hydra.nvim',
  'TaDaa/vimade',
  'glacambre/firenvim',
  'cshuaimin/ssr.nvim',
  'chrisgrieser/nvim-various-textobjs',
  'chamindra/marvim/',
  'andymass/vim-matchup',
  {
    'goolord/alpha-nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function() require 'alpha'.setup(require 'alpha.themes.startify'.config) end
  },
  "altermo/small.nvim",
  {
    'tamton-aquib/duck.nvim',
    config = function()
      vim.keymap.set('n', '<leader>dd', function() require("duck").hatch("🐤", 10) end, {})
      vim.keymap.set('n', '<leader>dk', function() require("duck").cook() end, {})
      vim.keymap.set('n', '<leader>da', function() require("duck").cook_all() end, {})
    end
  },
}

local opts = {
  change_detection = { notify = false, },
  -- defaults = { lazy = true}
}

require("lazy").setup("ishaan.plugins", opts)
