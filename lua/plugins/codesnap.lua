if true then
	return {}
end

return {
	{
		"mistricky/codesnap.nvim",
		enabled = false, -- ADICIONE ESTA LINHA
		build = "make",
		keys = {
			{ "<leader>cc", "<cmd>CodeSnap<cr>", mode = "x", desc = "Save selected code snapshot into clipboard" },
			{ "<leader>cs", "<cmd>CodeSnapSave<cr>", mode = "x", desc = "Save selected code snapshot in ~/Pictures" },
		},
		opts = {
			save_path = "~/Imagens/CodeSnap",
			has_breadcrumbs = true,
		},
	},
}
