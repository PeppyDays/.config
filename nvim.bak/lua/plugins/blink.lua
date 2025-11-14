return {
  "saghen/blink.cmp",
  dependencies = {
    "mikavilpas/blink-ripgrep.nvim",
    "xzbdmw/colorful-menu.nvim",
  },
  version = "1.*",
  opts = {
    sources = {
      default = {
        "ripgrep",
      },
      providers = {
        ripgrep = {
          module = "blink-ripgrep",
          name = "RG",
          opts = {
            prefix_min_len = 3,
          },
        },
      },
    },
    snippets = {
      preset = "luasnip",
    },
    keymap = {
      preset = "enter",
      ["<C-y>"] = { "select_and_accept" },
      ["<C-p>"] = { "select_prev", "fallback" },
      ["<C-n>"] = { "select_next", "fallback" },
      ["<Tab>"] = {},
      ["<S-Tab>"] = {},
      ["<C-l>"] = { "snippet_forward", "fallback" },
      ["<C-h>"] = { "snippet_backward", "fallback" },
    },
    completion = {
      menu = {
        draw = {
          columns = { { "source_name" }, { "kind_icon" }, { "label", gap = 1 } },
          components = {
            kind_icon = {
              text = function(ctx)
                local kind_icon, _, _ = require("mini.icons").get("lsp", ctx.kind)
                return kind_icon
              end,
              highlight = function(ctx)
                local _, hl, _ = require("mini.icons").get("lsp", ctx.kind)
                return hl
              end,
            },
            kind = {
              highlight = function(ctx)
                local _, hl, _ = require("mini.icons").get("lsp", ctx.kind)
                return hl
              end,
            },
            label = {
              text = function(ctx)
                return require("colorful-menu").blink_components_text(ctx)
              end,
              highlight = function(ctx)
                return require("colorful-menu").blink_components_highlight(ctx)
              end,
            },
          },
        },
      },
      documentation = {
        auto_show = true,
      },
      list = {
        selection = {
          preselect = true,
          auto_insert = false,
        },
      },
    },
  },
}
