return {
  "gbprod/substitute.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local substitute = require("substitute")
    substitute.setup()

    vim.keymap.set("n", "s", substitute.operator, { desc = "Substitute with Motion" })
    vim.keymap.set("x", "s", substitute.visual, { desc = "Substitute in Visual Mode" })
  end,
}
