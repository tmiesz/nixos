local servers = {
    -- general
    "jsonls",

    -- lua
    "lua_ls",

    -- nix
    "nixd",

    -- csharp
    "roslyn",


    -- web
    "html",
    "cssls",
    "ts_ls",
    "eslint",
}

vim.lsp.config("lua_ls", {
    settings = {
        Lua = {
            diagnostics = {
                globals = { "vim" },
            },
        },
    },
})

vim.lsp.enable(servers)
