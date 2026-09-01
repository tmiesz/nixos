local tsautotag = require("nvim-ts-autotag")

tsautotag.setup({
    opts = {
        enable_close = true,
        enable_rename = true,
        enable_close_on_slash = false,
    },
})
