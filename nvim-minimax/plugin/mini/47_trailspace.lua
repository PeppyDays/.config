-- Highlight and remove trailspace. Temporarily stops highlighting in Insert mode
-- to reduce noise when typing. Example usage:
-- - `<Leader>ot` - trim all trailing whitespace in a buffer

local later = MiniDeps.later

later(function()
  require("mini.trailspace").setup()
end)
