return {
  "nvim-treesitter/nvim-treesitter",
  version = false,
  event = { "BufReadPre", "BufNewFile" },
  build = ":TSUpdate",
  cmd = { "TSUpdateSync", "TSUpdate", "TSInstall" },
  keys = {
    { "<c-space>", desc = "Increment Selection" },
    { "<bs>", desc = "Decrement Selection", mode = "x" },
  },
  opts = {
    highlight = { enabler = true },
    indent = { enable = true },
    ensure_installed = {
      "bash",
      "diff",
      "gitignore",
      "regex",
      "markdown",
      "markdown_inline",
      "json",
      "toml",
      "yaml",
      "dockerfile",
      "lua",
      "query",
      "rust",
      "go",
      "gomod",
      "gowork",
      "gosum",
    },
    incremental_selection = {
      enable = true,
      keymaps = {
        init_selection = "<C-space>",
        node_incremental = "<C-space>",
        scope_incremental = false,
        node_decremental = "<bs>",
      },
    },
    textobjects = {
      move = {
        enable = true,
        goto_next_start = { ["]f"] = "@function.outer", ["]c"] = "@class.outer" },
        goto_next_end = { ["]F"] = "@function.outer", ["]C"] = "@class.outer" },
        goto_previous_start = { ["[f"] = "@function.outer", ["[c"] = "@class.outer" },
        goto_previous_end = { ["[F"] = "@function.outer", ["[C"] = "@class.outer" },
      },
    },
  },
  config = function(_, opts)
    require("nvim-treesitter.configs").setup(opts)
  end,
}
