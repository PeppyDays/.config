-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- Turn off paste mode when leaving insert mode
vim.api.nvim_create_autocmd("InsertLeave", {
  pattern = "*",
  command = "set nopaste",
})

-- Remove auto pairing of single quote
local rust_group = vim.api.nvim_create_augroup("Rust_disable_single_quote", { clear = true })

vim.api.nvim_create_autocmd("FileType", {
  pattern = "rust",
  group = rust_group,
  callback = function()
    if MiniPairs ~= nil then
      MiniPairs.unmap("i", "'", "''")
    end
  end,
  desc = "Disable single quote Rust",
})

vim.api.nvim_create_autocmd("User", {
  pattern = "LazyLoad",
  group = vim.api.nvim_create_augroup("Rust_disable_single_quote_lazyload", { clear = true }),
  callback = function(event)
    if event.data == "mini.pairs" then
      vim.api.nvim_exec_autocmds("FileType", {
        pattern = "rust",
        group = rust_group,
      })
    end
  end,
  desc = "Disable single quote Rust",
})
