-- 'mason-org/mason.nvim' (a.k.a. "Mason") is a great tool (package manager) for
-- installing external language servers, formatters, and linters. It provides
-- a unified interface for installing, updating, and deleting such programs.
--
-- The caveat is that these programs will be set up to be mostly used inside Neovim.
-- If you need them to work elsewhere, consider using other package managers.
--
-- You can use it like so:

local add, later = MiniDeps.add, MiniDeps.later

-- LSP servers to auto-install (must match names in 21_lsp.lua)
-- Use Mason names (may differ from lspconfig names)
local ensure_installed = {
	"lua-language-server",
	"marksman",
	"json-lsp",
	"yaml-language-server",
	"helm-ls",
	"basedpyright",
	"ruff",
	"gopls",
	"rust-analyzer",
}

later(function()
	add("mason-org/mason.nvim")
	require("mason").setup()

	-- Auto-install missing servers
	local registry = require("mason-registry")
	registry.refresh(function()
		for _, name in ipairs(ensure_installed) do
			local pkg = registry.get_package(name)
			if not pkg:is_installed() then
				pkg:install()
			end
		end
	end)
end)
