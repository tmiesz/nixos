local kulala = require("kulala")

kulala.setup({
    treesitter = { enable = false },
})

vim.treesitter.language.register("kulala_http", { "http", "rest" })
vim.treesitter.language.register("markdown", { "kulala_ui" })

vim.keymap.set({ "n", "v" }, "<leader>Rs", function() kulala.run() end, { desc = "Send request" })
vim.keymap.set({ "n", "v" }, "<leader>Ra", function() kulala.run_all() end, { desc = "Send all requests" })
vim.keymap.set({ "n", "v" }, "<leader>Rr", function() kulala.replay() end, { desc = "Replay the last request" })
