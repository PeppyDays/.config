return {
  "rcarriga/nvim-notify",
  event = "VeryLazy",
  opts = function()
    require("notify").setup({
      -- Icons for the different levels
      icons = {
        ERROR = "",
        WARN = "",
        INFO = "",
        DEBUG = "",
        TRACE = "✎",
      },
      timeout = 500,
      render = "minimal",
      background_colour = "#000000",
    })

  end,
}
