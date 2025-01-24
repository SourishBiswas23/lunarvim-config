require("user.plugins.corePlugins")
local colorschemes = require("user.plugins.colorschemes.allColorschemes")

local plugins = {
  require('user.plugins.dressing'),
  require('user.plugins.fidget'),
  require('user.plugins.nvimSurround'),
  require('user.plugins.suda'),
  require('user.plugins.tailwindTools'),
  -- require('user.plugins.tailwindFold'),
  require('user.plugins.tinyInlineDiagnostic'),
  require('user.plugins.todoComments'),
  require('user.plugins.undotree'),
  require('user.plugins.hipatterns'),
  require('user.plugins.lspSignature'),
  require('user.plugins.glow')
}

lvim.plugins = vim.list_extend(plugins, colorschemes)
