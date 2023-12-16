return {
  {
    -- Theme catppuccin/nvim
    -- https://github.com/catppuccin/nvim
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        integrations = {
          cmp = true,
          gitsigns = true,
          nvimtree = true,
          treesitter = true,
          notify = false,
          mini = {
              enabled = true,
              indentscope_color = "",
          },
          mason = true,
          telescope = {
            enabled = true,
          },
        },
      })

      vim.cmd.colorscheme "catppuccin-frappe"
    end,
  },
}
