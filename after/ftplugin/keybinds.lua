print('This is the ftplugin directory')

for i = 1, 9 do
  lvim.keys.normal_mode["<M-" .. i .. ">"] = "<Cmd>BufferLineGoToBuffer " .. i .. "<CR>"
  lvim.keys.insert_mode["<M-" .. i .. ">"] = "<Cmd>BufferLineGoToBuffer " .. i .. "<CR>"
  lvim.keys.visual_mode["<M-" .. i .. ">"] = "<Cmd>BufferLineGoToBuffer " .. i .. "<CR>"
end
