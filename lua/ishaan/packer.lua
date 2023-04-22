vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  use({
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
    requires = { {'nvim-lua/plenary.nvim'} }
  })

  use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })

  use('mbbill/undotree')

  use('kylechui/nvim-surround', { tag = '*' })

  use('numToStr/Comment.nvim')

  use('wakatime/vim-wakatime')

  use('mg979/vim-visual-multi', { branch = 'master' })

  use('github/copilot.vim')
  
  use('mattn/emmet-vim')

  use('lewis6991/impatient.nvim')

  use('notomo/gesture.nvim')

  use('preservim/tagbar')

  use('lervag/vimtex')

  use('sirver/ultisnips')

  -- use('mhinz/neovim-remote')

  use('dylanaraps/wal.vim')

  -- use('jpalardy/vim-slime')

  -- use('dylanaraps/wal.vim')

  -- use('jpalardy/vim-slime')
end)
