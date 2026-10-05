return {
	{
		"stevearc/conform.nvim",
		event = { "BufWritePre", "BufNewFile" },
		cmd = { "ConformInfo" },
		config = function()
			local conform = require("conform")
			conform.setup({
				formatters_by_ft = {
					xml = { "xmlformatter" },
					lua = { "stylua" },
					c = { "clang-format" },
					rust = { "rustfmt" },
					bash = { "beautysh" },
					assembly = { "asmfmt" },
					html = { "prettier" },
					css = { "prettier" },
					Scss = { "prettier" },
					javascript = { "prettier" },
					php = { "phpcbf" },
				},
				formatters = {
					prettier = {
						prepend_args = function()
							return { "--tab-width", "4" }
						end,
					},
					["clang-format"] = {
						command = "clang-format",
						prepend_args = { "--style=webkit" },
					},
				},
				format_on_save = {
					lsp_format = "fallback",
					timeout_ms = 500,
				},
			})
		end,
	},
}
