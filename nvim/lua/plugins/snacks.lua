return {
  "folke/snacks.nvim",
  opts = {
    dashboard = { enabled = false },
    explorer = { enabled = false },
    scroll = {
      animate = {
        duration = { step = 15, total = 150 },
        easing = "linear",
      },
    },
    picker = {
      prompt = icons.cmd.prompt .. " ",
      icons = {
        files = {
          dir = icons.folder.closed .. " ",
          dir_open = icons.folder.open .. " ",
        },
        ui = {
          live = "",
        },
        git = icons.git,
        diagnostics = {
          Error = icons.diagnostic.error .. " ",
          Warn = icons.diagnostic.warn .. " ",
          Info = icons.diagnostic.info .. " ",
          Hint = icons.diagnostic.hint .. " ",
        },
        lsp = {
          unavailable = "unavailable ",
          enabled = "enabled ",
          disabled = "disabled ",
          attached = "attached ",
        },
        kinds = icons.code,
      },
    },
    lazygit = {
      configure = false,
    },
  },
  keys = {
    {
      "<leader>'",
      function()
        Snacks.picker.resume()
      end,
      desc = "Resume picker",
    },
    {
      "<leader>f.",
      function()
        Snacks.picker.files({ cwd = vim.fn.expand("%:p:h") })
      end,
      desc = "Find Config File",
    },
  },
}
