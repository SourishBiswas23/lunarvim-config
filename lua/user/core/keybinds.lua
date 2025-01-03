lvim.builtin.which_key.mappings['c'] = {}
lvim.builtin.which_key.mappings['x'] = { "<cmd>BufferKill<CR>", "Close Buffer" }

-- Save file in all modes
lvim.keys.normal_mode["<C-s>"] = ":w<CR>"
lvim.keys.insert_mode["<C-s>"] = "<Esc>:w<CR>"
lvim.keys.visual_mode["<C-s>"] = ":w<CR>"

-- Exit insert mode with jk
lvim.keys.insert_mode['jk'] = "<Esc>"

-- Remap j and k to handle wrapped lines in both visual and normal modes
lvim.keys.normal_mode['j'] = "gj"
lvim.keys.normal_mode['k'] = "gk"
lvim.keys.visual_mode['j'] = "gj"
lvim.keys.visual_mode['k'] = "gk"

-- Use leader + / to clear search highlight
lvim.builtin.which_key.mappings["/"] = { "<cmd>nohlsearch<CR>", "Clear search highlight" }

-- Use Alt + h / l to go to previous or next buffer
lvim.keys.normal_mode['<M-h>'] = "<cmd>BufferLineCyclePrev<CR>"
lvim.keys.normal_mode['<M-l>'] = "<cmd>BufferLineCycleNext<CR>"
lvim.keys.insert_mode['<M-h>'] = "<cmd>BufferLineCyclePrev<CR>"
lvim.keys.insert_mode['<M-l>'] = "<cmd>BufferLineCycleNext<CR>"
lvim.keys.visual_mode['<M-h>'] = "<cmd>BufferLineCyclePrev<CR>"
lvim.keys.visual_mode['<M-l>'] = "<cmd>BufferLineCycleNext<CR>"
