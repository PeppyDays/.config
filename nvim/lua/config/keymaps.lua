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
vim.keymap.del("n", "<leader>fn")
vim.keymap.del("n", "<leader>wm")
vim.keymap.del("n", "<leader>uZ")

-- move like helix
vim.keymap.set("n", "gh", "0", { desc = "Go to line start" })
vim.keymap.set("n", "gl", "$", { desc = "Go to line end " })
vim.keymap.set("n", "gs", "^", { desc = "Go to first non-blank in line" })

-- exit with jk
-- disabled because of better-escape
-- vim.keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

-- select all
vim.keymap.set("n", "<C-a>", "gg<S-v>G", { desc = "Select all" })

-- new buffer
vim.keymap.set("n", "<leader>bn", "<cmd>enew<cr>", { desc = "New buffer" })

-- code hover
vim.keymap.set("n", "<leader>ck", vim.lsp.buf.hover, { noremap = false, silent = true, desc = "Hover" })

-- window zoom
Snacks.toggle.zoom():map("<leader>wz")
