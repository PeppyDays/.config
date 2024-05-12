return {
  "crispgm/nvim-go",
  ft = "go",
  config = function()
    require("go").setup({
      auto_lint = true,
      linter = "golangci-lint",
      auto_format = true,
      formatter = "gofumpt",
    })

    vim.keymap.set("n", "<Leader>cge", "<cmd>GoIfErr<cr>", { desc = "Put if clause for error handling" })

    local NvimGo = vim.api.nvim_create_augroup("NvimGo", {
      clear = true,
    })
    vim.api.nvim_create_autocmd({ "User" }, {
      pattern = "NvimGoLintPopupPost",
      group = NvimGo,
      command = "wincmd p",
    })
  end,
}
