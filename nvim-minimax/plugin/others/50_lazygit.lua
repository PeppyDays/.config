-- Lazygit integration for Neovim
-- Opens lazygit in a floating terminal window
--
-- Usage:
--   <leader>gg - Open lazygit
--
-- Requires: lazygit installed (brew install lazygit)

local add, later = MiniDeps.add, MiniDeps.later

later(function()
  add("kdheepak/lazygit.nvim")

  vim.keymap.set("n", "<leader>gg", "<cmd>LazyGit<cr>", { desc = "LazyGit" })
end)
