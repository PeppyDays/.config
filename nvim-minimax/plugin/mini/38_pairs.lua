-- Autopairs functionality. Insert pair when typing opening character and go over
-- right character if it is already to cursor's right. Also provides mappings for
-- `<CR>` and `<BS>` to perform extra actions when inside pair.
-- Example usage in Insert mode:
-- - `(` - insert "()" and put cursor between them
-- - `)` when there is ")" to the right - jump over ")" without inserting new one
-- - `<C-v>(` - always insert a single "(" literally. This is useful since
--   'mini.pairs' doesn't provide particularly smart behavior, like auto balancing
--
-- NOTE: This module must load before mini.keymap which uses minipairs_* actions.

local later = MiniDeps.later

later(function()
  -- Create pairs not only in Insert, but also in Command line mode
  require("mini.pairs").setup({ modes = { command = true } })
end)
