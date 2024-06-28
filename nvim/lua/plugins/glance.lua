return {
  "dnlhc/glance.nvim",
  enabled = true,
  event = "LspAttach",
  config = function()
    local actions = require("glance").actions

    require("glance").setup({
      border = {
        enable = true, -- Show window borders. Only horizontal borders allowed
      },
      winbar = {
        enable = false, -- Available strating from nvim-0.8+
      },
      mappings = {
        list = {
          ["<C-l>"] = actions.enter_win("preview"), -- Focus preview window
          ["V"] = function()
            actions.jump_vsplit()
            local current_win = vim.api.nvim_get_current_win()
            vim.cmd("wincmd l")
            local next_win = vim.api.nvim_get_current_win()
            if current_win == next_win then
              vim.cmd("wincmd h")
              vim.cmd("wincmd h")
              vim.cmd("close")
              vim.cmd("wincmd x")
            else
              vim.cmd("close")
            end
          end,
        },
        preview = {
          ["<C-l>"] = actions.enter_win("list"), -- Focus list window
        },
      },
    })

    vim.api.nvim_create_autocmd("LspAttach", {
      desc = "Set Glance.nvim mappings",
      callback = function(event)
        -- `defer_fn` here because must be set after `on_attach` lsp-config method
        vim.defer_fn(function()
          if vim.api.nvim_buf_is_valid(event.buf) then
            vim.keymap.set("n", "gd", "<Cmd>Glance definitions<Cr>", {
              buffer = event.buf,
              desc = "Glance definitions",
            })
            vim.keymap.set("n", "gi", "<Cmd>Glance implementations<Cr>", {
              buffer = event.buf,
              desc = "Glance implementations",
            })
            vim.keymap.set("n", "gr", "<Cmd>Glance references<Cr>", {
              buffer = event.buf,
              desc = "Glance references",
            })
            vim.keymap.set("n", "go", "<Cmd>Glance type_definitions<Cr>", {
              buffer = event.buf,
              desc = "Glance type definitions",
            })
          end
        end, 100)
      end,
    })
  end,
}
