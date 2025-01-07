-- Highlight syntax
return {
	"nvim-treesitter/nvim-treesitter",

	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = {
				"go",
				"lua",
				"vim",
				"typescript",
				"javascript",
				"yaml",
				"sql",
				"dockerfile",
				"query",
				"markdown",
				"markdown_inline",
			},
			auto_install = true,
			highlight = {
				enable = true,
			},
		})
	end,
}
