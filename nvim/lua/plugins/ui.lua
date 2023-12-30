return {
  -- Set colorscheme as catppuccin
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin-frappe",
    },
  },
  -- Mute "no info ava.." messages
  {
    "folke/noice.nvim",
    opts = function(_, opts)
      table.insert(opts.routes, {
        filter = {
          event = "notify",
          find = "No information available",
        },
        opts = { skip = true },
      })
    end,
  },
  -- Modify components of status line
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = {
      options = {
        icons_enabled = false,
        component_separators = "|",
        section_separators = "",
      },
    },
  },
  -- Add file name window in the right-upper corner
  {
    "b0o/incline.nvim",
    event = "BufReadPre",
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
        -- hide = {
        --   cursorline = true,
        -- },
        render = function(props)
          local filename = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(props.buf), ":t")
          if vim.bo[props.buf].modified then
            filename = "[+] " .. filename
          end

          local icon, color = require("nvim-web-devicons").get_icon_color(filename)
          return { { icon, guifg = color }, { " " }, { filename } }
        end,
      })
    end,
  },
  -- Set nofitication duration
  {
    "rcarriga/nvim-notify",
    opts = {
      timeout = 3000,
    },
  },
  -- animations when jumping a cursor
  {
    "echasnovski/mini.animate",
    event = "VeryLazy",
    opts = function(_, opts)
      opts.scroll = {
        enable = false,
      }
    end,
  },
}
