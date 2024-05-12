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
        function()
          return os.date("%R")
        end,
      },
    },
  },
  -- opts = function(_, opts)
  --   table.insert(opts.sections.lualine_z, "😄")
  --   table.insert(opts.options, {
  --     icons_enabled = false,
  --     component_separators = "|",
  --     section_separators = "",
  --   })
  -- end,
}
