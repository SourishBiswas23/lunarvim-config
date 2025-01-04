-- Lsps
require("lvim.lsp.manager").setup('eslint', {})

-- Formatters
local formatters = require('lvim.lsp.null-ls.formatters')
formatters.setup({ { command = 'prettierd' } })
