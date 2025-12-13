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
        basedpyright = {
          settings = {
            basedpyright = {
              analysis = {
                autoImportCompletions = true,
                autoSearchPaths = true,
                typeCheckingMode = "standard",
                useLibraryCodeForTypes = true,
                diagnosticMode = "openFilesOnly",
              },
            },
          },
          capabilities = {
            textDocument = {
              codeAction = {
                dynamicRegistration = true,
                isPreferredSupport = true,
                codeActionLiteralSupport = {
                  codeActionKind = {
                    valueSet = {
                      "",
                      "quickfix",
                      "refactor",
                      "refactor.extract",
                      "refactor.inline",
                      "refactor.rewrite",
                      "source",
                      "source.organizeImports",
                      "source.fixAll",
                    },
                  },
                },
              },
            },
          },
        },
        gopls = {
          settings = {
            gopls = {
              staticcheck = false,
            },
          },
        },
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
