local kulala = require("kulala")

kulala.setup({})

vim.keymap.set({ "n", "v" }, "<leader>Rs", function() kulala.run() end, { desc = "Send request" })
vim.keymap.set({ "n", "v" }, "<leader>Ra", function() kulala.run_all() end, { desc = "Send all requests" })
vim.keymap.set({ "n", "v" }, "<leader>Rr", function() kulala.replay() end, { desc = "Replay the last request" })
