return {
	{
		"xero/evangelion.nvim",
		lazy = false,
		priority = 1000,
		opts = {
			transparent = true,
			aggressive_spell = true,
			overrides = {
				keyword = { fg = "#00ff00", bg = "#222222", undercurl = true },
				["@boolean"] = { link = "Special" },
			},
		},
	},
	{
		"ellisonleao/gruvbox.nvim",
		priority = 1000,
		config = true,
		opts = {
			transparent_mode = true,
		},
	},
	{
		"Mofiqul/dracula.nvim",
		priority = 1000,
		opts = {
			transparent_bg = true,
		},
	},
}
