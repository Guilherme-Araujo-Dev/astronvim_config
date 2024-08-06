return {
  -- Configuração para o AstroNvim e plugins
  {
    "github/copilot.vim",
    config = function()
      -- Defina o mapeamento personalizado para aceitar sugestões do Copilot
      vim.keymap.set("i", "<Tab>", 'copilot#Accept("<CR>")', {
        expr = true,
        replace_keycodes = false,
      })
      -- Desabilitar mapeamento padrão do Tab
      vim.g.copilot_no_tab_map = true
    end,
  },
}
