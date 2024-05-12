return {
  "folke/persistence.nvim",
  keys = {
    { "<leader>qs", false },
    {
      "<leader>qr",
      function()
        require("persistence").load()
      end,
      desc = "Restore Session",
    },
  },
}
