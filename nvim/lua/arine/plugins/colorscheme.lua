return {
  "catppuccin/nvim",
  name = "catppuccin",
  lazy = false,
  priority = 1000,
  config = function()
    require("catppuccin").setup({
      flavour = "frappe",
      transparent_background = false,
      term_colors = true,
      dim_inactive = {
        enabled = false,  -- dims the background color of inactive window
        shade = "light",
        percentage = 0.9, -- percentage of the shade to apply to the inactive window
      },
      styles = {
        keywords = { "bold" },
      },
      custom_highlights = function(colors)
        local searchActive = { bg = colors.red, fg = "#181825" }
        local searchInactive = { bg = colors.peach, fg = "#000000" }

        return {
          CursorLineNr = { fg = colors.flamingo },
          Search = searchInactive,
          IncSearch = searchActive,
          EndOfBuffer = { fg = colors.flamingo },
          WinSeparator = { fg = colors.surface0, bg = colors.surface0 },
        }
      end,
      integrations = {
        blink_cmp = true,
        barbar = false,
        fidget = true,
        octo = true,
        which_key = true,
        lsp_trouble = true,
        noice = true,
        diffview = true,
        notify = true,
        overseer = true,
        dropbar = {
          enabled = true,
          color_mode = true, -- enable color for kind's texts, not just kind's icons
        },
        illuminate = {
          enabled = true,
          lsp = true,
        },
        snacks = {
          enabled = true,
          -- indent_scope_color = "lavender",
        },
      },
    })

    vim.cmd([[colorscheme catppuccin]])
  end,
}
