local minisnippets = require("mini.snippets")

minisnippets.setup({
    snippets = {
        minisnippets.gen_loader.from_lang(),
    },
})

minisnippets.start_lsp_server({ match = false })
