return {
  "nvim-telescope/telescope.nvim",
  version = false,
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope-file-browser.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
  },
  config = function(_, opts)
    local telescope = require("telescope")
    local builtin = require("telescope.builtin")
    local file_browser_actions = telescope.extensions.file_browser.actions

    opts.defaults = {
      wrap_results = true,
      layout_strategy = "horizontal",
      layout_config = { prompt_position = "top" },
      sorting_strategy = "ascending",
      winblend = 0,
      mappings = { n = {} },
      initial_mode = "normal",
      -- borderchars = { "─", "│", "─", "│", "┌", "┐", "┘", "└" },
    }
    opts.pickers = {
      find_files = { initial_mode = "insert" },
      git_files = { initial_mode = "insert" },
      grep_string = { initial_mode = "insert" },
      live_grep = { initial_mode = "insert" },
    }
    opts.extensions = {
      file_browser = {
        path = "%:p:h",
        cwd = vim.fn.expand("%:p:h"),
        hijack_netrw = true,
        layout_strategy = "horizontal",
        dir_icon = "@",
        hidden = { file_browser = true, folder_browser = true },
        no_ignore = true,
        grouped = true,
        mappings = {
          ["n"] = {
            ["c"] = false,
            ["a"] = file_browser_actions.create,
            ["g"] = false,
            ["h"] = file_browser_actions.goto_parent_dir,
            ["/"] = function()
              vim.cmd("startinsert")
            end,
          },
          ["i"] = {
            ["<A-c>"] = false,
            ["<A-a>"] = file_browser_actions.create,
            ["<A-g>"] = false,
            ["<A-h>"] = file_browser_actions.goto_parent_dir,
          },
        },
      },
    }

    telescope.setup(opts)
    telescope.load_extension("fzf")
    telescope.load_extension("file_browser")

    vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Find Files in CWD" })
    vim.keymap.set("n", "<leader>fr", builtin.oldfiles, { desc = "Find Recent Files" })
    vim.keymap.set("n", "<leader>f/", builtin.live_grep, { desc = "Grep Given String in CWD" })
    vim.keymap.set("n", "<leader>fc", builtin.grep_string, { desc = "Grep String under Cursor in CWD" })
    vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Open Buffers" })
    vim.keymap.set("n", "<leader>fg", builtin.git_files, { desc = "Find Files in Git" })
    vim.keymap.set("n", "<leader>fj", builtin.jumplist, { desc = "List Jumping Locations" })
    -- vim.keymap.set("n", "<leader>ft", builtin.registers, { desc = "List Registers" })
    vim.keymap.set("n", "<leader>f\\", builtin.resume, { desc = "Resume the Last Picker" })
    vim.keymap.set(
      "n",
      "<leader>fe",
      telescope.extensions.file_browser.file_browser,
      { desc = "Open File Browser with Current Buffer Location" }
    )
  end,
}
