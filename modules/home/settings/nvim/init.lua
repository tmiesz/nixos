require("options")
require("keymaps")

require("plugins.dap")
require("plugins.floaterminal")
require("plugins.fzf")
require("plugins.gitsigns")
require("plugins.mini-completion")
require("plugins.mini-snippets")
require("plugins.nvim-autopairs")
require("plugins.nvim-tree")



vim.keymap.set("n", "<leader>td", function()
    vim.diagnostic.enable(not vim.diagnostic.is_enabled())
end, { desc = "Toggle diagnostics" })

vim.lsp.config("lua_ls", {
    settings = {
        Lua = {
            diagnostics = { globals = { "vim" } },
        },
    },
})

vim.lsp.enable({ "nixd", "lua_ls" })
vim.diagnostic.config({ virtual_text = true })
