return {
  "folke/sidekick.nvim",
  opts = {
    ui = {
      icons = {
        attached = "o ",
        started = "o ",
        installed = "o ",
        missing = "x ",
        external_attached = "o ",
        external_started = "o ",
        terminal_attached = "o ",
        terminal_started = "o ",
      },
    },
    cli = {
      tools = {
        claude = {
          cmd = { "claude", "--dangerously-skip-permissions" },
        },
      },
    },
  },
}
