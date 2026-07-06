require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<F4>", vim.lsp.buf.definition, { desc = "Go to definition" })
map("n", "<F12>", vim.lsp.buf.implementation, { desc = "Go to implementation" })
map(
  "n",
  "<leader>tt",
  "<cmd>ToggleTerm<CR>",
  { desc = "Toggle terminal" }
)
map("n", "<leader>ca", vim.lsp.buf.code_action, {
  desc = "Code Action",
})
map("n", "<leader>cr", vim.lsp.buf.rename, {
    desc = "Rename symbol",
})
map("n", "<leader>cd", vim.lsp.buf.hover, { desc = "Hover Documentation" })
map("n", "<leader>db", function()
    require("dap").toggle_breakpoint()
end,
  { desc = "Toggle breakpoint" }
)
map("n", "<leader>rt", "<cmd>OverseerRun<CR>", { desc = "Open overseer" })
map("n", "<leader>du", function()
  require("dap-view").toggle()
end, { desc = "Toggle DAP View" })
map("n", "<leader>dc", function()
  require("dap").continue()
end, { desc = "DAP Debug continue" })
map("n", "<leader>jb", "<C-o>", {
  desc = "Jump back"
})

map("n", "<leader>jn", "<C-i>", {
  desc = "Jump forward"
})
