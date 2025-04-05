return {
  "LazyVim/LazyVim",
  opts = {
    colorscheme = "catppuccin-frappe",
    icons = {
      misc = {
        dots = "..",
      },
      ft = {
        octo = "GitHub",
      },
      dap = {
        Stopped = { "> ", "DiagnosticWarn", "DapStoppedLine" },
        Breakpoint = "BP ",
        BreakpointCondition = "BPC",
        BreakpointRejected = { "BPR", "DiagnosticError" },
        LogPoint = ".>",
      },
      diagnostics = {
        Error = icons.diagnostic.error .. " ",
        Warn = icons.diagnostic.warn .. " ",
        Info = icons.diagnostic.info .. " ",
        Hint = icons.diagnostic.hint .. " ",
      },
      git = {
        added = icons.git.added .. " ",
        modified = icons.git.modified .. " ",
        removed = icons.git.deleted .. " ",
      },
      kinds = icons.code,
    },
  },
}
