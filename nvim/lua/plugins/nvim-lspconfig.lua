return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      diagnostics = {
        signs = {
          text = {
            [vim.diagnostic.severity.ERROR] = icons.diagnostic.error,
            [vim.diagnostic.severity.WARN] = icons.diagnostic.warn,
            [vim.diagnostic.severity.INFO] = icons.diagnostic.info,
            [vim.diagnostic.severity.HINT] = icons.diagnostic.hint,
          },
        },
      },
    },
  },
}
