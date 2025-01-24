lvim.lsp.on_attach_callback = function(client, bufnr)
  require('lsp_signature').on_attach()
end

return {
  "ray-x/lsp_signature.nvim",
  config = function()
    require "lsp_signature".setup({})
  end,
}
