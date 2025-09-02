vim.api.nvim_create_autocmd("FileType", {
  pattern = { "c", "cpp" },
  callback = function()
    local dap = require("dap")
    vim.keymap.set("n", "<F5>", dap.continue, { buffer = true, desc = "DAP: Continue" })
    vim.keymap.set("n", "<F10>", dap.step_over, { buffer = true, desc = "DAP: Step Over" })
    vim.keymap.set("n", "<F11>", dap.step_into, { buffer = true, desc = "DAP: Step Into" })
    vim.keymap.set("n", "<F12>", dap.step_out, { buffer = true, desc = "DAP: Step Out" })
    vim.keymap.set("n", "<leader>b", dap.toggle_breakpoint, { buffer = true, desc = "DAP: Toggle Breakpoint" })
  end,
})

