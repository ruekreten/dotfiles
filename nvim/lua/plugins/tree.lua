return {
	"nvim-tree/nvim-tree.lua",
	version = "*",
	lazy = false,
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		require("nvim-tree").setup({})
		local api = require("nvim-tree.api")
		local function opts(desc)
			return { desc = desc, noremap = true, silent = true, nowait = true }
		end
		vim.keymap.set("n", "<leader>f", api.tree.open, opts("Focus tree"))
		vim.keymap.set("n", "<leader>t", api.tree.toggle, opts("Toggle tree"))
	end,
}
