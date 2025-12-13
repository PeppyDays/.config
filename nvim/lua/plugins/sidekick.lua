return {
  "folke/sidekick.nvim",
  opts = {
    cli = {
      mux = {
        backend = "zellij",
        enabled = true,
      },
      tools = {
        claude = {
          cmd = { "claude", "--dangerously-skip-permissions" },
        },
      },
    },
  },
}
