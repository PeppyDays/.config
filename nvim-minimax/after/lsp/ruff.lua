-- LSP config for ruff (Python linter/formatter)
-- Source: https://docs.astral.sh/ruff/editors/setup/#neovim
return {
  init_options = {
    settings = {
      -- Organize imports on format
      organizeImports = true,
      -- Apply safe fixes automatically
      fixAll = true,
    },
  },
}
