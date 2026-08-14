local servers = { "nixd", "lua_ls", "roslyn" }

vim.lsp.config("nixd", {})

vim.lsp.config("lua_ls", {
    settings = {
        Lua = {
            diagnostics = { globals = { "vim" } },
        },
    },
})

vim.lsp.config("roslyn", {})

vim.lsp.enable(servers)
