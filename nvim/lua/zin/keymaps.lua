vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
local map = vim.api.nvim_set_keymap
local opts = {noremap = true, silent = true}

map('n', '<leader>w' , ':w<CR>' , opts)
map('n', '<leader>q' , ':q<CR>' , opts)
map('n', '<leader>s' , ':split<CR>' , opts)
map('n', '<leader>v' , ':vsplit<CR>' , opts)
map('n', '<leader>e' , ':Ex<CR>' , opts)
map('n', '<leader>fg', '<cmd>Telescope live_grep<CR>', opts)
map('n', '<leader>fb', '<cmd>Telescope buffers<CR>', opts)
map('n', '<leader>fh', '<cmd>Telescope help_tags<CR>', opts)
map('n', '<leader>ff' , '<cmd>Telescope find_files<CR>' , opts)
