-- Statusline with lualine. Sets `:h 'statusline'` with a feature-rich line.
--
-- Layout:
-- - Section A (left): Current mode
-- - Section B: Git branch
-- - Section C: Diagnostics (error/warn/info/hint), filetype icon, filename
-- - Section X (right): Git diff (added/modified/removed)
-- - Section Y: Progress percentage, cursor location (line:column)
-- - Section Z: Empty
--
-- Features:
-- - Auto theme detection based on colorscheme
-- - ASCII icons from global Icons table (no Nerd Fonts required)
-- - Git diff integration with mini.diff (vim.b.minidiff_summary)
-- - Statusline hidden on ministarter page until loaded
--
-- See `:h lualine.txt` for more configuration options.

local now, later = MiniDeps.now, MiniDeps.later

now(function()
  -- Save laststatus for later restoration
  vim.g.lualine_laststatus = vim.o.laststatus
  if vim.fn.argc(-1) > 0 then
    -- Set an empty statusline till lualine loads
    vim.o.statusline = " "
  else
    -- Hide the statusline on the starter page
    vim.o.laststatus = 0
  end
end)

later(function()
  MiniDeps.add({ source = "nvim-lualine/lualine.nvim" })

  -- Restore laststatus
  vim.o.laststatus = vim.g.lualine_laststatus

  -- Show pending keys in statusline (enables %S)
  vim.o.showcmdloc = "statusline"

  require("lualine").setup({
    options = {
      theme = "auto",
      icons_enabled = false,
      component_separators = "",
      section_separators = "",
      globalstatus = vim.o.laststatus == 3,
      disabled_filetypes = { statusline = { "ministarter" } },
    },
    sections = {
      lualine_a = { "mode" },
      lualine_b = {
        { "branch" },
      },
      lualine_c = {
        {
          "diff",
          symbols = {
            added = Icons.git.added,
            modified = Icons.git.modified,
            removed = Icons.git.deleted,
          },
          source = function()
            local summary = vim.b.minidiff_summary
            if summary then
              return {
                added = summary.add,
                modified = summary.change,
                removed = summary.delete,
              }
            end
          end,
        },
        { "filename", path = 1 },
      },
      lualine_x = {
        {
          "diagnostics",
          symbols = {
            error = Icons.diagnostic.error,
            warn = Icons.diagnostic.warn,
            info = Icons.diagnostic.info,
            hint = Icons.diagnostic.hint,
          },
        },
      },
      lualine_y = {
        { "progress", separator = " ", padding = { left = 1, right = 0 } },
        { "location", padding = { left = 0, right = 1 } },
      },
      lualine_z = {},
    },
    extensions = {},
  })
end)
