vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.o.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.g.mapleader = " "
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.clipboard = "unnamed"

local options = {
	termguicolors = true,
}

vim.pack.add({
	{ src = "https://github.com/neovim/nvim-lspconfig" },
})

require("config.lazy")

vim.cmd([[colorscheme dracula]])
