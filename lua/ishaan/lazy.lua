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
  'AllenDang/nvim-expand-expr',
  'LudoPinelli/comment-box.nvim',
  'MagicDuck/grug-far.nvim',
  'Rasukarusan/nvim-select-multi-line',
  'TaDaa/vimade',
  'altermo/small.nvim',
  'andymass/vim-matchup',
  'anuvyklack/hydra.nvim',
  'aserowy/tmux.nvim',
  'aznhe21/actions-preview.nvim',
  'chamindra/marvim/',
  'chrisgrieser/nvim-various-textobjs',
  'cshuaimin/ssr.nvim',
  'dylanaraps/wal.vim',
  'folke/twilight.nvim',
  'folke/zen-mode.nvim',
  'glacambre/firenvim',
  'google/executor.nvim',
  'jpalardy/vim-slime',
  'lervag/vimtex',
  'LeonHeidelbach/trailblazer.nvim',
  'mattn/emmet-vim',
  'mhinz/neovim-remote',
  'monaqa/dial.nvim',
  'notomo/gesture.nvim',
  'sindrets/winshift.nvim',
  'sirver/ultisnips',
  { "HakonHarnes/img-clip.nvim", event = "VeryLazy" },
  { "NStefan002/screenkey.nvim", lazy = false },
  { "declancm/cinnamon.nvim", version = "*", opts = { } },
  { "eoh-bse/minintro.nvim", config = true, lazy = false },
  { "junegunn/goyo.vim", keys = { { "<leader>g", "<cmd>lua require('lualine').hide()<CR><CMD>Goyo<CR>", desc = "Toggle Goyo" } } },
  { "junegunn/limelight.vim", keys = { "<leader>l" } },
  { "mg979/vim-visual-multi", { branch = "master" } },
  { "tpope/vim-sleuth", event = "VeryLazy" },
  {
    'goolord/alpha-nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function() require 'alpha'.setup(require 'alpha.themes.startify'.config) end
  },
}

local opts = {
  change_detection = { notify = false, },
  -- defaults = { lazy = true}
  rocks = { hererocks = false, enabled = false },
}

require("lazy").setup("ishaan.plugins", opts)
