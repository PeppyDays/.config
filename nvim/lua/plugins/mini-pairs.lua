return {
  "echasnovski/mini.pairs",
  opts = {
    mappings = {
      ["`"] = { action = "closeopen", pair = "``", neigh_pattern = "[^\\`].", register = { cr = false } },
      ["<"] = { action = "open", pair = "<>", neigh_pattern = "[^\\]." },
      [">"] = { action = "close", pair = "<>", neigh_pattern = "[^\\]." },
    },
  },
  config = function(_, opts)
    require("mini.pairs").setup(opts)

    -- Remove auto pairing of single quote in Rust
    local rust_group = vim.api.nvim_create_augroup("Rust_disable_single_quote", { clear = true })

    vim.api.nvim_create_autocmd("FileType", {
      pattern = "rust",
      group = rust_group,
      callback = function()
        if MiniPairs ~= nil then
          MiniPairs.unmap("i", "'", "''")
        end
      end,
      desc = "Disable single quote Rust",
    })

    vim.api.nvim_create_autocmd("User", {
      pattern = "LazyLoad",
      group = vim.api.nvim_create_augroup("Rust_disable_single_quote_lazyload", { clear = true }),
      callback = function(event)
        if event.data == "mini.pairs" then
          vim.api.nvim_exec_autocmds("FileType", {
            pattern = "rust",
            group = rust_group,
          })
        end
      end,
      desc = "Disable single quote Rust",
    })

    local go_group = vim.api.nvim_create_augroup("Go_disable_single_caret", { clear = true })

    vim.api.nvim_create_autocmd("FileType", {
      pattern = "go",
      group = go_group,
      callback = function()
        if MiniPairs ~= nil then
          MiniPairs.unmap("i", "<", "<>")
        end
      end,
      desc = "Disable single caret Go",
    })

    vim.api.nvim_create_autocmd("User", {
      pattern = "LazyLoad",
      group = vim.api.nvim_create_augroup("Go_disable_single_caret_lazyload", { clear = true }),
      callback = function(event)
        if event.data == "mini.pairs" then
          vim.api.nvim_exec_autocmds("FileType", {
            pattern = "go",
            group = go_group,
          })
        end
      end,
      desc = "Disable single caret Go",
    })
  end,
}
