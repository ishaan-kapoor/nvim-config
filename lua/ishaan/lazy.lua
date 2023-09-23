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
    -- { 'mg979/vim-visual-multi', { branch = 'master' } },
    -- 'mattn/emmet-vim',
    -- 'notomo/gesture.nvim',
    -- 'lervag/vimtex',
    -- 'sirver/ultisnips',
    -- 'mhinz/neovim-remote',
    -- 'dylanaraps/wal.vim',
    -- 'jpalardy/vim-slime',
}

local opts = {
  change_detection = { notify = false, },
  -- defaults = { lazy = true}
}

require("lazy").setup("ishaan.plugins", opts)
