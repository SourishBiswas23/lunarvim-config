return {
  'echasnovski/mini.hipatterns',
  version = '*',
  config = function()
    local hipatterns = require("mini.hipatterns")

    hipatterns.setup({
      highlighters = {
        -- Hex color codes (e.g., #RRGGBB, #RRGGBBAA)
        hex_color = hipatterns.gen_highlighter.hex_color(),

        -- RGB/RGBA functions (e.g., rgb(255, 0, 0), rgba(255, 0, 0, 0.5))
        rgb_function = {
          pattern = "rgba?%(%s*%d+%s*,%s*%d+%s*,%s*%d+%s*,?%s*[0-9.]*%s*%)",
          group = function(_, match)
            return hipatterns.compute_hex_color_group(match, "bg")
          end,
        },

        -- HSL/HSLA functions (e.g., hsl(0, 100%, 50%), hsla(0, 100%, 50%, 0.5))
        hsl_function = {
          pattern = "hsla?%(%s*%d+%s*,%s*%d+%%%s*,%s*%d+%%%s*,?%s*[0-9.]*%s*%)",
          group = function(_, match)
            return hipatterns.compute_hex_color_group(match, "bg")
          end,
        },
      },
    })

    -- Auto-attach to all buffers
    vim.api.nvim_create_autocmd({ "BufEnter", "BufNewFile" }, {
      callback = function()
        require("mini.hipatterns").enable()
      end,
    })
  end
}
