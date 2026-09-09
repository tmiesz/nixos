local nvimtree = require("nvim-tree")
local api = require("nvim-tree.api")

nvimtree.setup({
    hijack_directories = {
        enable = true,
        auto_open = true,
    },

    view = {
        width = 35,
        relativenumber = true,
        side = "left",
    },

    filters = {
        dotfiles = false,
    },

    renderer = {
        group_empty = true,
    },
})

vim.keymap.set("n", "<leader>ee", api.tree.open, { desc = "Focus file explorer" })
vim.keymap.set("n", "<leader>ex", api.tree.toggle, { desc = "Toggle file explorer" })
vim.keymap.set("n", "<leader>ef",
    function() api.tree.find_file({ open = true, update_root = "<bang>", focus = true, }) end,
    { desc = "Find file in file explorer" })
vim.keymap.set("n", "<leader>ec", api.tree.collapse_all, { desc = "Collapse file explorer" })
vim.keymap.set("n", "<leader>er", api.tree.reload, { desc = "Refresh file explorer" })
