return {
  "akinsho/bufferline.nvim",
  opts = {
    options = {
      indicator = {
        style = "none",
      },
      numbers = "buffer_id",
      modified_icon = icons.git.modified,
      always_show_bufferline = false,
      show_close_icon = false,
      show_buffer_close_icons = false,
      left_trunc_marker = "..",
      right_trunc_marker = "..",
      diagnostics_indicator = function(_, _, diag)
        local ret = (diag.error and icons.diagnostic.error or "") .. (diag.warning and icons.diagnostic.warning or "")
        return vim.trim(ret)
      end,
    },
  },
}
