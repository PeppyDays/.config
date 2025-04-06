return {
  "folke/which-key.nvim",
  opts = {
    preset = "classic",
    spec = {
      {
        { "gh", desc = "Go to line start" },
        { "gl", desc = "Go to line end" },
        { "gs", desc = "Go to first non-blank in line" },
      },
    },
    icons = {
      breadcrumb = ">",
      separator = "=",
      group = "+",
      ellipsis = "..",
      mappings = false,
      rules = {},
      colors = true,
      keys = {
        Up = "up",
        Down = "down",
        Left = "left",
        Right = "right",
        C = "[ctl]",
        M = "[alt]",
        D = "[cmd]",
        S = "[sft]",
        CR = "[cr]",
        Esc = "[esc]",
        ScrollWheelDown = "[swd]",
        ScrollWheelUp = "[swu]",
        NL = "[nl]",
        BS = "[bs]",
        Space = "[sp]",
        Tab = "[tab]",
        F1 = "f1",
        F2 = "f2",
        F3 = "f3",
        F4 = "f4",
        F5 = "f5",
        F6 = "f6",
        F7 = "f7",
        F8 = "f8",
        F9 = "f9",
        F10 = "f10",
        F11 = "f11",
        F12 = "f12",
      },
    },
  },
}
