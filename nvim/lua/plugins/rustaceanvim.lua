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
            },
            prefix = "crate",
          },
        },
      },
    },
  },
}
