lvim.builtin.terminal.active = true
-- lvim.builtin.terminal.builtin

lvim.format_on_save.enabled = true
lvim.keys.normal_mode['<M-1>'] = nil

-- Bufferline
lvim.builtin.cmp.completion = {
  completeopt = "menu,menuone,preview,noinsert"
}

for i = 1, 9 do
  lvim.keys.normal_mode["<M-" .. i .. ">"] = "<Cmd>BufferLineGoToBuffer " .. i .. "<CR>"
  lvim.keys.insert_mode["<M-" .. i .. ">"] = "<Cmd>BufferLineGoToBuffer " .. i .. "<CR>"
  lvim.keys.visual_mode["<M-" .. i .. ">"] = "<Cmd>BufferLineGoToBuffer " .. i .. "<CR>"
end

lvim.builtin.which_key.mappings['c'] = {}
lvim.builtin.which_key.mappings['x'] = { "<cmd>BufferKill<CR>", "Close Buffer" }

-- Nvim Tree
lvim.builtin.nvimtree.setup.view.relativenumber = true
