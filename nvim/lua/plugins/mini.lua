return {
  {
    "echasnovski/mini.icons",
    opts = {
      style = "ascii",
    },
  },
  {
    "echasnovski/mini.pairs",
    opts = {
      mappings = {
        ["`"] = { action = "closeopen", pair = "``", neigh_pattern = "[^\\`].", register = { cr = false } },
        ["<"] = { action = "open", pair = "<>", neigh_pattern = "[^\\]." },
        [">"] = { action = "close", pair = "<>", neigh_pattern = "[^\\]." },
      },
    },
  },
}
