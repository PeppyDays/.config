return {
  "akinsho/bufferline.nvim",
  opts = {
    options = {
      indicator = {
        style = "none",
      },
      modified_icon = "*",
      show_buffer_close_icons = false,
      diagnostics_indicator = function(_, _, diag)
        local ret = (diag.error and "e " .. diag.error .. " " or "") .. (diag.warning and "w " .. diag.warning or "")
        return vim.trim(ret)
      end,
      show_close_icon = false,
    },
  },
}
