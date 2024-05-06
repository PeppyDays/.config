return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
    "WhoIsSethDaniel/mason-tool-installer.nvim",
  },
  config = function()
    require("mason").setup()
    local mason_lspconfig = require("mason-lspconfig")
    local mason_tool_installer = require("mason-tool-installer")

    mason_lspconfig.setup({
      ensure_installed = {
        "dockerls",
        "docker_compose_language_service",
        "golangci_lint_ls",
        "gopls",
        "jsonls",
        "lua_ls",
        "marksman",
        "rust_analyzer",
        "taplo",
        "yamlls",
        "helm_ls",
      },
    })
    mason_tool_installer.setup({
      ensure_installed = {
        "prettier",
        "stylua",
        "golangci-lint",
      },
    })
  end,
}
