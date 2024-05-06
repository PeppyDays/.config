return {}
-- return {
--     "nvim-neo-tree/neo-tree.nvim",
--     branch = "v3.x",
--     dependencies = {
--         "nvim-lua/plenary.nvim",
--         "MunifTanjim/nui.nvim",
--     },
--     config = function()
--         require("neo-tree").setup({
--             sources = { "filesystem", "buffers", "git_status", "document_symbols" },
--             filesystem = {
--                 follow_current_file = { enabled = true },
--                 use_libuv_file_watcher = true,
--             },
--             window = {
--                 mappings = {
--                     ["<space>"] = "none",
--                     ["Y"] = {
--                         function(state)
--                             local node = state.tree:get_node()
--                             local path = node:get_id()
--                             vim.fn.setreg("+", path, "c")
--                         end,
--                         desc = "Copy Path to Clipboard",
--                     },
--                     ["O"] = {
--                         function(state)
--                             require("lazy.util").open(state.tree:get_node().path, { system = true })
--                         end,
--                         desc = "Open with System Application",
--                     },
--                 },
--             },
--             default_component_configs = {
--                 icon = {
--                     folder_closed = "@",
--                     folder_open = "*",
--                     folder_empty = "%",
--                     default = "",
--                     highlight = "NeoTreeFileIcon",
--                 },
--             },
--         })
--
--         vim.keymap.set("n", "<leader>ef", "<cmd>Neotree toggle<cr>", { desc = "Toggle and Go to File Explorer" })
--         vim.keymap.set("n", "<leader>eb", "<cmd>Neotree buffers<cr>", { desc = "Go to Buffer Explorer" })
--         vim.keymap.set("n", "<leader>eg", "<cmd>Neotree git_status<cr>", { desc = "Go to Git Explorer" })
--     end
-- }
