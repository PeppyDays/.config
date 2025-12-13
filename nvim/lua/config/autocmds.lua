-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

-- Remove auto comment on new line
vim.cmd("autocmd BufEnter * set formatoptions-=cro")
vim.cmd("autocmd BufEnter * setlocal formatoptions-=cro")

-- Autocommand group for filetype-specific settings
vim.api.nvim_create_augroup("SetIndent", { clear = true })

-- Set tab width to 2 for Yaml, Json, Markdown, Lua, JavaScript, and TypeScript files
vim.api.nvim_create_autocmd("FileType", {
  group = "SetIndent",
  pattern = { "yaml", "json", "markdown", "lua", "javascript", "typescript", "javascriptreact", "typescriptreact" },
  callback = function()
    vim.opt_local.tabstop = 2
    vim.opt_local.shiftwidth = 2
    vim.opt_local.expandtab = true
  end,
})

-- Disable single quote paring in Rust
vim.api.nvim_create_autocmd("FileType", {
  pattern = "lua",
  group = vim.api.nvim_create_augroup("Rust_disable_single_quote", { clear = true }),
  callback = function()
    MiniPairs.unmap("i", "'", "''")
  end,
  desc = "Disable single quote Rust",
})

-- Python: Format on save using ruff LSP (fixAll + format)
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*.py",
  group = vim.api.nvim_create_augroup("PythonFormat", { clear = true }),
  callback = function()
    vim.lsp.buf.code_action({
      context = { only = { "source.fixAll" } },
      apply = true,
    })
    vim.lsp.buf.format({ name = "ruff" })
  end,
  desc = "Format Python with ruff",
})
