-- Lsps
require("lvim.lsp.manager").setup('emmet_ls', {})
require("lvim.lsp.manager").setup('eslint', {})
require("lvim.lsp.manager").setup('tailwindcss', {})
require("lvim.lsp.manager").setup('volar', {
  filetypes = { 'vue' },
  init_options = {
    vue = {
      hybrid_mode = false
    }
  }
})

local mason_registry = require("mason-registry")
local vue_language_server_path = mason_registry.get_package("vue-language-server"):get_install_path()
    .. "/node_modules/@vue/language-server"

require("lvim.lsp.manager").setup('tsserver', {
  init_options = {
    plugins = {
      {
        name = "@vue/typescript-plugin",
        location = vue_language_server_path,
        languages = { "vue" },
      },
    },
  },
  filetypes = { 'typescript', 'javascript', 'javascriptreact', 'typescriptreact', 'vue' },
})

-- Formatters
local formatters = require('lvim.lsp.null-ls.formatters')
formatters.setup({ { command = 'prettierd' }, { command = 'rustywind' } })
