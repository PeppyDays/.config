return {
  "RRethy/vim-illuminate",
  config = function()
    local illuminate = require("illuminate")

    local function map(key, dir, buffer)
      vim.keymap.set("n", key, function()
        illuminate["goto_" .. dir .. "_reference"]("wrapscan")
      end, { desc = dir:sub(1, 1):upper() .. dir:sub(2) .. " Reference", buffer = buffer })
    end

    -- TODO: This is overrided by other plugins that I don't know .. some fixes are required
    map("]]", "next")
    map("[[", "prev")

    vim.api.nvim_create_autocmd("FileType", {
      callback = function()
        local buffer = vim.api.nvim_get_current_buf()
        map("]]", "next", buffer)
        map("[[", "prev", buffer)
      end,
    })
  end,
}
