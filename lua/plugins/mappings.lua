if true then
	return {}
end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

return {
	-- Configuração para o AstroNvim e plugins
	{
		"github/copilot.vim",
		opts = {
			mappings = {
				n = {
					["<Leader>xt"] = { "<cmd>TSImportAll<cr>", desc = "Execute TSImportAll" },
				},
			},
		},
		vim.api.nvim_create_user_command("TSImportAll", function()
			local params = { context = { only = { "source.addMissingImports" } } }
			vim.lsp.buf.code_action(params)
		end, { desc = "Importa todos os módulos faltantes" }),

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
