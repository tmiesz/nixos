require("options")
require("keymaps")

require("plugins.floaterminal")
require("plugins.nvim-tree")

-- PLUGINS

require("fzf-lua").setup({})
vim.keymap.set("n", "<leader>ff", function()
    require("fzf-lua").files()
end, { desc = "FZF Files" })
vim.keymap.set("n", "<leader>fg", function()
    require("fzf-lua").live_grep()
end, { desc = "FZF Live Grep" })
vim.keymap.set("n", "<leader>fb", function()
    require("fzf-lua").buffers()
end, { desc = "FZF Buffers" })
vim.keymap.set("n", "<leader>fh", function()
    require("fzf-lua").help_tags()
end, { desc = "FZF Help Tags" })
vim.keymap.set("n", "<leader>fx", function()
    require("fzf-lua").diagnostics_document()
end, { desc = "FZF Diagnostics Document" })
vim.keymap.set("n", "<leader>fX", function()
    require("fzf-lua").diagnostics_workspace()
end, { desc = "FZF Diagnostics Workspace" })

require("gitsigns").setup({})
vim.keymap.set("n", "]h", function()
    require("gitsigns").next_hunk()
end, { desc = "Next git hunk" })
vim.keymap.set("n", "[h", function()
    require("gitsigns").prev_hunk()
end, { desc = "Previous git hunk" })
vim.keymap.set("n", "<leader>hs", function()
    require("gitsigns").stage_hunk()
end, { desc = "Stage hunk" })
vim.keymap.set("n", "<leader>hr", function()
    require("gitsigns").reset_hunk()
end, { desc = "Reset hunk" })
vim.keymap.set("n", "<leader>hp", function()
    require("gitsigns").preview_hunk()
end, { desc = "Preview hunk" })
vim.keymap.set("n", "<leader>hb", function()
    require("gitsigns").blame_line({ full = true })
end, { desc = "Blame line" })
vim.keymap.set("n", "<leader>tb", function()
    require("gitsigns").toggle_current_line_blame()
end, { desc = "Toggle inline blame" })
vim.keymap.set("n", "<leader>hd", function()
    require("gitsigns").diffthis()
end, { desc = "Diff this" })

require('nvim-autopairs').setup({})

-- require('mason').setup({})
--
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

-- require('nvim-treesitter').setup({})

require("mini.completion").setup({
    lsp_completion = {
        auto_setup = true,
    }
})

local MiniSnippets = require("mini.snippets")
MiniSnippets.setup({
    snippets = {
        MiniSnippets.gen_loader.from_lang(), -- loads friendly-snippets
    },
})
MiniSnippets.start_lsp_server({ match = false })
