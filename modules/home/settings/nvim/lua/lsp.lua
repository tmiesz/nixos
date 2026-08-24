local servers = {
    "nixd",
    "lua_ls",
    "roslyn",

    "vtsls",
    "html",
    "cssls",
    "jsonls",
}

vim.lsp.config("nixd", {})

vim.lsp.config("lua_ls", {
    settings = {
        Lua = {
            diagnostics = {
                globals = { "vim" },
            },
        },
    },
})

vim.lsp.config("roslyn", {})

vim.lsp.config("vtsls", {})

vim.lsp.config("html", {})

vim.lsp.config("cssls", {})

vim.lsp.config("jsonls", {})

vim.lsp.enable(servers)
