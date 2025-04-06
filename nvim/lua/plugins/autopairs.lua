return {
  "windwp/nvim-autopairs",
  event = "InsertEnter",
  config = function()
    local npairs = require("nvim-autopairs")
    local Rule = require("nvim-autopairs.rule")

    npairs.setup({
      disable_filetype = { "TelescopePrompt", "rust" }, -- don't pair in rust
    })

    npairs.add_rules({
      -- Add single quote pairing, but not enabled in Rust
      Rule("'", "'")
        :with_pair(function(_)
          return vim.bo.filetype ~= "rust"
        end)
        :with_move(function(opts)
          return opts.prev_char:match(".%'") ~= nil
        end)
        :use_key("'"),
      -- Add carot pairing, but not enabled in Go
      Rule("<", ">")
        :with_pair(function()
          return vim.bo.filetype ~= "go"
        end)
        :with_move(function(opts)
          return opts.prev_char:match(".%>") ~= nil
        end)
        :use_key("<"),
    })
  end,
}
