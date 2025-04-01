return {
  "folke/trouble.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  event = { "BufReadPre", "BufNewFile" },
  keys = {
    { "<leader>td", "<cmd>Trouble diagnostics toggle<cr>", { desc = "Open a Trouble" } },
    { "<leader>tq", "<cmd>Trouble qflist toggle<cr>",      { desc = "Open a Trouble quickfix" } },
  },
  opts = {
  },
  config = function()
    require("trouble").setup {
      action_keys = {             -- key mappings for actions in the trouble list
        open_split = { "<c-s>" }, -- open buffer in new split
      },
      use_lsp_diagnostic_signs = true,
    }

    vim.api.nvim_create_autocmd("User", {
      pattern = { "XcodebuildBuildFinished", "XcodebuildTestsFinished" },
      callback = function(event)
        if event.data.cancelled then
          return
        end

        if event.data.success then
          require("trouble").close()
        elseif not event.data.failedCount or event.data.failedCount > 0 then
          if next(vim.fn.getqflist()) then
            require("trouble").open({ focus = false, mode = "quickfix" })
          else
            require("trouble").close()
          end

          require("trouble").refresh()
        end
      end,
    })
  end,
}
