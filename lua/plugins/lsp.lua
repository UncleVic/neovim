return {
	"neovim/nvim-lspconfig",
	config = function()
		local lspconfig = require("lspconfig")
		-- Lua
		lspconfig.lua_ls.setup({
			runtime = {
				-- Tell the language server which version of Lua you're using
				-- (most likely LuaJIT in the case of Neovim)
				version = "LuaJIT",
			},
			settings = {
				Lua = {
					diagnostics = {
						-- Get the language server to recognize the `vim` global
						globals = { "vim" },
					},
				},
			},
			workspace = {
				-- Make the server aware of Neovim runtime files
				library = vim.api.nvim_get_runtime_file("", true),
			},
			-- Do not send telemetry data containing a randomized but unique identifier
			telemetry = {
				enable = false,
			},
		})
		-- Go
		lspconfig.gopls.setup({})
		lspconfig.golangci_lint_ls.setup({})
		lspconfig.buf_ls.setup({})
		-- SQL
		lspconfig.sqlls.setup({})
	end,
}
