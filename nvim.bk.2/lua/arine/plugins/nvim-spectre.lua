return {
  "nvim-pack/nvim-spectre",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  config = function()
    require("spectre").setup()
    vim.keymap.set('n', '<leader>spp', '<cmd>lua require("spectre").toggle()<CR>', {
      desc = "Toggle Spectre"
    })
    vim.keymap.set('n', '<leader>spw', '<cmd>lua require("spectre").open_visual({select_word=true})<CR>', {
      desc = "Search current word"
    })
    vim.keymap.set('v', '<leader>spw', '<esc><cmd>lua require("spectre").open_visual()<CR>', {
      desc = "Search current word"
    })
    vim.keymap.set('n', '<leader>spf', '<cmd>lua require("spectre").open_file_search({select_word=true})<CR>', {
      desc = "Search on current file"
    })
  end,
}
