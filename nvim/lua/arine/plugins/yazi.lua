return {
  "mikavilpas/yazi.nvim",
  event = "VeryLazy",
  keys = {
    {
      "<leader>fy",
      "<cmd>Yazi<cr>",
      desc = "Open yazi at the current file",
    },
    {
      "<leader>fd",
      "<cmd>Yazi cwd<cr>",
      desc = "Open the file manager in nvim's working directory",
    },
  },
  opts = {
    open_for_directories = true,
    integrations = {
      grep_in_directory = "fzf-lua",
      grep_in_selected_files = "fzf-lua",
    },
  },
}
