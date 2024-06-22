-- ~/.config/nvim/lua/your_username/plugins.lua
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
   -- nvim-cmp for autocompletion
  'hrsh7th/nvim-cmp',
  'hrsh7th/cmp-nvim-lsp', -- LSP source for nvim-cmp
  'hrsh7th/cmp-buffer', -- Buffer completions
  'hrsh7th/cmp-path', -- Path completions
  'hrsh7th/cmp-cmdline', -- Cmdline completions
  -- Language servers for HTML, CSS
  {
    'williamboman/nvim-lsp-installer', -- to easily install LSPs
    config = function()
      require("nvim-lsp-installer").setup {}
      local lspconfig = require('lspconfig')
      -- Setup LSPs
      lspconfig.html.setup {}
      lspconfig.cssls.setup {}
    end
  },
  -- Add more plugins here
})

