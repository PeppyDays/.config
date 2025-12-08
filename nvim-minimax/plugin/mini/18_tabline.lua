-- Tabline. Sets `:h 'tabline'` to show all listed buffers in a line at the top.
-- Buffers are ordered as they were created. Navigate with `[b` and `]b`.

local now = MiniDeps.now

now(function()
	require("mini.tabline").setup()
end)
