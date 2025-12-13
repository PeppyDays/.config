-- Python filetype settings

-- Format on save using ruff LSP (fixAll + format)
vim.api.nvim_create_autocmd("BufWritePre", {
  buffer = 0,
  callback = function()
    -- Apply all fixes (ruff)
    vim.lsp.buf.code_action({
      ---@diagnostic disable-next-line: missing-fields
      context = { options = { only = { "source.fixAll" } } },
      apply = true,
    })
    -- Format (ruff)
    vim.lsp.buf.format({ name = "ruff" })
  end,
})
