return {
	{
		"zbirenbaum/copilot.lua",
		cmd = "Copilot",
		build = ":Copilot auth",
		event = "BufReadPost",
		opts = {
			suggestion = {
				enabled = true,
				auto_trigger = true,
				keymap = {
					-- AQUI ESTÁ A MUDANÇA:
					-- Define a Seta para a Direita (Right) para aceitar a sugestão
					accept = "<Right>",

					-- Você pode configurar outros atalhos se quiser:
					-- next = "<M-]>",
					-- prev = "<M-[>",
					-- dismiss = "<C-]>",
				},
			},
			panel = { enabled = false },
		},
		-- REMOVIDO: specs = { ... "astrocore" ... }
		-- Não precisamos mais injetar o ai_accept, pois não queremos usar o TAB do recipes.ai
	},
}
