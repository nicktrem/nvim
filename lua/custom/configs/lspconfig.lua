local base = require("plugins.configs.lspconfig")
local on_attach = base.on_attach
local capabilities = base.capabilities

vim.lsp.config("clangd", {
  on_attach = function(client, bufnr)
    client.server_capabilities.signatureHelpProvider = false
    on_attach(client, bufnr)
  end,
})
vim.lsp.enable({"clangd"})

vim.lsp.config("pyright", {
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = {"python"},
})
vim.lsp.enable({"pyright"})

vim.lsp.config("solidity_ls", {
    on_attach = on_attach,
    capabilities = capabilities,
    filetypes = {"solidity"},
})
vim.lsp.enable({"solidity"})

vim.lsp.config("ts_ls", {
    on_attach = on_attach,
    capabilities = capabilities,
    filetypes = {"typescript"},
})
vim.lsp.enable({"ts_ls"})
