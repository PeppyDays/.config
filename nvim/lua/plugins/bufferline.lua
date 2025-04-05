return {
  "akinsho/bufferline.nvim",
  opts = {
    options = {
      indicator = {
        style = "none",
      },
      modified_icon = icons.git.modified,
      show_buffer_close_icons = false,
      diagnostics_indicator = function(_, _, diag)
        local ret = (diag.error and icons.diagnostic.error or "") .. (diag.warning and icons.diagnostic.warning or "")
        return vim.trim(ret)
      end,
      show_close_icon = false,
    },
  },
}
