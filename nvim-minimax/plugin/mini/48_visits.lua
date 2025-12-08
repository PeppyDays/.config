-- Track and reuse file system visits. Every file/directory visit is persistently
-- tracked on disk to later reuse: show in special frecency order, etc. It also
-- supports adding labels to visited paths to quickly navigate between them.
-- Example usage:
-- - `<Leader>fv` - find across all visits
-- - `<Leader>vv` / `<Leader>vV` - add/remove special "core" label to current file
-- - `<Leader>vc` / `<Leader>vC` - show files with "core" label; all or added within
--   current working directory
--
-- See also:
-- - `:h MiniVisits-overview` - overview of how module works
-- - `:h MiniVisits-examples` - examples of common setups

local later = MiniDeps.later

later(function()
  require("mini.visits").setup()
end)
