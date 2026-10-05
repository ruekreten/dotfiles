return {
    vim.lsp.config("cssls", {
        cmd = { "vscode-css-language-server", "--stdio" },
        filetypes = { "css", "scss", "less" },
    }),

    vim.lsp.config("termux_language_server", {
        cmd = { "termux-language-server" },
        filetypes = { "ebuild", "eclass", "make.conf", "color.map" },
    }),

    vim.lsp.config("lua_ls", {
        cmd = { "lua-language-server" },
        filetypes = { "lua" },
    }),

    vim.lsp.config("asm_lsp", {
        cmd = { "asm-lsp" },
        filetypes = { "asm" },
    }),

    vim.lsp.config("rust-analyzer", {
        cmd = { "rust-analyzer" },
        filetypes = { "rust" },
    }),

    vim.lsp.config("clangd", {
        cmd = { "clangd", "--background-index" },
        filetypes = { "c", "cpp" },
    }),

    vim.lsp.config("bashls", {
        cmd = { "bash-language-server", "start" },
        filetypes = { "bash", "sh" },
    }),

    vim.lsp.enable({
        "lua_ls",
        "bashls",
        "clangd",
        "asm_lsp",
        "rust-analyzer",
        "cssls",
        "termux_language_server"
    }),
}
