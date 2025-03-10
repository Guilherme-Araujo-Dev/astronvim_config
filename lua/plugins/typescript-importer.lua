-- lua/plugins/typescript.lua
-- Importa de uma vez todos os modulos necessários
return {
  {
    "jose-elias-alvarez/typescript.nvim",
    ft = { "typescript", "typescriptreact", "typescript.tsx" },
    config = function()
      require("typescript").setup({
        server = {
          on_attach = function(client, bufnr) end,
        },
      })
    end,
  },
}
