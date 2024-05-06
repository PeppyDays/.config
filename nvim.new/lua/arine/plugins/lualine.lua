return {
  "nvim-lualine/lualine.nvim",
  event = "VeryLazy",
  config = function()
    local lualine = require("lualine")
    lualine.setup({
      sections = {
        lualine_c = { { "filename", path = 1 } },
      },
      inactive_sections = {
        lualine_c = { { "filename", path = 1 } },
      },
      options = {
        icons_enabled = false,
        component_separators = "|",
        section_separators = "",
      },
    })
  end,
}
