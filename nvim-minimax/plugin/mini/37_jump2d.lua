-- Jump within visible lines to pre-defined spots via iterative label filtering.
-- Spots are computed by a configurable spotter function. Example usage:
-- - Lock eyes on desired location to jump
-- - `<CR>` - start jumping; this shows character labels over target spots
-- - Type character that appears over desired location; number of target spots
--   should be reduced
-- - Keep typing labels until target spot is unique to perform the jump
--
-- See also:
-- - `:h MiniJump2d.gen_spotter` - list of available spotters

local later = MiniDeps.later

later(function()
	require("mini.jump2d").setup()
end)
