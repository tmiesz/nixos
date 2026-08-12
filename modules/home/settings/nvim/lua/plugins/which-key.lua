local whichkey = require("which-key")

whichkey.setup({
    preset = "modern",
    spec = {
        {
            mode = { "n", "x" },
            { "<leader><tab>", group = "tabs" },
            { "<leader>c",     group = "code" },
            { "<leader>d",     group = "debug" },
            { "<leader>dp",    group = "profiler" },
            { "<leader>f",     group = "file/find" },
            { "<leader>g",     group = "git" },
            { "<leader>h",     group = "hunks" },
            { "<leader>q",     group = "quit/session" },
            { "<leader>s",     group = "search" },
            { "<leader>u",     group = "ui" },
            { "<leader>x",     group = "diagnostics/quickfix" },
            { "<leader>r",     group = "refactor" },
            { "<leader>t",     group = "toggle" },
            { "<leader>e",     group = "explorer" },
            { "[",             group = "prev" },
            { "]",             group = "next" },
            { "g",             group = "goto" },
            { "gs",            group = "surround" },
            { "z",             group = "fold" },
            {
                "<leader>b",
                group = "buffer",
                expand = function() return require("which-key.extras").expand.buf() end,
            },
            {
                "<leader>w",
                group = "windows",
                proxy = "<c-w>",
                expand = function() return require("which-key.extras").expand.win() end,
            },
            -- better descriptions
            { "gx", desc = "Open with system app" },
        },
    }
})
