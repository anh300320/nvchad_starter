local servers = { "html", "cssls" }
vim.lsp.enable(servers)

require("nvchad.configs.lspconfig").defaults()

vim.lsp.config("gopls", {
  settings = {
    gopls = {
      analyses = {
        unusedparams = true,
        shadow = true,
      },
      staticcheck = true,
    },
  },
})

local autocmd = vim.api.nvim_create_autocmd

autocmd("BufWritePre", {
  pattern = "*.go",
  callback = function()
    vim.lsp.buf.format({ async = false })
  end,
})

vim.lsp.enable("gopls")
-- read :h vim.lsp.config for changing options of lsp servers 
