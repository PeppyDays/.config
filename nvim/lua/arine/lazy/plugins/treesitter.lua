return {
	{
	  "nvim-treesitter/nvim-treesitter",
	  event = { "BufReadPre", "BufNewFile" },
	  build = ":TSUpdate",
	  dependencies = {
	    "nvim-treesitter/nvim-treesitter-textobjects",
	    "windwp/nvim-ts-autotag",
	  },
	  config = function()
	    -- import nvim-treesitter plugin
	    local treesitter = require("nvim-treesitter.configs")

	    -- configure treesitter
	    treesitter.setup({
	      -- enable syntax highlighting
	      highlight = {
	        enable = true,
	      },
	      -- enable indentation
	      indent = { enable = true },
	      -- enable autotagging (w/ nvim-ts-autotag plugin)
	      autotag = {
	        enable = true,
	      },
	      -- ensure these language parsers are installed
	      ensure_installed = {
	        "json",
	        "javascript",
	        "typescript",
	        "tsx",
	        "html",
	        "markdown",
	        "markdown_inline",
	        "bash",
	        "lua",
	        "vim",
	        "vimdoc",
	        "dockerfile",
	        "gitignore",
	        "query",
				  "yaml",
				  "rust",
				  "python",
	      },
			  auto_install = true,
	      incremental_selection = {
	        enable = true,
	        keymaps = {
	          init_selection = '<c-space>',
	          node_incremental = '<c-space>',
	          scope_incremental = '<c-s>',
	          node_decremental = '<M-space>',
	        },
	      },
			  textobjects = {
	        select = {
	          enable = true,
	          lookahead = true, -- Automatically jump forward to textobj, similar to targets.vim
	          keymaps = {
	            -- You can use the capture groups defined in textobjects.scm
	            ['aa'] = '@parameter.outer',
	            ['ia'] = '@parameter.inner',
	            ['af'] = '@function.outer',
	            ['if'] = '@function.inner',
	            ['ac'] = '@class.outer',
	            ['ic'] = '@class.inner',
	          },
	        },
	        move = {
	          enable = true,
	          set_jumps = true, -- whether to set jumps in the jumplist
	          goto_next_start = {
	            [']m'] = '@function.outer',
	            [']]'] = '@class.outer',
	          },
	          goto_next_end = {
	            [']M'] = '@function.outer',
	            [']['] = '@class.outer',
	          },
	          goto_previous_start = {
	            ['[m'] = '@function.outer',
	            ['[['] = '@class.outer',
	          },
	          goto_previous_end = {
	            ['[M'] = '@function.outer',
	            ['[]'] = '@class.outer',
	          },
	        },
	        swap = {
	          enable = true,
	          swap_next = {
	            ['<leader>a'] = '@parameter.inner',
	          },
	          swap_previous = {
	            ['<leader>A'] = '@parameter.inner',
	          },
	        },
			  },
	    })
	  end,
	},
}
