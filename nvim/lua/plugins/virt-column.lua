return {
  "lukas-reineke/virt-column.nvim",
  event = "VeryLazy",
  config = function()
    require("virt-column").setup({
      virtcolumn = "120",
    })
  end,
}
