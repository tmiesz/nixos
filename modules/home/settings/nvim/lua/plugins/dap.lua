local dap = require("dap")
local dapui = require("dapui")
local dotnet = require("utils.nvim-dap-dotnet")

dapui.setup()

-- netcoredbg adapter
dap.adapters.coreclr = {
  type = "executable",
  command = "netcoredbg",
  args = { "--interpreter=vscode" },
}

dap.configurations.cs = {
  {
    type = "coreclr",
    name = "launch - netcoredbg",
    request = "launch",
    program = function()
      return dotnet.build_dll_path()
    end,
  },
}

-- Keymaps
vim.keymap.set("n", "<leader>db", dap.toggle_breakpoint, { desc = "Toggle breakpoint" })
vim.keymap.set("n", "<F9>", dap.toggle_breakpoint, { desc = "Toggle breakpoint" })
vim.keymap.set("n", "<leader>dc", dap.continue, { desc = "Continue / start debugging" })
vim.keymap.set("n", "<F5>", dap.continue, { desc = "Continue / start debugging" })
vim.keymap.set("n", "<leader>do", dap.step_over, { desc = "Step over" })
vim.keymap.set("n", "<F10>", dap.step_over, { desc = "Step over" })
vim.keymap.set("n", "<leader>di", dap.step_into, { desc = "Step into" })
vim.keymap.set("n", "<F11>", dap.step_into, { desc = "Step into" })
vim.keymap.set("n", "<leader>dO", dap.step_out, { desc = "Step out" })
vim.keymap.set("n", "<S-F11>", dap.step_out, { desc = "Step out" })
vim.keymap.set("n", "<leader>dr", dap.repl.toggle, { desc = "Toggle REPL" })
vim.keymap.set("n", "<leader>dt", dap.terminate, { desc = "Terminate session" })
vim.keymap.set("n", "<leader>du", function() dapui.toggle() end, { desc = "Toggle debugger ui" })
vim.keymap.set("n", "<leader>dC", function()
  local config = vim.deepcopy(dap.configurations.cs[1])
  config.args = vim.split(vim.fn.input("Arguments: "), " ")
  dap.run(config)
end, {
  desc = "Debug with arguments",
})
