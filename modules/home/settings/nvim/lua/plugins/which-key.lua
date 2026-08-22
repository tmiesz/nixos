local whichkey = require("which-key")
local whichkeyextra = require("which-key.extras")

whichkey.setup({
    preset = "modern",
    spec = {
        {
            mode = { "n", "x" },
            { "<leader><tab>", group = "tabs" },
            {
                "<leader>b",
                group = "buffer",
                expand = function() return whichkeyextra.expand.buf() end,
            },
            { "<leader>c",     group = "code" },
            { "<leader>d",     group = "debug" },
            { "<leader>e",     group = "explorer" },
            { "<leader>f",     group = "file/find" },
            { "<leader>g",     group = "git" },
            { "<leader>q",     group = "quit/session" },
            { "<leader>r",     group = "refactor" },
            { "<leader>R",     group = "requests" },
            { "<leader>s",     group = "search" },
            { "<leader>t",     group = "toggle" },
            { "<leader>u",     group = "ui" },
            {
                "<leader>w",
                group = "windows",
                proxy = "<c-w>",
                expand = function() return whichkeyextra.expand.win() end,
            },
            { "<leader>x", group = "diagnostics/quickfix" },
            { "[",         group = "prev" },
            { "]",         group = "next" },
            { "g",         group = "goto" },
            { "gs",        group = "surround" },
            { "z",         group = "fold" },
            -- better descriptions
            { "gx",        desc = "Open with system app" },
        },
    }
})
