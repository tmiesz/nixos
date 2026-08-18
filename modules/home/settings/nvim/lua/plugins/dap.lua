local dap = require("dap")
local dapvt = require("nvim-dap-virtual-text")
local dllautopicker = require("utils.dap-dll-autopicker")
local neotest = require("neotest")
-- currently broken https://github.com/Issafalcon/neotest-dotnet/issues/145
local neotestdotnet = require("neotest-dotnet")

dapvt.setup()
neotest.setup({ adapters = { neotestdotnet } })

-- netcoredbg adapter
local netcoredbg_adapter = {
    type = "executable",
    command = "netcoredbg",
    args = { "--interpreter=vscode" },
}

dap.adapters.netcoredbg = netcoredbg_adapter -- needed for normal debugging
dap.adapters.coreclr = netcoredbg_adapter    -- needed for unit test debugging

dap.configurations.cs = {
    {
        type = "coreclr",
        name = "launch - netcoredbg",
        request = "launch",
        program = function()
            return dllautopicker.build_dll_path()
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
vim.keymap.set("n", "<F8>", dap.step_out, { desc = "Step out" })
vim.keymap.set("n", "<leader>dr", dap.repl.toggle, { desc = "Toggle REPL" })
vim.keymap.set("n", "<leader>dx", dap.terminate, { desc = "Terminate session" })
vim.keymap.set("n", "<leader>dl", dap.run_last, { desc = "Run last" })
vim.keymap.set("n", "<leader>dt", function() neotest.run.run({ strategy = 'dap' }) end, { desc = "Debug nearest test" })
vim.keymap.set("n", "<F6>", function() neotest.run.run({ strategy = 'dap' }) end, { desc = "Debug nearest test" })
vim.keymap.set("n", "<leader>dC", function()
    local config = vim.deepcopy(dap.configurations.cs[1])
    config.args = vim.split(vim.fn.input("Arguments: "), " ")
    dap.run(config)
end, {
    desc = "Debug with arguments",
})
