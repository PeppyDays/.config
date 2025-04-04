return {
  "ibhagwan/fzf-lua",
  dependencies = {
    -- "nvim-tree/nvim-web-devicons",
  },
  config = function()
    -- calling `setup` is optional for customization
    require("fzf-lua").setup(
      {
        "skim",
        keymap = {
          builtin = {
            ["<C-d>"] = "preview-page-down",
            ["<C-u>"] = "preview-page-up",
          }
        },
        files = {
          git_icons = false, -- show git icons?
        },
      }
    )

    -- vim.keymap.set('n', '<leader>fs', "<cmd>FzfLua lsp_live_workspace_symbols<cr>", { desc = "Fuzzy find symbols" })
    -- vim.keymap.set('n', '<leader>ff', "<cmd>FzfLua files<cr>", { desc = "Fuzzy find files" })
    -- vim.keymap.set('n', '<leader>fb', "<cmd>FzfLua buffers<cr>", { desc = "Fuzzy find buffers" })
    -- vim.keymap.set('n', '<leader>fh', "<cmd>FzfLua help_tags<cr>", { desc = "Fuzzy find help tags" })
    -- vim.keymap.set('n', '<leader>fg', "<cmd>FzfLua live_grep<cr>", { desc = "Fuzzy find live grep" })
    -- vim.keymap.set('n', '<leader>fc', "<cmd>FzfLua files cwd=~/.config<cr>", { desc = "Fuzzy find config files" })
    -- vim.keymap.set('n', '<leader>fr', "<cmd>FzfLua resume<cr>", { desc = "Fuzzy find resume" })
  end
}
