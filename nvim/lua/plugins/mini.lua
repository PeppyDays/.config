return {
  {
    "echasnovski/mini.icons",
    opts = {
      style = "ascii",
    },
  },
  {
    "echasnovski/mini.pairs",
    -- Disabled because of difficulties for disabling single quote pairing onl in Rust
    -- Switched to nvim-autopairs
    enabled = false,
    opts = {
      mappings = {
        ["`"] = { action = "closeopen", pair = "``", neigh_pattern = "[^\\`].", register = { cr = false } },
        ["<"] = { action = "open", pair = "<>", neigh_pattern = "[^\\]." },
        [">"] = { action = "close", pair = "<>", neigh_pattern = "[^\\]." },
      },
    },
  },
}
