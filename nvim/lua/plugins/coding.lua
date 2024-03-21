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
  {
    "https://github.com/apple/pkl-neovim",
    lazy = true,
    event = "BufReadPre *.pkl",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
    },
    build = function()
      vim.cmd("TSInstall! pkl")
    end,
  },
  -- inlay hint is enabled from neovim >= 0.10
  -- enable it after upgrade
  -- reference https://vinnymeller.com/posts/neovim_nightly_inlay_hints/
  {
    "mrcjkb/rustaceanvim",
    version = "^3",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "mfussenegger/nvim-dap",
      {
        "lvimuser/lsp-inlayhints.nvim",
        opts = {},
      },
    },
    ft = { "rust" },
    config = function()
      vim.g.rustaceanvim = {
        inlay_hints = {
          highlight = "NonText",
        },
        tools = {
          hover_actions = {
            auto_focus = true,
          },
        },
        server = {
          on_attach = function(client, bufnr)
            require("lsp-inlayhints").on_attach(client, bufnr)
          end,
        },
      }
    end,
  },
}
