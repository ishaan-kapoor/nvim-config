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
    -- 'christoomey/vim-tmux-navigator',
    -- 'RRethy/vim-illuminate',
    -- { 'mg979/vim-visual-multi', { branch = 'master' } },
    -- 'mattn/emmet-vim',
    -- 'notomo/gesture.nvim',
    -- 'preservim/tagbar',
    -- 'lervag/vimtex',
    -- 'sirver/ultisnips',
    -- 'mhinz/neovim-remote',
    -- 'dylanaraps/wal.vim',
    -- 'jpalardy/vim-slime',
    -- { 'nvim-lualine/lualine.nvim', dependencies = { 'nvim-tree/nvim-web-devicons', lazy = true } },
    -- Cmp 
    {
        'hrsh7th/nvim-cmp', -- The completion plugin
        dependencies = {
            'hrsh7th/cmp-buffer', -- buffer completions
            'hrsh7th/cmp-path', -- path completions
            { 'saadparwaiz1/cmp_luasnip', dependencies = {'L3MON4D3/LuaSnip'} }, -- snippet completions
            'hrsh7th/cmp-nvim-lua',
            { 'hrsh7th/cmp-nvim-lsp', dependencies = {
                { 'neovim/nvim-lspconfig', dependencies = {
                    'nvim-lua/plenary.nvim',
                    { 'williamboman/mason-lspconfig.nvim', dependencies = {'williamboman/mason.nvim'} },
                    -- 'jose-elias-alvarez/null-ls.nvim',
                } },
            } }, -- lsp completions
        }
    },

}

local opts = { change_detection = { notify = false, }, }

require("lazy").setup('ishaan.plugins', opts)
