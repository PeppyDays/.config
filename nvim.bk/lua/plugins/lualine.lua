return {
  "nvim-lualine/lualine.nvim",
  event = "VeryLazy",
  opts = {
    options = {
      icons_enabled = false,
      component_separators = "|",
      section_separators = "",
    },
    sections = {
      lualine_z = {
        -- function()
        --   return "Arine"
        -- end,
      },
    },
  },
}
