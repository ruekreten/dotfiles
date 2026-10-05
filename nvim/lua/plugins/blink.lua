return {
    {
        'saghen/blink.cmp',
        version = "1.*",
        opts = {
            sources = {
                 default = { "lsp", "path", "snippets", "buffer" },
            },
            keymap = {
                preset = "enter",
                ["<Tab>"] = { "select_next", "fallback" },
                ["<S-Tab>"] = { "select_prev", "fallback" },
            },
            appearance = {
                nerd_font_variant = "mono",
            },

            fuzzy = { implementation = "prefer_rust_with_warning" },
            completion = {
                keyword = { range = "prefix" },
                menu = {
                    draw = {
                        treesitter = { "lsp" },
                    },
                },
                trigger = { show_on_trigger_character = true },
                documentation = {
                    auto_show = true,
                },
            },

            signature = {
                enabled = true,
                window = { show_documentation = true },
            },
        },
    },
}
