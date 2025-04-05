return {
  "folke/noice.nvim",
  opts = {
    cmdline = {
      format = {
        cmdline = { icon = icons.cmd.prompt },
        search_down = { icon = "search down" },
        search_up = { icon = "search up" },
        filter = { icon = "filter" },
        lua = { icon = "lua" },
        help = { icon = "help" },
        input = { icon = "input" },
      },
    },
    format = {
      level = {
        icons = {
          error = icons.diagnostic.error,
          warn = icons.diagnostic.warn,
          info = icons.diagnostic.info,
        },
      },
    },
    popupmenu = { kind_icons = false },
    inc_rename = {
      cmdline = {
        format = {
          IncRename = {
            icon = "rename",
          },
        },
      },
    },
  },
}
