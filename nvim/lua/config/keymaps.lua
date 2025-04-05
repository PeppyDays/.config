-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- del unused keymaps
vim.keymap.del("n", "<leader>K")
vim.keymap.del("n", "<leader>|")
vim.keymap.del("n", "<leader>-")
vim.keymap.del("n", "<leader>`")
vim.keymap.del("n", "<leader>L")
vim.keymap.del("n", "<leader>S")

-- exit with jk
vim.keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

-- select all
vim.keymap.set("n", "<C-a>", "gg<S-v>G", { desc = "Select all" })
