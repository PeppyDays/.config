return {
  {
    "nvim-treesitter/nvim-treesitter",
    event = { "BufReadPre", "BufNewFile" },
    build = ":TSUpdate",
    dependencies = {
      "windwp/nvim-ts-autotag",
      "nvim-treesitter/nvim-treesitter-textobjects",
    },
    config = function()
      local treesitter = require("nvim-treesitter.configs")

      treesitter.setup({
        incremental_selection = {
          enable = false,
          keymaps = {
            scope_incremental = "a",
            node_decremental = "z",
          },
        },
        highlight = { enable = true },
        indent = { enable = true },
        autotag = { enable = false },
        rainbow = { enable = true },
        ensure_installed = {
          "json",
          "yaml",
          "markdown",
          "markdown_inline",
          "lua",
          "gitignore",
          "swift",
          "http",
        },
        auto_install = true,
      })
    end,
  },
}
