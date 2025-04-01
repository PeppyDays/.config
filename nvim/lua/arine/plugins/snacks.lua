return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  opts = {
    words = { enabled = true },
    bigfile = { enabled = true },
    input = {},
    explorer = {
      replace_netrw = true
    },
    picker = {},
    notifier = {},
    indent = {
      animate = {
        duration = {
          total = 300
        }
      }
    },
  },
  keys = {
    { "<leader>e",  function() Snacks.explorer() end,                                       desc = "Explorer" },
    { "<leader>fb", function() Snacks.picker.buffers() end,                                 desc = "Buffers" },
    { "<leader>fc", function() Snacks.picker.files({ cwd = vim.fn.stdpath("config") }) end, desc = "Find Config File" },
    { "<leader>ff", function() Snacks.picker.files() end,                                   desc = "Find Files" },
    { "<leader>fg", function() Snacks.picker.grep() end,                                    desc = "Grep" },
    { "<leader>fr", function() Snacks.picker.resume() end,                                  desc = "Resume" },
    { "<leader>fh", function() Snacks.picker.help() end,                                    desc = "Help Pages" },
    { "<leader>gf", function() Snacks.lazygit.log_file() end,                               desc = "Lazygit Current File History" },
    { "<leader>lg", function() Snacks.lazygit() end,                                        desc = "Lazygit" },
    { "<leader>gl", function() Snacks.lazygit.log() end,                                    desc = "Lazygit Log (cwd)" },
    { "<leader>fs", function() Snacks.picker.lsp_workspace_symbols() end,                   desc = "Find Symbols" },
    -- { "<leader>fF", function() enhanced_picker(Snacks.picker.files) end,                    desc = "Find Files with Selection" },
    -- { "<leader>fG", function() enhanced_picker(Snacks.picker.grep) end,                     desc = "Grep with Selection" },
    -- { "<leader>fS", function() enhanced_picker(Snacks.picker.lsp_workspace_symbols) end,    desc = "Find Symbols with Selection" },
    { "]]",         function() Snacks.words.jump(vim.v.count1) end,                         desc = "Next Reference",                           mode = { "n", "t" } },
    { "[[",         function() Snacks.words.jump(-vim.v.count1) end,                        desc = "Prev Reference",                           mode = { "n", "t" } },

    { "gd",         function() Snacks.picker.lsp_definitions() end,                         desc = "Goto Definition" },
    { "gD",         function() Snacks.picker.lsp_declarations() end,                        desc = "Goto Declaration" },
    { "gr",         function() Snacks.picker.lsp_references() end,                          nowait = true,                                     desc = "References" },
    { "gi",         function() Snacks.picker.lsp_implementations() end,                     desc = "Goto Implementation" },
    { "gy",         function() Snacks.picker.lsp_type_definitions() end,                    desc = "Goto T[y]pe Definition" },

    { "<leader>bx", function() Snacks.bufdelete.other() end,                                desc = "Delete all buffers except the current one" },
    { "<A-x>",      function() Snacks.bufdelete() end,                                      desc = "Delete buffer" }
  }
}
