-- ~/.config/nvim/lua/your_rname/plugins.lua
-- Bootstrap lazy.nvim
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

-- Configure plugins using lazy.nvim
require('lazy').setup({
  'nvim-treesitter/nvim-treesitter',
  'neovim/nvim-lspconfig',
  {
    'nvim-telescope/telescope.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },
  {
    'nvim-telescope/telescope-fzf-native.nvim',
    run = 'make'
  },
  
      -- Add these to your plugin list
     'hrsh7th/nvim-cmp',
     'hrsh7th/cmp-nvim-lsp',
     'hrsh7th/cmp-buffer',
     'hrsh7th/cmp-path',
     'hrsh7th/cmp-cmdline',
     'hrsh7th/vim-vsnip',
     'windwp/nvim-autopairs',
     'windwp/nvim-ts-autotag',
     'neovim/nvim-lspconfig',
     'prettier/vim-prettier',

  -- Add more plugins here
})

