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
    "tailwindcss",
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

vim.diagnostic.config(
  {
    update_in_insert = false,
    severity_sort = true,
    signs = {
      text = {
        [vim.diagnostic.severity.ERROR] = " ",
        [vim.diagnostic.severity.WARN] = " ",
        [vim.diagnostic.severity.HINT] = " ",
        [vim.diagnostic.severity.INFO] = " ",
      }
    }
  }
)

vim.lsp.enable(servers)
