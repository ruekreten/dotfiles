return {
	{
		"nvim-mini/mini.pairs",
		opts = {
			modes = { insert = true, command = true, terminal = false },
			mappings = {
				["<"] = { action = "open", pair = "<>", neigh_pattern = "^[^\\]" },
				[">"] = { action = "close", pair = "<>", neigh_pattern = "^[^\\]" },
			},
			skip_unbalanced = true,
		},
	},
	{ "nvim-mini/mini.icons", version = "*" },
}
