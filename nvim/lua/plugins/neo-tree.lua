return {
  "nvim-neo-tree/neo-tree.nvim",
  keys = {
    { "<leader>e", false },
    { "<leader>E", false },
  },
  opts = {
    filesystem = {
      filtered_items = {
        hide_dotfiles = false,
        never_show = {
          ".DS_Store",
        },
      },
      window = {
        mappings = {
          ["<cr>"] = "open_with_window_picker",
        },
      },
    },
    buffer = {
      window = {
        mappings = {
          ["<cr>"] = "open_with_window_picker",
        },
      },
    },
    window = {
      window = {
        mappings = {
          ["<cr>"] = "open_with_window_picker",
        },
      },
    },
    default_component_configs = {
      indent = {
        expander_collapsed = "",
        expander_expanded = "",
      },
      icon = {
        folder_closed = icons.folder.closed,
        folder_open = icons.folder.open,
        folder_empty = icons.folder.empty,
      },
      git_status = {
        symbols = {
          added = icons.git.added,
          modified = icons.git.modified,
          deleted = icons.git.deleted,
          renamed = icons.git.renamed,
          untracked = icons.git.untracked,
          ignored = icons.git.ignored,
          unstaged = icons.git.unstaged,
          staged = icons.git.staged,
          conflict = icons.git.conflict,
        },
      },
    },
  },
}
