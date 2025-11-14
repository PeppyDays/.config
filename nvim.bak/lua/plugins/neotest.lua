return {
  "nvim-neotest/neotest",
  config = function(_, opts)
    opts.icons = {
      running_animated = {
        "⠋",
        "⠙",
        "⠚",
        "⠒",
        "⠂",
        "⠂",
        "⠒",
        "⠲",
        "⠴",
        "⠦",
        "⠖",
        "⠒",
        "⠐",
        "⠐",
        "⠒",
        "⠓",
        "⠋",
      },
      passed = "P",
      running = "R",
      failed = "F",
      skipped = "S",
      unknown = "U",
      non_collapsible = "─",
      collapsed = "─",
      expanded = "┐",
      child_prefix = "├",
      final_child_prefix = "└",
      child_indent = "│",
      final_child_indent = " ",
      watching = "W",
      test = "T",
      notify = "N",
    }
    opts.adapters = {
      require("rustaceanvim.neotest"),
    }
    require("neotest").setup(opts)
  end,
}
