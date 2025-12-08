-- Move any selection in any direction. Example usage in Normal mode:
-- - `<M-j>`/`<M-k>` - move current line down / up
-- - `<M-h>`/`<M-l>` - decrease / increase indent of current line
--
-- Example usage in Visual mode:
-- - `<M-h>`/`<M-j>`/`<M-k>`/`<M-l>` - move selection left/down/up/right

local later = MiniDeps.later

later(function()
	require("mini.move").setup()
end)
