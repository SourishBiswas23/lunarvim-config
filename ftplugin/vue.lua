require("lvim.lsp.manager").setup('emmet_ls', {})
require("lvim.lsp.manager").setup('eslint', {})
require("lvim.lsp.manager").setup('tailwindcss', {})
require("lvim.lsp.manager").setup('volar', {
  init_options = {
    vue = {
      hybrid_mode = false
    }
  }
})
local formatters = require('lvim.lsp.null-ls.formatters')
formatters.setup({ { command = 'prettierd' }, { command = 'rustywind' } })
