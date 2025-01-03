local api = vim.api
local opt = vim.opt

opt.relativenumber = true
opt.number = true

-- tabs and indentation
opt.tabstop = 2       -- 2 spaces for tabs
opt.shiftwidth = 2    -- 2 spaces for indent width
opt.expandtab = true  -- expand tab to spaces
opt.autoindent = true -- copy indent from current line when starting new one

-- search settings
opt.ignorecase = true -- ignore case while searching
opt.smartcase = true  -- assumes you want case sensitive if mixed cases in search

-- backspace
opt.backspace = "indent,eol,start" -- Allow backspacing over indentation, line breaks, and insertion start

-- split windows
opt.splitright = true -- split vertical window to the right
opt.splitbelow = true -- split horizontal window to the bottom

-- Additional settings
opt.scrolloff = 10                              -- Keep at least 10 lines above and below the cursor when scrolling
opt.textwidth = 0                               -- Disable automatic line wrapping based on text width
opt.wrapmargin = 0                              -- Disable automatic line wrapping based on the wrap margin
opt.wrap = true                                 -- Enable line wrapping
opt.linebreak = true                            -- Wrap lines at word boundaries rather than in the middle of a word
opt.textwidth = 80                              -- Set maximum text width for automatic line wrapping to 80 characters
opt.formatoptions = vim.opt.formatoptions + "t" -- Automatically wrap text at 'textwidth' while typing
opt.clipboard = ""                              -- Use the default system clipboard setting (usually unnamed)
opt.relativenumber = true                       -- Show line numbers relative to the current line
opt.signcolumn = "yes"                          -- Display signcolumn so text doesnt shift
opt.cursorline = true                           -- Highlight the line where cursor is located
-- opt.background = "dark"    -- Colorschemes with dark version will be made dark
opt.termguicolors = true                        -- Enable 24-bit RGB color in the terminal
opt.tags:append({ ".git/tags", "tags" })        -- Add tag files to vim

-- Restore cursor position when file is opened
api.nvim_create_autocmd("BufReadPost", {
  pattern = "*",
  callback = function()
    local line = vim.fn.line("'\"")
    if
        line > 1
        and line <= vim.fn.line("$")
        and vim.bo.filetype ~= "commit"
        and vim.fn.index({ "xxd", "gitrebase" }, vim.bo.filetype) == -1
    then
      vim.cmd('normal! g`"')
    end
  end,
})

-- use treesitter folding
-- opt.foldmethod = "expr"
-- opt.foldexpr = "nvim_treesitter#foldexpr()"

-- Preserve code folds: save and load view (folds) when opening and closing files
-- api.nvim_create_autocmd("BufWinLeave", {
--   pattern = "?*",
--   desc = "Save view (folds) when closing file",
--   command = "mkview",
-- })

-- api.nvim_create_autocmd("BufWinEnter", {
--   pattern = "?*",
--   desc = "Load view (folds) when opening file",
--   command = "silent! loadview",
-- })

-- -- Open help window in a vertical split to the right.
-- api.nvim_create_autocmd("BufWinEnter", {
--   group = vim.api.nvim_create_augroup("help_window_right", {}),
--   pattern = { "*.txt" },
--   callback = function()
--     if vim.o.filetype == "help" then
--       vim.cmd.wincmd("L")
--     end
--   end,
-- })

-- Create an autocmd group for yank highlighting
local highlight_group = vim.api.nvim_create_augroup("YankHighlight", { clear = true })

-- Create an autocmd to highlight on yank
vim.api.nvim_create_autocmd("TextYankPost", {
  group = highlight_group,
  pattern = "*",
  callback = function()
    vim.highlight.on_yank({ higroup = "IncSearch", timeout = 200 })
  end,
})

lvim.format_on_save.enabled = true

-- Bufferline
lvim.builtin.cmp.completion = {
  completeopt = "menu,menuone,preview,noinsert"
}

-- Nvim Tree
lvim.builtin.nvimtree.setup.view.relativenumber = true

-- Lua Line
lvim.builtin.lualine.sections.lualine_a = { "mode" }
lvim.builtin.lualine.sections.lualine_b = {
  "branch",
  {
    "diff",
    always_visible = false,
  },
  {
    "diagnostics",
    sources = { "nvim_diagnostic" },
    sections = { "error", "warn", "info", "hint" },
    -- symbols = { error = "E:", warn = "W:", info = "I:", hint = "H:" },
    colored = true,
    update_in_insert = false,
    always_visible = false,
  },
  { "filename", path = 1 },
}
lvim.builtin.lualine.sections.lualine_c = {}
lvim.builtin.lualine.sections.lualine_x = {}
lvim.builtin.lualine.sections.lualine_y = { { "encoding" }, { "filetype" }, { "progress" } }
lvim.builtin.lualine.sections.lualine_z = { "location" }
lvim.builtin.lualine.options.component_separators = { left = "", right = "" }
lvim.builtin.lualine.options.theme = 'nightfly'
