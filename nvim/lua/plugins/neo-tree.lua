return {
  "nvim-neo-tree/neo-tree.nvim",
  keys = {
    { "<leader>e", false },
    { "<leader>E", false },
  },
  config = function()
    require("neo-tree").setup({
      default_component_configs = {
        icon = {
          folder_closed = "@",
          folder_open = "#",
          folder_empty = "%",
          default = "",
        },
      },
    })
  end,
}
