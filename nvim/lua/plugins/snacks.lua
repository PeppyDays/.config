return {
  "folke/snacks.nvim",
  opts = {
    dashboard = { enabled = false },
    explorer = { enabled = false },
    picker = {
      prompt = icons.cmd.prompt .. " ",
      icons = {
        files = {
          dir = icons.folder.closed .. " ",
          dir_open = icons.folder.open .. " ",
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
}
