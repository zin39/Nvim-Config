local cmp = require'cmp'
cmp.setup({
  snippet = {
    expand = function(args)
      vim.fn["vsnip#anonymous"](args.body)
    end,
  },
  mapping = {
    ['<C-b>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.close(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
  },
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'vsnip' },
  }, {
    { name = 'buffer' },
  })
})

require('nvim-autopairs').setup{}
require('nvim-ts-autotag').setup{}
require'nvim-treesitter.configs'.setup {
  ensure_installed = { "html", "css", "javascript", "typescript", "lua", "python" },
  highlight = {
    enable = true,
  },
  autotag = {
    enable = true,
  }
}
vim.cmd([[autocmd BufWritePre *.js,*.ts,*.css,*.html Prettier]])

