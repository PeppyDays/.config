return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  config = function()
    require("catppuccin").setup({
      flavour = "frappe",
      show_end_of_buffer = true,
      integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        notify = true,
        mini = {
          enabled = true,
          indentscope_color = "",
        },
        hop = true,
        mason = true,
        which_key = true,
        neotest = true,
        neotree = true,
        telescope = true,
        treesitter = true,
        treesitter_context = true,
      },
    })
    vim.cmd("colorscheme catppuccin")
  end,
}
