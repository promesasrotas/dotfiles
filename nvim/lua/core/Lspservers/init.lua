local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
capabilities.textDocument.completion.completionItem.snippetSupport = true

--require'lspconfig'.pylsp.setup({
  --capabilities = capabilities,
  --cmd = { "pylsp" },
  --filetypes = { "python" },
--})

require'lspconfig'.html.setup{
  capabilities = capabilities,
  filetypes = {"html"}
}

require'lspconfig'.sqlls.setup{
  capabilities = capabilities,
  filetypes = { "sql", "mysql" }
}

require'lspconfig'.jsonls.setup {
  capabilities = capabilities,
  filetypes = { "json", "jsonc" }
}

require 'lspconfig'.bashls.setup{
  capabilities = capabilities,
  filetypes = {"sh"}
}

require 'lspconfig'.diagnosticls.setup {
  capabilities = capabilities,
  filetypes = { "*"  }

}

require'lspconfig'.jedi_language_server.setup{
  capabilities = capabilities,
  cmd = { "jedi-language-server" },
  filetypes = {'python'},
  single_file_support = true,
}
