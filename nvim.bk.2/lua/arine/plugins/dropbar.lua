return {
  'Bekaboo/dropbar.nvim',
  -- optional, but required for fuzzy finder support
  opts = {
    icons = {
      enable = false,
      ui = {
        bar = {
          separator = ' ',
        }
      }
    }
  },
  dependencies = {
    'nvim-telescope/telescope-fzf-native.nvim'
  }
}
