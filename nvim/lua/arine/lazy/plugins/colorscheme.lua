return {
  {
    -- Theme catppuccin/nvim
    -- https://github.com/catppuccin/nvim
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      vim.cmd.colorscheme 'catppuccin-frappe'
    end,
  },
}
