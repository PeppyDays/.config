-- Jump to next/previous single character. It implements "smarter `fFtT` keys"
-- (see `:h f`) that work across multiple lines, start "jumping mode", and
-- highlight all target matches. Example usage:
-- - `fxff` - move *f*orward onto next character "x", then next, and next again
-- - `dt)` - *d*elete *t*ill next closing parenthesis (`)`)

local later = MiniDeps.later

later(function()
  require("mini.jump").setup()
end)
