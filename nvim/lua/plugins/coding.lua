return {
  -- LSP config
  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = { enabled = true },
      yamlls = {
        settings = {
          yaml = {
            keyOrdering = false,
          },
        },
      },
    },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    build = function(_)
      vim.cmd("TSUpdate")
    end,
  },
}
