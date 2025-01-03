vim.keymap.set('n', "<M-1>", "<cmd>BufferLineGoToBuffer 1<CR>")
vim.keymap.set('n', "<M-2>", "<cmd>BufferLineGoToBuffer 2<CR>")
vim.keymap.set('n', "<M-3>", "<cmd>BufferLineGoToBuffer 3<CR>")

for i = 1, 9 do
  lvim.keys.normal_mode["<M-" .. i .. ">"] = "<Cmd>BufferLineGoToBuffer " .. i .. "<CR>"
  lvim.keys.insert_mode["<M-" .. i .. ">"] = "<Cmd>BufferLineGoToBuffer " .. i .. "<CR>"
  lvim.keys.visual_mode["<M-" .. i .. ">"] = "<Cmd>BufferLineGoToBuffer " .. i .. "<CR>"
end
