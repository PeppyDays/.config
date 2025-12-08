-- Statusline. Sets `:h 'statusline'` to show more info in a line below window.
-- Example usage:
-- - Left most section indicates current mode (text + highlighting).
-- - Second from left section shows "developer info": Git, diff, diagnostics, LSP.
-- - Center section shows the name of displayed buffer.
-- - Second to right section shows more buffer info.
-- - Right most section shows current cursor coordinates and search results.
--
-- See also:
-- - `:h MiniStatusline-example-content` - example of default content. Use it to
--   configure a custom statusline by setting `config.content.active` function.

local later = MiniDeps.later

later(function()
	require("mini.statusline").setup({
		use_icons = false, -- Disable icons to avoid broken Nerd Font glyphs
	})
end)
