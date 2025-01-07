return {
	"loctvl842/monokai-pro.nvim",
	priority = 1000,
	dependencies = "MunifTanjim/nui.nvim",
	config = function()
		require("monokai-pro").setup({
			filter = "spectrum", -- classic | octagon | pro | machine | ristretto | spectrum
			devicons = true,
			override = function(c)
				return {
					Normal = { bg = "#191919", fg = c.base.yellow },
					NeoTreeDirectoryName = { fg = c.base.yellow, bold = true },
				}
			end,
		})
	end,
}
