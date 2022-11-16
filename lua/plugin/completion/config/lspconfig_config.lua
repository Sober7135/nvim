local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.documentationFormat = { 'markdown', 'plaintext' }
capabilities.textDocument.completion.completionItem.snippetSupport = true
capabilities.textDocument.completion.completionItem.preselectSupport = true
capabilities.textDocument.completion.completionItem.insertReplaceSupport = true
capabilities.textDocument.completion.completionItem.labelDetailsSupport = true
capabilities.textDocument.completion.completionItem.deprecatedSupport = true
capabilities.textDocument.completion.completionItem.commitCharactersSupport = true
capabilities.textDocument.completion.completionItem.tagSupport = { valueSet = { 1 } }
capabilities.textDocument.completion.completionItem.resolveSupport = {
	properties = {
    'documentation',
    'detail',
    'additionalTextEdits',
  },
}

vim.diagnostic.config({
	signs = true,
	update_in_insert = false,
	underline = true,
	severity_sort = true,
  virtual_text = false,
})

require('lspconfig')['pyright'].setup{
	capabilities = capabilities
}
require('lspconfig')['clangd'].setup{
	capabilities = capabilities
}
require('lspconfig')['rust_analyzer'].setup{
	capabilities = capabilities
}
