return {
  "mrcjkb/rustaceanvim",
  opts = {
    server = {
      default_settings = {
        ["rust-analyzer"] = {
          check = {
            command = "clippy",
            extraArgs = { "--no-deps" },
          },
          imports = {
            preferPrelude = true,
            granularity = {
              group = "item",
              enforce = true,
            },
            prefix = "crate",
          },
          procMacro = {
            ignored = {
              ["async-trait"] = vim.NIL,
            },
          },
        },
      },
    },
  },
}
