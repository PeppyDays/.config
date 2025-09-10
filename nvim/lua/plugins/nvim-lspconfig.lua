return {
  {
    "neovim/nvim-lspconfig",
    opts = {
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
                diagnosticMode = "workspace",
              },
            },
          },
        },
        -- rust-analyzer's configuration is set in rustaceanvim.lua
        -- If not using rustaceanvim anymore, set it here again
        -- rust_analyzer = {
        --   settings = {
        --     ["rust-analyzer"] = {
        --       cargo = {
        --         allFeatures = true,
        --         loadOutDirsFromCheck = true,
        --         buildScripts = {
        --           enable = true,
        --         },
        --       },
        --       check = {
        --         command = "clippy",
        --         extraArgs = { "--no-deps" },
        --       },
        --       checkOnSave = true,
        --       diagnostics = {
        --         enable = true,
        --       },
        --       procMacro = {
        --         enable = true,
        --         ignored = {
        --           ["async-trait"] = { "async_trait" },
        --           ["napi-derive"] = { "napi" },
        --           ["async-recursion"] = { "async_recursion" },
        --         },
        --       },
        --       imports = {
        --         preferPrelude = true,
        --         granularity = {
        --           group = "item",
        --           enforce = true,
        --         },
        --         prefix = "crate",
        --       },
        --       files = {
        --         excludeDirs = {
        --           ".direnv",
        --           ".git",
        --           ".github",
        --           ".gitlab",
        --           "bin",
        --           "node_modules",
        --           "target",
        --           "venv",
        --           ".venv",
        --         },
        --       },
        --     },
        --   },
        -- },
        -- gopls, and LazyVim's default lsp config is the same one
        -- If not using LazyVim, set it here again
        -- gopls = {
        --   settings = {
        --     gopls = {
        --       gofumpt = true,
        --       codelenses = {
        --         gc_details = false,
        --         generate = true,
        --         regenerate_cgo = true,
        --         run_govulncheck = true,
        --         test = true,
        --         tidy = true,
        --         upgrade_dependency = true,
        --         vendor = true,
        --       },
        --       hints = {
        --         assignVariableTypes = true,
        --         compositeLiteralFields = true,
        --         compositeLiteralTypes = true,
        --         constantValues = true,
        --         functionTypeParameters = true,
        --         parameterNames = true,
        --         rangeVariableTypes = true,
        --       },
        --       analyses = {
        --         fieldalignment = true,
        --         nilness = true,
        --         unusedparams = true,
        --         unusedwrite = true,
        --         useany = true,
        --       },
        --       usePlaceholders = true,
        --       completeUnimported = true,
        --       staticcheck = true,
        --       directoryFilters = { "-.git", "-.vscode", "-.idea", "-.vscode-test", "-node_modules", "-.nvim" },
        --       semanticTokens = true,
        --     },
        --   },
        -- },
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
