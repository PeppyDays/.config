return {
  {
    "echasnovski/mini.splitjoin",
    version = false,
    event = "VeryLazy",
    config = function()
      require("mini.splitjoin").setup({
        mappings = {
          toggle = "sj",
          split = "",
          join = "",
        },
      })
    end
  },
  {
    "echasnovski/mini.move",
    version = false,
    event = "VeryLazy",
    config = function()
      require("mini.move").setup({
        mappings = {
          left = "<A-h>",
          right = "<A-l>",
          down = "<A-j>",
          up = "<A-k>",
          line_left = "<A-h>",
          line_right = "<A-l>",
          line_down = "<A-j>",
          line_up = "<A-k>",
        },
      })
    end
  },
  {
    "echasnovski/mini.ai",
    version = false,
    event = "VeryLazy",
    config = function()
      require("mini.ai").setup()
    end
  },
  -- {
  --   'echasnovski/mini.snippets',
  --   version = false,
  --   dependencies = {
  --     "rafamadriz/friendly-snippets"
  --   },
  --   config = function()
  --     local snippets_gen_loader = require('mini.snippets').gen_loader
  --
  --     require('mini.snippets').setup({
  --       -- snippets = {
  --       -- snippets_gen_loader.from_file('~/.config/nvim/snippets/global.json'),
  --       -- snippets_gen_loader.from_lang(),
  --       -- },
  --     })
  --   end,
  -- }
}
