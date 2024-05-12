return {
  "folke/trouble.nvim",
  branch = "dev",
  cmd = { "TroubleToggle", "Trouble" },
  dependencies = { "folke/todo-comments.nvim" },
  opts = {
    modes = {
      diagnostics_with_preview = {
        mode = "diagnostics",
        preview = {
          type = "split",
          relative = "win",
          position = "right",
          size = 0.3,
        },
        filter = {
          any = {
            buf = 0,
            {
              severity = vim.diagnostic.severity.ERROR,
              function(item)
                return item.filename:find((vim.loop or vim.uv).cwd(), 1, true)
              end,
            },
          },
        },
      },
    },
  },
  icons = false,
  keys = {
    { "<leader>xb", "<cmd>Trouble diagnostics toggle filter.buf=0<cr>", desc = "List Diagnostics in Buffer" },
    { "<leader>xw", "<cmd>Trouble diagnostics_with_preview<cr>", desc = "List Diagnostics in Workspace" },
    { "<leader>cs", "<cmd>Trouble symbols toggle focus=false<cr>", desc = "List Symbols" },
    { "<leader>xl", "<cmd>Trouble loclist toggle<cr>", desc = "List Locations" },
    { "<leader>xq", "<cmd>Trouble qflist toggle<cr>", desc = "List Quickfixs" },
    { "<leader>xt", "<cmd>Trouble todo<cr>", desc = "List TODOs" },
  },
}
