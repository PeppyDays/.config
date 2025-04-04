return {
  "aaronhallaert/advanced-git-search.nvim",
  config = function()
    require("telescope").load_extension("advanced_git_search")

    vim.keymap.set("n", "<leader>gsc", "<cmd>AdvancedGitSearch diff_commit_file<cr>")
    vim.keymap.set("n", "<leader>gsb", "<cmd>AdvancedGitSearch diff_branch_file<cr>")
    vim.keymap.set("v", "<leader>gsl", "<cmd>AdvancedGitSearch diff_commit_line<cr>")
    vim.keymap.set("n", "<leader>gsf", "<cmd>AdvancedGitSearch search_log_content_file<cr>")
  end,
  dependencies = {
    "nvim-telescope/telescope.nvim",
    "tpope/vim-fugitive",
    "tpope/vim-rhubarb",
  },
}
