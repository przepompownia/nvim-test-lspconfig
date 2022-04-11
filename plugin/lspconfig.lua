local lspconfig = require('lspconfig')
local capabilities = vim.lsp.protocol.make_client_capabilities()

lspconfig.diagnosticls.setup {
  cmd = {
    'node',
    vim.loop.cwd() .. '/tools/node_modules/diagnostic-languageserver/bin/index.js',
    '--stdio',
  },
  capabilities = capabilities,
  filetypes = {
    'php',
  },
}
