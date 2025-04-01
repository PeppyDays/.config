-- del unused keymaps
vim.keymap.del("n", "<leader>K")
vim.keymap.del("n", "<leader>-")
vim.keymap.del("n", "<leader>`")
vim.keymap.del("n", "<leader>L")

-- exit with jk
vim.keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

-- select all
vim.keymap.set("n", "<C-a>", "gg<S-v>G", { desc = "Select all" })

-- windows
vim.keymap.set("n", "<leader>wd", "<C-W>c", { desc = "Delete window", remap = true })
vim.keymap.set("n", "<leader>w_", "<C-W>s", { desc = "Split window below", remap = true })
vim.keymap.set("n", "<leader>w|", "<C-W>v", { desc = "Split window right", remap = true })
vim.keymap.set("n", "<leader>_", "<C-W>s", { desc = "Split window below", remap = true })
vim.keymap.set("n", "<leader>|", "<C-W>v", { desc = "Split window right", remap = true })

-- move to window using the <ctrl> hjkl keys
-- vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Go to the left window", remap = true })
-- vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Go to the down window", remap = true })
-- vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Go to the up window", remap = true })
-- vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Go to the right Window", remap = true })

-- resize window using <alt> arrow keys
vim.keymap.set("n", "<A-Up>", "<cmd>resize +2<cr>", { desc = "Increase Window Height" })
vim.keymap.set("n", "<A-Down>", "<cmd>resize -2<cr>", { desc = "Decrease Window Height" })
vim.keymap.set("n", "<A-Left>", "<cmd>vertical resize -2<cr>", { desc = "Decrease Window Width" })
vim.keymap.set("n", "<A-Right>", "<cmd>vertical resize +2<cr>", { desc = "Increase Window Width" })

-- move Lines
-- vim.keymap.set("n", "<A-j>", "<cmd>m .+1<cr>==", { desc = "Move Down" })
-- vim.keymap.set("n", "<A-k>", "<cmd>m .-2<cr>==", { desc = "Move Up" })
-- vim.keymap.set("i", "<A-j>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move Down" })
-- vim.keymap.set("i", "<A-k>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move Up" })
-- vim.keymap.set("v", "<A-j>", ":m '>+1<cr>gv=gv", { desc = "Move Down" })
-- vim.keymap.set("v", "<A-k>", ":m '<-2<cr>gv=gv", { desc = "Move Up" })

-- buffers
-- vim.keymap.set("n", "[b", "<cmd>bprevious<cr>", { desc = "Prev Buffer" })
-- vim.keymap.set("n", "]b", "<cmd>bnext<cr>", { desc = "Next Buffer" })

-- clear search with <esc>
-- vim.keymap.set("n", "<leader>ch", "<cmd>noh<cr><esc>", { desc = "Escape and Clear hlsearch" })

-- quit
-- vim.keymap.set("n", "<leader>qq", "<cmd>qa<cr>", { desc = "Quit All" })
