return {
  "LintaoAmons/scratch.nvim",
  event = "VeryLazy",
  dependencies = {
    { "ibhagwan/fzf-lua" },      --optional: if you want to use fzf-lua to pick scratch file. Recommanded, since it will order the files by modification datetime desc. (require rg)
    { "stevearc/dressing.nvim" } -- optional: to have the same UI shown in the GIF
  },
  keys = {
    { "<leader>sn", "<cmd>Scratch<cr>",     { desc = "Create a new scratch" } },
    { "<leader>so", "<cmd>ScratchOpen<cr>", { desc = "Opens an existing scratch" } },
  },
  config = function()
    require("scratch").setup({
      filetypes = { "swift", "json", "lua", "sh", "md", "txt", "http" }, -- you can simply put filetype here)
      file_picker = "fzflua",
      filetype_details = {                                               -- or, you can have more control here
        swift = {
          content = { "import Foundation", "", "" },
          cursor = {
            location = { 3, 0 },
            insert_mode = true,
          },
        },
      },
      localKeys = {
        {
          filenameContains = { "sh" },
          LocalKeys = {
            {
              cmd = "<CMD>RunShellCurrentLine<CR>",
              key = "<leader>rr",
              modes = { "n", "i", "v" },
            },
          },
        },
        {
          filenameContains = { "lua" },
          LocalKeys = {
            {
              cmd = "<CMD>luafile %<CR>",
              key = "<leader>rr",
              modes = { "n", "i", "v" },
            },
          },
        }
      },
    })
  end,
}
