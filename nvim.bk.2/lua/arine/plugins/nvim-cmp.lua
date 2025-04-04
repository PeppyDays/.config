return {
  "hrsh7th/nvim-cmp",
  enabled = false,
  event = "InsertEnter",
  dependencies = {
    "hrsh7th/cmp-buffer",           -- source for text in buffer
    "hrsh7th/cmp-cmdline",
    "hrsh7th/cmp-path",             -- source for file system paths
    "hrsh7th/cmp-nvim-lsp-signature-help",
    "L3MON4D3/LuaSnip",             -- snippet engine
    "saadparwaiz1/cmp_luasnip",     -- for autocompletion
    "rafamadriz/friendly-snippets", -- useful snippets
    "onsails/lspkind.nvim",         -- vs-code like pictograms
    "rcarriga/cmp-dap",
  },
  config = function()
    local cmp = require("cmp")
    local luasnip = require("luasnip")
    local lspkind = require("lspkind")

    -- loads vscode style snippets from installed plugins (e.g. friendly-snippets)
    require("luasnip.loaders.from_vscode").lazy_load()

    cmp.setup({
      completion = {
        completeopt = "menu,menuone,preview",
      },
      snippet = { -- configure how nvim-cmp interacts with snippet engine
        expand = function(args)
          luasnip.lsp_expand(args.body)
        end,
      },
      mapping = cmp.mapping.preset.insert({
        ["<C-k>"] = cmp.mapping.select_prev_item(), -- previous suggestion
        ["<C-j>"] = cmp.mapping.select_next_item(), -- next suggestion
        ["<C-s>"] = cmp.mapping.complete(),         -- show completion suggestions
        ["<C-e>"] = cmp.mapping.abort(),            -- close completion window
        ["<CR>"] = cmp.mapping.confirm({
          -- behavior = cmp.ConfirmBehavior.Insert,
          select = true,
        }),
        ["<C-l>"] = cmp.mapping(function(fallback)
          if luasnip.expand_or_locally_jumpable() then
            luasnip.expand_or_jump()
          else
            fallback()
          end
        end, { "i", "s" }),

        ["<C-h>"] = cmp.mapping(function(fallback)
          if luasnip.jumpable(-1) then
            luasnip.jump(-1)
          else
            fallback()
          end
        end, { "i", "s" }),
      }),
      -- sources for autocompletion
      window = {
        max_width = 30,
        documentation = cmp.config.window.bordered("rounded"),
      },
      sources = cmp.config.sources({
        { name = "nvim_lsp" },
        { name = "nvim_lsp_signature_help" },
        { name = "luasnip" }, -- snippets
        { name = "buffer" },  -- text within current buffer
        { name = "path" },    -- file system paths
      }),
      formatting = {
        format = lspkind.cmp_format({
          maxwidth = 50,
          ellipsis_char = "...",
        }),
        expandable_indicator = true,
      },
      enabled = function()
        return vim.api.nvim_buf_get_option(0, "buftype") ~= "prompt"
            or require("cmp_dap").is_dap_buffer()
      end,
      -- experimental = {
      -- ghost_text = true,
      -- },
    })

    cmp.setup.cmdline({ "/", "?" }, {
      mapping = cmp.mapping.preset.cmdline({
        ["<C-j>"] = { c = cmp.mapping.select_next_item() },
        ["<C-k>"] = { c = cmp.mapping.select_prev_item() },
      }),
      sources = {
        { name = "buffer" },
      },
    })

    cmp.setup.cmdline(":", {
      mapping = cmp.mapping.preset.cmdline({
        ["<C-j>"] = { c = cmp.mapping.select_next_item() },
        ["<C-k>"] = { c = cmp.mapping.select_prev_item() },
      }),
      sources = cmp.config.sources({
        { name = "path" },
      }, {
        { name = "cmdline" },
      }),
    })

    require("cmp").setup.filetype({ "dap-repl", "dapui_watches", "dapui_hover" }, {
      sources = {
        { name = "dap" },
      },
    })
  end,
}
