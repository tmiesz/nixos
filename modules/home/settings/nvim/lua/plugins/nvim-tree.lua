local nvimtree = require("nvim-tree")

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

vim.keymap.set("n", "<leader>ee", function()
    require("nvim-tree.api").tree.open()
end, { desc = "Focus file explorer" })

vim.keymap.set("n", "<leader>ex", function()
    require("nvim-tree.api").tree.toggle()
end, { desc = "Toggle file explorer" })

vim.keymap.set("n", "<leader>ef", function()
  require("nvim-tree.api").tree.find_file({
    open = true,
    update_root = "<bang>",
    focus = true,
  })
end, { desc = "Find file in file explorer" })

vim.keymap.set("n", "<leader>ec", function()
    require("nvim-tree.api").tree.collapse_all()
end, { desc = "Collapse file explorer" })

vim.keymap.set("n", "<leader>er", function()
    require("nvim-tree.api").tree.reload()
end, { desc = "Refresh file explorer" })
