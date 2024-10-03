return {
	-- Configuração para o AstroNvim e plugins
	{
		"github/copilot.vim",
		config = function()
			-- Defina o mapeamento personalizado para aceitar sugestões do Copilot
			vim.keymap.set("i", "<C-]>", 'copilot#Accept("<CR>")', {
				expr = true,
				replace_keycodes = true,
			})
			-- Desabilitar mapeamento padrão do Tab
			vim.g.copilot_no_tab_map = false
		end,
	},
}
