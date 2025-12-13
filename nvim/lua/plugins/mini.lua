return {
  {
    "nvim-mini/mini.icons",
    opts = {
      style = "ascii",
    },
  },
  {
    "nvim-mini/mini.pairs",
    opts = {
      mappings = {
        ["`"] = { action = "closeopen", pair = "``", neigh_pattern = "[^\\`].", register = { cr = false } },
        ["<"] = { action = "open", pair = "<>", neigh_pattern = "[^\\]." },
        [">"] = { action = "close", pair = "<>", neigh_pattern = "[^\\]." },
      },
    },
  },
  {
    "nvim-mini/mini.move",
    opts = {
      mappings = {
        left = "<M-S-h>",
        right = "<M-S-l>",
        down = "<M-S-j>",
        up = "<M-S-k>",

        line_left = "<M-S-h>",
        line_right = "<M-S-l>",
        line_down = "<M-S-j>",
        line_up = "<M-S-k>",
      },
    },
  },
}
