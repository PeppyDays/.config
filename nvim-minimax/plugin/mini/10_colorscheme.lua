-- Enable 'miniwinter' color scheme. It comes with 'mini.nvim' and uses 'mini.hues'.
--
-- See also:
-- - `:h mini.nvim-color-schemes` - list of other color schemes
-- - `:h MiniHues-examples` - how to define highlighting with 'mini.hues'
-- - 'plugin/40_plugins.lua' honorable mentions - other good color schemes

local now = MiniDeps.now

now(function()
	vim.cmd("colorscheme miniwinter")
end)

-- You can try these other 'mini.hues'-based color schemes (uncomment with `gcc`):
-- now(function() vim.cmd('colorscheme minispring') end)
-- now(function() vim.cmd('colorscheme minisummer') end)
-- now(function() vim.cmd('colorscheme miniautumn') end)
-- now(function() vim.cmd('colorscheme randomhue') end)
