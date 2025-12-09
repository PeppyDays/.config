-- Enable 'catppuccin' color scheme with 'frappe' flavor.
--
-- See also:
-- - https://github.com/catppuccin/nvim - catppuccin documentation
-- - `:h catppuccin` - catppuccin help page
-- - `:h mini.nvim-color-schemes` - list of mini.nvim color schemes

local now, add = MiniDeps.now, MiniDeps.add

now(function()
  add("catppuccin/nvim")
  vim.cmd("colorscheme catppuccin-frappe")
end)

-- You can try these other catppuccin flavors (uncomment with `gcc`):
-- now(function() vim.cmd('colorscheme catppuccin-latte') end)  -- light
-- now(function() vim.cmd('colorscheme catppuccin-macchiato') end)
-- now(function() vim.cmd('colorscheme catppuccin-mocha') end)
