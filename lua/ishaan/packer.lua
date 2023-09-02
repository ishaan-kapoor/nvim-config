-- auto install packer if not installed
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
    vim.cmd([[packadd packer.nvim]])
    return true
  end
  return false
end
local packer_bootstrap = ensure_packer() -- true if packer was just installed

-- import packer safely
local status, packer = pcall(require, "packer")
if not status then
  return
end


-- vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  use({
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  })
  -- use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" })

  -- use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })

  use('mbbill/undotree')

  use('kylechui/nvim-surround', { tag = '*' })

  use('numToStr/Comment.nvim')

  use('wakatime/vim-wakatime')

  -- use("christoomey/vim-tmux-navigator")

  -- use("szw/vim-maximizer")

  -- use('mg979/vim-visual-multi', { branch = 'master' })

  use('github/copilot.vim')
  
  -- use('mattn/emmet-vim')

  use('lewis6991/impatient.nvim')

  -- use('notomo/gesture.nvim')

  -- use('preservim/tagbar')

  -- use('lervag/vimtex')

  -- use('sirver/ultisnips')

  -- use('mhinz/neovim-remote')

  -- use('dylanaraps/wal.vim')

  -- use('jpalardy/vim-slime')

  -- use ({
  --     'nvim-lualine/lualine.nvim',
  --     requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  --   })

  use ({
      'nvim-tree/nvim-tree.lua',
      requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    })


end)
