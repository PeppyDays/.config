return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-telescope/telescope-file-browser.nvim",
  },
  opts = {
    defaults = {
      wrap_results = true,
      layout_strategy = "horizontal",
      layout_config = { prompt_position = "top" },
      sorting_strategy = "ascending",
      winblend = 0,
      mappings = { n = {} },
      initial_mode = "normal",
    },
    pickers = {
      find_files = { initial_mode = "insert" },
      git_files = { initial_mode = "insert" },
      grep_string = { initial_mode = "insert" },
      live_grep = { initial_mode = "insert" },
    },
    extensions = {
      file_browser = {
        path = "%:p:h",
        hijack_netrw = true,
        dir_icon = "@",
        respect_gitignore = true,
        hidden = true,
        grouped = true,
        previewer = true,
      },
    },
  },
  keys = {
    {
      "<leader>fP",
      function()
        require("telescope.builtin").find_files({
          cwd = require("lazy.core.config").options.root,
        })
      end,
      desc = "Find Plugin File",
    },
    {
      "<leader>fs",
      function()
        require("telescope.builtin").registers()
      end,
      desc = "Find Register",
    },
    {
      "<leader>\\",
      function()
        require("telescope.builtin").resume()
      end,
      desc = "Resume the Last Picker",
    },
    {
      "<leader>f\\",
      function()
        require("telescope.builtin").resume()
      end,
      desc = "Resume the Last Picker",
    },
    {
      "<leader>fe",
      function()
        require("telescope").extensions.file_browser.file_browser({
          cwd = vim.fn.expand("%:p:h"),
        })
      end,
      desc = "Open File Browser",
    },
  },
}
