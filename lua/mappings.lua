require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<F4>", vim.lsp.buf.definition, { desc = "Go to definition" })
map("n", "<F12>", vim.lsp.buf.implementation, { desc = "Go to implementation" })
map(
  "n",
  "gj",
  "<cmd>ToggleTerm<CR>",
  { desc = "Toggle terminal" }
)
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
