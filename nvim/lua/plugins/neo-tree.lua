return {
  "nvim-neo-tree/neo-tree.nvim",
  keys = {
    { "<leader>e", false },
    { "<leader>E", false },
  },
  opts = {
    default_component_configs = {
      icon = {
        folder_closed = "D",
        folder_open = "O",
        folder_empty = "E",
        default = "",
      },
      git_status = {
        symbols = {
          added = "+",
          modified = "~",
          deleted = "-",
          renamed = ">",
          untracked = "u",
          ignored = "!",
          unstaged = "u",
          staged = "s",
          conflict = "x",
        },
      },
    },
  },
}
