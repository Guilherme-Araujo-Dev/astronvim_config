vim.api.nvim_create_user_command("TSImportAll", function()
  local params = { context = { only = { "source.addMissingImports" } } }
  vim.lsp.buf.code_action(params)
end, { desc = "Importa todos os módulos faltantes" })
