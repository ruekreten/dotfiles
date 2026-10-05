return {
	{
		"folke/snacks.nvim",
		priority = 1000,
		lazy = false,
		opts = {
			lazygit = { enabled = true, configure = true },
			indent = { enabled = true },
			scroll = { enabled = true },
			explorer = {
				enabled = false,
			},
		},
	},
}
