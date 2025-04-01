local function is_dap_buffer()
  return require("cmp_dap").is_dap_buffer()
end

return {
  {
    'saghen/blink.compat',
    -- use the latest release, via version = '*', if you also use the latest release for blink.cmp
    version = '*',
    -- lazy.nvim will automatically load the plugin when it's required by blink.cmp
    lazy = true,
    -- make sure to set opts so that lazy.nvim calls blink.compat's setup
    opts = {},
  },
  {
    'saghen/blink.cmp',
    lazy = false, -- lazy loading handled internally
    dependencies = {
      { 'L3MON4D3/LuaSnip', version = 'v2.*' },
      'rafamadriz/friendly-snippets',
      "rcarriga/cmp-dap"
    },
    -- use a release tag to download pre-built binaries
    -- version = 'v0.*',
    -- OR build from source, requires nightly: https://rust-lang.github.io/rustup/concepts/channels.html#working-with-nightly-rust
    build = 'cargo build --release',
    -- On musl libc based systems you need to add this flag
    -- build = 'RUSTFLAGS="-C target-feature=-crt-static" cargo build --release',
    opts = {
      snippets = { preset = 'luasnip' },
      keymap = {
        preset = "enter",
        ['<C-s>'] = { 'show', 'show_documentation', 'hide_documentation' },
        ['<C-k>'] = { 'select_prev', 'fallback' },
        ['<C-j>'] = { 'select_next', 'fallback' },
        ['<Tab>'] = {},
        ['<S-Tab>'] = {},
        ['<C-l>'] = { 'snippet_forward', 'fallback' },
        ['<C-h>'] = { 'snippet_backward', 'fallback' },
      },
      enabled = function()
        return vim.bo.buftype ~= "prompt" or is_dap_buffer()
      end,
      sources = {
        default = function(_)
          if is_dap_buffer() then
            return { "dap", "snippets", "buffer" }
          else
            return { "lsp", "path", "snippets", "buffer" }
          end
        end,
        providers = {
          dap = { name = "dap", module = "blink.compat.source" },
        },
      },
      completion = {
        documentation = {
          auto_show = true,
        },
        list = {
          selection = {
            preselect = true,
            auto_insert = false,
          }
        },
      }
    },
  }
}
