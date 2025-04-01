return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    -- "hrsh7th/cmp-nvim-lsp",
    "saghen/blink.cmp",
    { "antosha417/nvim-lsp-file-operations", config = true },
  },
  init = function()
    vim.cmd([[
      autocmd BufRead,BufNewFile *.swiftinterface set filetype=swift
    ]])
  end,
  config = function()
    -- vim.lsp.set_log_level 'debug'
    require("neodev").setup({
      -- add any options here, or leave empty to use the default settings
    })
    local lspconfig = require("lspconfig")
    local capabilities = require('blink.cmp').get_lsp_capabilities();
    local util = require("lspconfig.util")
    -- local cmp_nvim_lsp = require("cmp_nvim_lsp")
    -- local capabilities = cmp_nvim_lsp.default_capabilities()
    local opts = { noremap = true, silent = true }

    -- local function buffer_augroup(group, bufnr, cmds)
    --   vim.api.nvim_create_augroup(group, { clear = false })
    --   vim.api.nvim_clear_autocmds({ group = group, buffer = bufnr })
    --   for _, cmd in ipairs(cmds) do
    --     local event = cmd.event
    --     cmd.event = nil
    --     vim.api.nvim_create_autocmd(event, vim.tbl_extend("keep", { group = group, buffer = bufnr }, cmd))
    --   end
    -- end

    local on_attach = function(client, bufnr)
      local detach = function()
        vim.lsp.buf_detach_client(bufnr, client.id)
      end
      -- buffer_augroup("entropitor:lsp:closing", bufnr, {
      --   { event = "BufDelete", callback = detach },
      -- })
      opts.buffer = bufnr
      -- if client.server_capabilities.inlayHintProvider then
      vim.lsp.inlay_hint.enable(true)
      -- end
      opts.desc = "Show line diagnostics"
      vim.keymap.set("n", "<leader>gd", vim.diagnostic.open_float, opts)

      opts.desc = "Show documentation for what is under cursor"
      vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)

      -- vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
      -- vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
      -- vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
      opts.desc = "Lsp rename"
      vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
      -- vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
      opts.desc = "Lsp code_action"
      vim.keymap.set('n', 'ga', vim.lsp.buf.code_action, opts)
    end


    -- lua
    local runtime_path = vim.split(package.path, ';')
    table.insert(runtime_path, 'lua/?.lua')
    table.insert(runtime_path, 'lua/?/init.lua')
    lspconfig.lua_ls.setup({
      -- For nvim-navic
      -- on_attach = function(client, bufnr)
      --     navic.attach(client, bufnr)
      -- end,
      capabilities = capabilities,
      handlers = handlers,
      on_init = function(client)
        local path = client.workspace_folders[1].name
        if not vim.loop.fs_stat(path .. '/.luarc.json') and not vim.loop.fs_stat(path .. '/.luarc.jsonc') then
          client.config.settings = vim.tbl_deep_extend('force', client.config.settings, {
            Lua = {
              runtime = {
                -- Tell the language server which version of Lua you're using
                -- (most likely LuaJIT in the case of Neovim)
                version = 'LuaJIT',
              },
              -- Make the server aware of Neovim runtime files
              workspace = {
                checkThirdParty = false,
                library = {
                  vim.env.VIMRUNTIME,
                  -- "${3rd}/luv/library"
                  -- "${3rd}/busted/library",
                },
                -- or pull in all of 'runtimepath'. NOTE: this is a lot slower
                -- library = vim.api.nvim_get_runtime_file("", true)
              },
              telemetry = {
                enable = false,
              },
              hint = {
                enable = true,
              },
            },
          })

          client.notify('workspace/didChangeConfiguration', { settings = client.config.settings })
        end
        return true
      end,
    })

    -- JSON
    lspconfig.jsonls.setup({
      capabilities = capabilities,
      handlers = handlers,
      filetypes = { 'json', 'jsonc' },
      init_options = {
        provideFormatter = true,
      },
    })

    -- Protobuf
    lspconfig.buf_ls.setup({
      capabilities = capabilities,
      handlers = handlers,
      cmd = { "buf", "beta", "lsp", "--timeout=0", "--log-format=text" },
      filetypes = { 'proto' },
      root_dir = require('lspconfig.util').root_pattern('buf.yaml', '.git')
    })
  end,
}
