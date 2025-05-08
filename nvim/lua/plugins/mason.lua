-- TODO: Remove this after LazyVim supports Mason v2, check https://github.com/LazyVim/LazyVim/issues/6039
return {
  {
    "mason-org/mason.nvim",
    version = "^1.0.0",
    opts = {
      ensure_installed = {
        "prettier",
      },
    },
  },
  {
    "mason-org/mason-lspconfig.nvim",
    version = "^1.0.0",
  },
}
