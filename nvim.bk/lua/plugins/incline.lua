return {
  "b0o/incline.nvim",
  event = "VeryLazy",
  priority = 1200,
  config = function()
    local colors = require("catppuccin.palettes.frappe")
    require("incline").setup({
      highlight = {
        groups = {
          InclineNormal = { guibg = colors.yellow, guifg = colors.crust },
          InclineNormalNC = { guibg = colors.overlay0, guifg = colors.crust },
        },
      },
      window = { margin = { vertical = 0, horizontal = 1 } },
      hide = {
        cursorline = true,
      },
    })
  end,
}
