local blink = require("blink.cmp")

blink.setup({
    keymap = {
        preset = "none",

        ["<C-j>"] = { "select_next", "fallback" },
        ["<C-k>"] = { "select_prev", "fallback" },

        ["<CR>"] = { "accept", "fallback" },
        ["<C-space>"] = { "show", "show_documentation", "hide_documentation" },
        ["<C-e>"] = { "cancel", "fallback" },
    },

    completion = { documentation = { auto_show = true, } },

    sources = { default = { "lsp", "path", "snippets", "buffer" } },

    fuzzy = { implementation = "rust" },
})
