return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      codelens = {
        enabled = true,
      },
      showMessage = {
        messageActionItem = {
          additionalPropertiesSupport = true,
        },
      },
      servers = {
        pyright = { enabled = false },
        basedpyright = { enabled = false },
        ty = { enabled = true },
      },
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
