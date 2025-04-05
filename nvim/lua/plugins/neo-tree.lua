return {
  "nvim-neo-tree/neo-tree.nvim",
  keys = {
    { "<leader>e", false },
    { "<leader>E", false },
  },
  opts = {
    default_component_configs = {
      indent = {
        expander_collapsed = "",
        expander_expanded = "",
      },
      icon = {
        folder_closed = "D",
        folder_open = "d",
        folder_empty = "E",
      },
      git_status = {
        symbols = {
          added = "+",
          modified = "~",
          deleted = "-",
          renamed = ">",
          untracked = "n",
          ignored = "!",
          unstaged = "u",
          staged = "s",
          conflict = "x",
        },
      },
    },
  },
}
