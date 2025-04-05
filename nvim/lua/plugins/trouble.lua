return {
  "folke/trouble.nvim",
  opts = {
    icons = {
      indent = {
        top = " ",
        middle = " ",
        last = " ",
        fold_open = icons.folder.open .. " ",
        fold_closed = icons.folder.closed .. " ",
        ws = "│  ",
      },
      folder_open = icons.folder.open .. " ",
      folder_closed = icons.folder.closed .. " ",
      kinds = icons.code,
    },
  },
}
