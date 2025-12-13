return {
  "folke/snacks.nvim",
  opts = {
    dashboard = {
      preset = {
        header = (function()
          local hour = os.date("*t").hour
          local greeting, emoji
          if hour < 5 then
            greeting, emoji = "Good night", "🌙"
          elseif hour < 12 then
            greeting, emoji = "Good morning", "☀️"
          elseif hour < 17 then
            greeting, emoji = "Good afternoon", "🌤️"
          elseif hour < 21 then
            greeting, emoji = "Good evening", "🌅"
          else
            greeting, emoji = "Good night", "🌙"
          end
          return greeting .. ", Arine " .. emoji
        end)(),
      },
      formats = {},
      sections = {
        { section = "header" },
      },
    },
    explorer = { enabled = false },
    scroll = {
      animate = {
        duration = { step = 15, total = 150 },
        easing = "linear",
      },
    },
    picker = {
      prompt = icons.cmd.prompt .. " ",
      icons = {
        files = {
          dir = icons.folder.closed .. " ",
          dir_open = icons.folder.open .. " ",
        },
        ui = {
          live = "",
        },
        git = icons.git,
        diagnostics = {
          Error = icons.diagnostic.error .. " ",
          Warn = icons.diagnostic.warn .. " ",
          Info = icons.diagnostic.info .. " ",
          Hint = icons.diagnostic.hint .. " ",
        },
        lsp = {
          unavailable = "unavailable ",
          enabled = "enabled ",
          disabled = "disabled ",
          attached = "attached ",
        },
        kinds = icons.code,
      },
    },
    lazygit = {
      configure = false,
    },
  },
  keys = {
    {
      "<leader>'",
      function()
        Snacks.picker.resume()
      end,
      desc = "Resume picker",
    },
    {
      "<leader>f.",
      function()
        Snacks.picker.files({ cwd = vim.fn.expand("%:p:h") })
      end,
      desc = "Find Config File",
    },
    {
      "<leader><space>",
      function()
        Snacks.picker.buffers()
      end,
      desc = "Buffers",
    },
    {
      "<leader>fc",
      function()
        Snacks.picker.git_status()
      end,
      desc = "Find Changed Files",
    },
  },
}
