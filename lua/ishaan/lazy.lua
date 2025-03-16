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
  'Rasukarusan/nvim-select-multi-line',
  'aserowy/tmux.nvim',
  'TaDaa/vimade',
  'altermo/small.nvim',
  'andymass/vim-matchup',
  'anuvyklack/hydra.nvim',
  'aznhe21/actions-preview.nvim',
  'chamindra/marvim/',
  'chrisgrieser/nvim-various-textobjs',
  'cshuaimin/ssr.nvim',
  'dylanaraps/wal.vim',
  'glacambre/firenvim',
  'google/executor.nvim',
  'jpalardy/vim-slime',
  'lervag/vimtex',
  'mattn/emmet-vim',
  'mhinz/neovim-remote',
  'monaqa/dial.nvim',
  'notomo/gesture.nvim',
  'sindrets/winshift.nvim',
  'sirver/ultisnips',
  'folke/zen-mode.nvim',
  'folke/twilight.nvim',
  'LudoPinelli/comment-box.nvim',
  'MagicDuck/grug-far.nvim',
  { "HakonHarnes/img-clip.nvim", event = "VeryLazy" },
  { "NStefan002/screenkey.nvim", lazy = false },
  { "eoh-bse/minintro.nvim", config = true, lazy = false },
  { "tpope/vim-sleuth", event = "VeryLazy" },
  { "mg979/vim-visual-multi", { branch = "master" } },
  { "declancm/cinnamon.nvim", version = "*", opts = { } },
  {
    'goolord/alpha-nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function() require 'alpha'.setup(require 'alpha.themes.startify'.config) end
  },
  { "junegunn/goyo.vim", keys = { { "<leader>g", "<cmd>lua require('lualine').hide()<CR><CMD>Goyo<CR>", desc = "Toggle Goyo" } } },
  { "junegunn/limelight.vim", keys = { "<leader>l" } },
}

local opts = {
  change_detection = { notify = false, },
  -- defaults = { lazy = true}
  rocks = { hererocks = false, enabled = false },
}

require("lazy").setup("ishaan.plugins", opts)
