return {
  "saghen/blink.cmp",
  opts = {
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
