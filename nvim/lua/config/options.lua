-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- line numbers
vim.opt.relativenumber = true
vim.opt.number = true

-- tabs and indentation
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.wrap = false

-- vertical line
vim.opt.colorcolumn = "120"

-- Disable snacks animation
vim.g.snacks_animate = false

vim.g.lazyvim_blink_main = true

-- Modify folding characters to ascii-compatible
vim.opt.fillchars:append({
  foldclose = ">",
})
