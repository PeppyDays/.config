return {
  "nvim-lualine/lualine.nvim",
  config = function()
    require('lualine').setup({
      options = {
        icons_enabled = false,
      },
      sections = {
        lualine_a = { "mode" },
        lualine_b = { "branch" },
        lualine_c = {
          { "diagnostics" },
          { "diff" },
          {
            "searchcount",
            maxcount = 999,
            timeout = 500,
          },
        },
        lualine_x = {},
        lualine_y = {
          { "progress", separator = " ", padding = { left = 1, right = 0 } },
          { "location", padding = { left = 0, right = 1 } },
        },
        lualine_z = {},
      },
    })
  end,
}
