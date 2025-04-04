return {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope-fzf-native.nvim",
  },
  config = function()
    local telescope = require("telescope")
    local actions = require("telescope.actions")

    telescope.setup {
      defaults = {
        mappings = {
          i = {
            ["<C-J>"] = actions.move_selection_next,
            ["<C-K>"] = actions.move_selection_previous,
            ["<C-S>"] = actions.select_horizontal,
          },
          n = {
            ["q"] = actions.close,
          }
        },
      },
    }
    telescope.load_extension("fzf")

    -- set keymaps
    local keymap = vim.keymap -- for conciseness

    local _find_files
    _find_files = function(opts, no_ignore)
      opts = opts or {}
      no_ignore = vim.F.if_nil(no_ignore, false)
      opts.attach_mappings = function(_, map)
        map({ "n", "i" }, "<C-h>", function(prompt_bufnr) -- <C-h> to toggle modes
          local prompt = require("telescope.actions.state").get_current_line()
          require("telescope.actions").close(prompt_bufnr)
          no_ignore = not no_ignore
          _find_files({ default_text = prompt }, no_ignore)
        end)
        return true
      end

      if no_ignore then
        opts.no_ignore = true
        opts.hidden = true
        opts.prompt_title = "Find Files <ALL>"
        require("telescope.builtin").find_files(opts)
      else
        opts.prompt_title = "Find Files"
        require("telescope.builtin").find_files(opts)
      end
    end

    local _live_grep
    _live_grep = function(opts, no_ignore)
      opts = opts or {}
      no_ignore = vim.F.if_nil(no_ignore, false)
      opts.attach_mappings = function(_, map)
        map({ "n", "i" }, "<C-h>", function(prompt_bufnr) -- <C-h> to toggle modes
          local prompt = require("telescope.actions.state").get_current_line()
          require("telescope.actions").close(prompt_bufnr)
          no_ignore = not no_ignore
          _live_grep({ default_text = prompt }, no_ignore)
        end)
        return true
      end

      if no_ignore then
        opts.no_ignore = true
        opts.hidden = true
        opts.prompt_title = "Live Grep <All>"
        require("telescope.builtin").live_grep(opts)
      else
        opts.prompt_title = "Live Grep"
        require("telescope.builtin").live_grep(opts)
      end
    end

    local _dynamic_workspace_symbols
    _dynamic_workspace_symbols = function(opts, no_ignore)
      opts = opts or {}
      no_ignore = vim.F.if_nil(no_ignore, false)
      opts.attach_mappings = function(_, map)
        map({ "n", "i" }, "<C-h>", function(prompt_bufnr) -- <C-h> to toggle modes
          local prompt = require("telescope.actions.state").get_current_line()
          require("telescope.actions").close(prompt_bufnr)
          no_ignore = not no_ignore
          _dynamic_workspace_symbols({ default_text = prompt }, no_ignore)
        end)
        return true
      end

      if no_ignore then
        opts.no_ignore = true
        opts.hidden = true
        opts.prompt_title = "LSP Dynamic Workspace Symbols <ALL>"
        require("telescope.builtin").lsp_dynamic_workspace_symbols(opts)
      else
        opts.no_ignore = false
        opts.hidden = false
        opts.prompt_title = "LSP Dynamic Workspace Symbols"
        require("telescope.builtin").lsp_dynamic_workspace_symbols(opts)
      end
    end
    -- keymap.set("n", "<leader>fr", "<cmd>Telescope frecency workspace=CWD<cr>", { desc = "Frecency" })
    -- keymap.set("n", "<leader>ff", _find_files, { desc = "Find files" })
    -- keymap.set("n", "<leader>fc", "<cmd>Telescope find_files cwd=~/.config<cr>", { desc = "Find config files" })
    -- keymap.set("n", "<leader>fg", _live_grep, { desc = "Live grep" })
    -- keymap.set('n', '<leader>fb', "<cmd>Telescope buffers<cr>", { desc = "Fuzzy find buffers" })
    -- keymap.set('n', '<leader>fs', _dynamic_workspace_symbols, { desc = "Fuzzy find symbols" })
    -- keymap.set('n', "<leader>fr", "<cmd>Telescope resume", { desc = "Resume last telescope" })
  end,
}
